# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_0
  module Models
    #
    # The SAS definition create parameters.
    #
    class SasDefinitionCreateParameters

      include MsRestAzure

      # @return [String] The SAS definition token template signed with an
      # arbitrary key.  Tokens created according to the SAS definition will
      # have the same properties as the template.
      attr_accessor :template_uri

      # @return [SasTokenType] The type of SAS token the SAS definition will
      # create. Possible values include: 'account', 'service'
      attr_accessor :sas_type

      # @return [String] The validity period of SAS tokens created according to
      # the SAS definition.
      attr_accessor :validity_period

      # @return [SasDefinitionAttributes] The attributes of the SAS definition.
      attr_accessor :sas_definition_attributes

      # @return [Hash{String => String}] Application specific metadata in the
      # form of key-value pairs.
      attr_accessor :tags


      #
      # Mapper for SasDefinitionCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SasDefinitionCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'SasDefinitionCreateParameters',
            model_properties: {
              template_uri: {
                client_side_validation: true,
                required: true,
                serialized_name: 'templateUri',
                type: {
                  name: 'String'
                }
              },
              sas_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sasType',
                type: {
                  name: 'String'
                }
              },
              validity_period: {
                client_side_validation: true,
                required: true,
                serialized_name: 'validityPeriod',
                type: {
                  name: 'String'
                }
              },
              sas_definition_attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  class_name: 'SasDefinitionAttributes'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
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
