=begin
#Moderation API

#API for automated content moderation

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module ModerationApi
  class ModerateApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Analyze audio
    # Analyze audio with your Moderation API project
    # @param moderation_audio_request [ModerationAudioRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ModerationVideo200Response]
    def moderation_audio(moderation_audio_request, opts = {})
      data, _status_code, _headers = moderation_audio_with_http_info(moderation_audio_request, opts)
      data
    end

    # Analyze audio
    # Analyze audio with your Moderation API project
    # @param moderation_audio_request [ModerationAudioRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModerationVideo200Response, Integer, Hash)>] ModerationVideo200Response data, response status code and response headers
    def moderation_audio_with_http_info(moderation_audio_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ModerateApi.moderation_audio ...'
      end
      # verify the required parameter 'moderation_audio_request' is set
      if @api_client.config.client_side_validation && moderation_audio_request.nil?
        fail ArgumentError, "Missing the required parameter 'moderation_audio_request' when calling ModerateApi.moderation_audio"
      end
      # resource path
      local_var_path = '/moderate/audio'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(moderation_audio_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ModerationVideo200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ModerateApi.moderation_audio",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ModerateApi#moderation_audio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Analyze image
    # Analyze image with your Moderation API project
    # @param moderation_image_request [ModerationImageRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ModerationImage200Response]
    def moderation_image(moderation_image_request, opts = {})
      data, _status_code, _headers = moderation_image_with_http_info(moderation_image_request, opts)
      data
    end

    # Analyze image
    # Analyze image with your Moderation API project
    # @param moderation_image_request [ModerationImageRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModerationImage200Response, Integer, Hash)>] ModerationImage200Response data, response status code and response headers
    def moderation_image_with_http_info(moderation_image_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ModerateApi.moderation_image ...'
      end
      # verify the required parameter 'moderation_image_request' is set
      if @api_client.config.client_side_validation && moderation_image_request.nil?
        fail ArgumentError, "Missing the required parameter 'moderation_image_request' when calling ModerateApi.moderation_image"
      end
      # resource path
      local_var_path = '/moderate/image'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(moderation_image_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ModerationImage200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ModerateApi.moderation_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ModerateApi#moderation_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Analyze object.
    # Analyze an object with multiple fields including text, images, video, audio. Use to moderate a post, a profile, a form submission or anything that have multiple fields.
    # @param moderation_object_request [ModerationObjectRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ModerationObject200Response]
    def moderation_object(moderation_object_request, opts = {})
      data, _status_code, _headers = moderation_object_with_http_info(moderation_object_request, opts)
      data
    end

    # Analyze object.
    # Analyze an object with multiple fields including text, images, video, audio. Use to moderate a post, a profile, a form submission or anything that have multiple fields.
    # @param moderation_object_request [ModerationObjectRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModerationObject200Response, Integer, Hash)>] ModerationObject200Response data, response status code and response headers
    def moderation_object_with_http_info(moderation_object_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ModerateApi.moderation_object ...'
      end
      # verify the required parameter 'moderation_object_request' is set
      if @api_client.config.client_side_validation && moderation_object_request.nil?
        fail ArgumentError, "Missing the required parameter 'moderation_object_request' when calling ModerateApi.moderation_object"
      end
      # resource path
      local_var_path = '/moderate/object'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(moderation_object_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ModerationObject200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ModerateApi.moderation_object",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ModerateApi#moderation_object\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Analyze text.
    # Analyze text with your Moderation API project.
    # @param moderation_text_request [ModerationTextRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ModerationText200Response]
    def moderation_text(moderation_text_request, opts = {})
      data, _status_code, _headers = moderation_text_with_http_info(moderation_text_request, opts)
      data
    end

    # Analyze text.
    # Analyze text with your Moderation API project.
    # @param moderation_text_request [ModerationTextRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModerationText200Response, Integer, Hash)>] ModerationText200Response data, response status code and response headers
    def moderation_text_with_http_info(moderation_text_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ModerateApi.moderation_text ...'
      end
      # verify the required parameter 'moderation_text_request' is set
      if @api_client.config.client_side_validation && moderation_text_request.nil?
        fail ArgumentError, "Missing the required parameter 'moderation_text_request' when calling ModerateApi.moderation_text"
      end
      # resource path
      local_var_path = '/moderate/text'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(moderation_text_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ModerationText200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ModerateApi.moderation_text",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ModerateApi#moderation_text\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Analyze video
    # Analyze video with your Moderation API project
    # @param moderation_video_request [ModerationVideoRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ModerationVideo200Response]
    def moderation_video(moderation_video_request, opts = {})
      data, _status_code, _headers = moderation_video_with_http_info(moderation_video_request, opts)
      data
    end

    # Analyze video
    # Analyze video with your Moderation API project
    # @param moderation_video_request [ModerationVideoRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModerationVideo200Response, Integer, Hash)>] ModerationVideo200Response data, response status code and response headers
    def moderation_video_with_http_info(moderation_video_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ModerateApi.moderation_video ...'
      end
      # verify the required parameter 'moderation_video_request' is set
      if @api_client.config.client_side_validation && moderation_video_request.nil?
        fail ArgumentError, "Missing the required parameter 'moderation_video_request' when calling ModerateApi.moderation_video"
      end
      # resource path
      local_var_path = '/moderate/video'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(moderation_video_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ModerationVideo200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Authorization']

      new_options = opts.merge(
        :operation => :"ModerateApi.moderation_video",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ModerateApi#moderation_video\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
