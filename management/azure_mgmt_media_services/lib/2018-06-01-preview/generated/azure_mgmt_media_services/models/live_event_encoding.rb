# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # The Live Event encoding.
    #
    class LiveEventEncoding

      include MsRestAzure

      # @return [LiveEventEncodingType] The encoding type for Live Event.
      # Possible values include: 'None', 'Basic'
      attr_accessor :encoding_type

      # @return [String] The encoding preset name.
      attr_accessor :preset_name


      #
      # Mapper for LiveEventEncoding class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LiveEventEncoding',
          type: {
            name: 'Composite',
            class_name: 'LiveEventEncoding',
            model_properties: {
              encoding_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encodingType',
                type: {
                  name: 'Enum',
                  module: 'LiveEventEncodingType'
                }
              },
              preset_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'presetName',
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
