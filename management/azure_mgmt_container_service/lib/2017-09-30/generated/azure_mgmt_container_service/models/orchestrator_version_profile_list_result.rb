# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2017_09_30
  module Models
    #
    # The list of versions for supported orchestrators.
    #
    class OrchestratorVersionProfileListResult

      include MsRestAzure

      # @return [String] Id of the orchestrator version profile list result.
      attr_accessor :id

      # @return [String] Name of the orchestrator version profile list result.
      attr_accessor :name

      # @return [String] Type of the orchestrator version profile list result.
      attr_accessor :type

      # @return [Array<OrchestratorVersionProfile>] List of orchestrator
      # version profiles.
      attr_accessor :orchestrators


      #
      # Mapper for OrchestratorVersionProfileListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OrchestratorVersionProfileListResult',
          type: {
            name: 'Composite',
            class_name: 'OrchestratorVersionProfileListResult',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              orchestrators: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.orchestrators',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OrchestratorVersionProfileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OrchestratorVersionProfile'
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
