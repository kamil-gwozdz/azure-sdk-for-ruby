# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Schema of the Data property of an EventGridEvent for a
    # Microsoft.ContainerRegistry.ImageDeleted event.
    #
    class ContainerRegistryImageDeletedEventData < ContainerRegistryEventData

      include MsRestAzure


      #
      # Mapper for ContainerRegistryImageDeletedEventData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerRegistryImageDeletedEventData',
          type: {
            name: 'Composite',
            class_name: 'ContainerRegistryImageDeletedEventData',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              timestamp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'action',
                type: {
                  name: 'String'
                }
              },
              target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'target',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerRegistryEventTarget'
                }
              },
              request: {
                client_side_validation: true,
                required: false,
                serialized_name: 'request',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerRegistryEventRequest'
                }
              },
              actor: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actor',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerRegistryEventActor'
                }
              },
              source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'source',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerRegistryEventSource'
                }
              }
            }
          }
        }
      end
    end
  end
end
