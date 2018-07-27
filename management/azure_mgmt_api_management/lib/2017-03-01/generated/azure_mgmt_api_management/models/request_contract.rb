# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2017_03_01
  module Models
    #
    # Operation request details.
    #
    class RequestContract

      include MsRestAzure

      # @return [String] Operation request description.
      attr_accessor :description

      # @return [Array<ParameterContract>] Collection of operation request
      # query parameters.
      attr_accessor :query_parameters

      # @return [Array<ParameterContract>] Collection of operation request
      # headers.
      attr_accessor :headers

      # @return [Array<RepresentationContract>] Collection of operation request
      # representations.
      attr_accessor :representations


      #
      # Mapper for RequestContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RequestContract',
          type: {
            name: 'Composite',
            class_name: 'RequestContract',
            model_properties: {
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              query_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'queryParameters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterContract'
                      }
                  }
                }
              },
              headers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'headers',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterContract'
                      }
                  }
                }
              },
              representations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'representations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RepresentationContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RepresentationContract'
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
