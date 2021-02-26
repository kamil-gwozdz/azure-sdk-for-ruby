# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # The state of a private link connection
    #
    class PrivateLinkConnectionState

      include MsRestAzure

      # @return [String] Status of a private link connection
      attr_accessor :status

      # @return [String] Description of a private link connection
      attr_accessor :description

      # @return [String] ActionsRequired for a private link connection
      attr_accessor :actions_required


      #
      # Mapper for PrivateLinkConnectionState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateLinkConnectionState',
          type: {
            name: 'Composite',
            class_name: 'PrivateLinkConnectionState',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              actions_required: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actionsRequired',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
