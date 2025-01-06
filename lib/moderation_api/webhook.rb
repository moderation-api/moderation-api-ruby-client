# frozen_string_literal: true

require 'json'
require 'openssl'

module ModerationAPI
  class Webhook
    class SignatureVerificationError < StandardError; end

    # This method attempts to verify the webhook signature from Moderation API.
    #   payload: The raw request body
    #   sig_header: The 'HTTP_MODAPI_SIGNATURE' header from the request
    #   secret: Your webhook signing secret
    #
    def self.construct_event(payload, sig_header, secret)
      # Verify the signature
      digest = OpenSSL::Digest.new('sha256')
      signed = OpenSSL::HMAC.hexdigest(digest, secret, payload)

      if secure_compare(signed, sig_header)
        JSON.parse(payload, symbolize_names: true)
      else
        raise SignatureVerificationError, 'Signature verification failed'
      end
    end

    private

    # Compares the signature in a way that mitigates timing attacks
    #
    def self.secure_compare(a, b)
      return false unless a.bytesize == b.bytesize

      l = a.unpack "C#{a.bytesize}"

      res = 0
      b.each_byte { |byte| res |= byte ^ l.shift }
      res == 0
    end
  end
end 