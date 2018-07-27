# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Event data for Microsoft.Devices.DeviceCreated event.
    #
    class IotHubDeviceCreatedEventData < DeviceLifeCycleEventProperties

      include MsRestAzure


      #
      # Mapper for IotHubDeviceCreatedEventData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IotHubDeviceCreatedEventData',
          type: {
            name: 'Composite',
            class_name: 'IotHubDeviceCreatedEventData',
            model_properties: {
              device_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'deviceId',
                type: {
                  name: 'String'
                }
              },
              hub_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'hubName',
                type: {
                  name: 'String'
                }
              },
              twin: {
                client_side_validation: true,
                required: false,
                serialized_name: 'twin',
                type: {
                  name: 'Composite',
                  class_name: 'DeviceTwinInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
