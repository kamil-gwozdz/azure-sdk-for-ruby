# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Network trace
    #
    class NetworkTrace

      include MsRestAzure

      # @return [String] Local file path for the captured network trace file.
      attr_accessor :path

      # @return [String] Current status of the network trace operation, same as
      # Operation.Status (InProgress/Succeeded/Failed).
      attr_accessor :status

      # @return [String] Detailed message of a network trace operation, e.g.
      # error message in case of failure.
      attr_accessor :message


      #
      # Mapper for NetworkTrace class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkTrace',
          type: {
            name: 'Composite',
            class_name: 'NetworkTrace',
            model_properties: {
              path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'path',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
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
