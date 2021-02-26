# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2020_11_01
  module Models
    #
    # The HTTP headers.
    #
    class HttpHeaders

      include MsRestAzure

      # @return [String] The header name.
      attr_accessor :name

      # @return [String] The header value.
      attr_accessor :value


      #
      # Mapper for HttpHeaders class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HttpHeaders',
          type: {
            name: 'Composite',
            class_name: 'HttpHeaders',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
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
