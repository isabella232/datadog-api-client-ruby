=begin
#Datadog API V2 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for DatadogAPIClient::V2::IncidentServiceCreateRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe DatadogAPIClient::V2::IncidentServiceCreateRequest do
  let(:instance) { DatadogAPIClient::V2::IncidentServiceCreateRequest.new }

  describe 'test an instance of IncidentServiceCreateRequest' do
    it 'should create an instance of IncidentServiceCreateRequest' do
      expect(instance).to be_instance_of(DatadogAPIClient::V2::IncidentServiceCreateRequest)
    end
  end
  describe 'test attribute "data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
