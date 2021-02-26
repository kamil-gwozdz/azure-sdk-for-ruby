# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Class representing detector definition
    #
    class DetectorDefinition < ProxyOnlyResource

      include MsRestAzure

      # @return [String] Display name of the detector
      attr_accessor :display_name

      # @return [String] Description of the detector
      attr_accessor :description

      # @return [Float] Detector Rank
      attr_accessor :rank

      # @return [Boolean] Flag representing whether detector is enabled or not.
      attr_accessor :is_enabled


      #
      # Mapper for DetectorDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DetectorDefinition',
          type: {
            name: 'Composite',
            class_name: 'DetectorDefinition',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              system_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              rank: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.rank',
                type: {
                  name: 'Double'
                }
              },
              is_enabled: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.isEnabled',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
