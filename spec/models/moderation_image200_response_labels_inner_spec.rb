=begin
#Moderation API

#API for automated content moderation

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for ModerationApi::ModerationImage200ResponseLabelsInner
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe ModerationApi::ModerationImage200ResponseLabelsInner do
  let(:instance) { ModerationApi::ModerationImage200ResponseLabelsInner.new }

  describe 'test an instance of ModerationImage200ResponseLabelsInner' do
    it 'should create an instance of ModerationImage200ResponseLabelsInner' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(ModerationApi::ModerationImage200ResponseLabelsInner)
    end
  end

  describe 'test attribute "label"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["nudity", "suggestive", "gore", "hate", "violence", "weapon", "smoking", "drugs", "alcohol", "text", "unknown_default_open_api"])
      # validator.allowable_values.each do |value|
      #   expect { instance.label = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "score"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
