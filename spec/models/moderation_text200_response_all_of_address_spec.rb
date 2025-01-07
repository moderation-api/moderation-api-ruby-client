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

# Unit tests for ModerationApi::ModerationText200ResponseAllOfAddress
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe ModerationApi::ModerationText200ResponseAllOfAddress do
  let(:instance) { ModerationApi::ModerationText200ResponseAllOfAddress.new }

  describe 'test an instance of ModerationText200ResponseAllOfAddress' do
    it 'should create an instance of ModerationText200ResponseAllOfAddress' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(ModerationApi::ModerationText200ResponseAllOfAddress)
    end
  end

  describe 'test attribute "mode"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NORMAL", "SUSPICIOUS", "PARANOID", "unknown_default_open_api"])
      # validator.allowable_values.each do |value|
      #   expect { instance.mode = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "found"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "matches"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "components"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "error"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "warning"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
