# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Model object.
    #
    #
    class AzureActiveDirectoryValidation < ProxyOnlyResource

      include MsRestAzure

      # @return [JwtClaimChecks]
      attr_accessor :jwt_claim_checks

      # @return [Array<String>]
      attr_accessor :allowed_audiences


      #
      # Mapper for AzureActiveDirectoryValidation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureActiveDirectoryValidation',
          type: {
            name: 'Composite',
            class_name: 'AzureActiveDirectoryValidation',
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
              jwt_claim_checks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.jwtClaimChecks',
                type: {
                  name: 'Composite',
                  class_name: 'JwtClaimChecks'
                }
              },
              allowed_audiences: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowedAudiences',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
