# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TrafficManager::Mgmt::V2018_03_01
  module Models
    #
    # Class containing endpoint monitoring settings in a Traffic Manager
    # profile.
    #
    class MonitorConfig

      include MsRestAzure

      # @return [ProfileMonitorStatus] The profile-level monitoring status of
      # the Traffic Manager profile. Possible values include:
      # 'CheckingEndpoints', 'Online', 'Degraded', 'Disabled', 'Inactive'
      attr_accessor :profile_monitor_status

      # @return [MonitorProtocol] The protocol (HTTP, HTTPS or TCP) used to
      # probe for endpoint health. Possible values include: 'HTTP', 'HTTPS',
      # 'TCP'
      attr_accessor :protocol

      # @return [Integer] The TCP port used to probe for endpoint health.
      attr_accessor :port

      # @return [String] The path relative to the endpoint domain name used to
      # probe for endpoint health.
      attr_accessor :path

      # @return [Integer] The monitor interval for endpoints in this profile.
      # This is the interval at which Traffic Manager will check the health of
      # each endpoint in this profile.
      attr_accessor :interval_in_seconds

      # @return [Integer] The monitor timeout for endpoints in this profile.
      # This is the time that Traffic Manager allows endpoints in this profile
      # to response to the health check.
      attr_accessor :timeout_in_seconds

      # @return [Integer] The number of consecutive failed health check that
      # Traffic Manager tolerates before declaring an endpoint in this profile
      # Degraded after the next failed health check.
      attr_accessor :tolerated_number_of_failures

      # @return [Array<MonitorConfigCustomHeadersItem>] List of custom headers.
      attr_accessor :custom_headers

      # @return [Array<MonitorConfigExpectedStatusCodeRangesItem>] List of
      # expected status code ranges.
      attr_accessor :expected_status_code_ranges


      #
      # Mapper for MonitorConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MonitorConfig',
          type: {
            name: 'Composite',
            class_name: 'MonitorConfig',
            model_properties: {
              profile_monitor_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'profileMonitorStatus',
                type: {
                  name: 'String'
                }
              },
              protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protocol',
                type: {
                  name: 'String'
                }
              },
              port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'port',
                type: {
                  name: 'Number'
                }
              },
              path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'path',
                type: {
                  name: 'String'
                }
              },
              interval_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'intervalInSeconds',
                type: {
                  name: 'Number'
                }
              },
              timeout_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeoutInSeconds',
                type: {
                  name: 'Number'
                }
              },
              tolerated_number_of_failures: {
                client_side_validation: true,
                required: false,
                serialized_name: 'toleratedNumberOfFailures',
                type: {
                  name: 'Number'
                }
              },
              custom_headers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customHeaders',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MonitorConfigCustomHeadersItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MonitorConfigCustomHeadersItem'
                      }
                  }
                }
              },
              expected_status_code_ranges: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expectedStatusCodeRanges',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MonitorConfigExpectedStatusCodeRangesItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MonitorConfigExpectedStatusCodeRangesItem'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
