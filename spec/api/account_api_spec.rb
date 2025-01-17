=begin
#Moderation API

#API for automated content moderation

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'spec_helper'
require 'json'

# Unit tests for ModerationApi::AccountApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountApi' do
  before do
    # run before each test
    @api_instance = ModerationApi::AccountApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountApi' do
    it 'should create an instance of AccountApi' do
      expect(@api_instance).to be_instance_of(ModerationApi::AccountApi)
    end
  end

  # unit tests for account_get
  # Get account details
  # Get account details
  # @param [Hash] opts the optional parameters
  # @return [AccountGet200Response]
  describe 'account_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
