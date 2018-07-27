# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Base type for all Presets, which define the recipe or instructions on how
    # the input media files should be processed.
    #
    class Preset

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["#Microsoft.Media.AudioAnalyzerPreset"] = "AudioAnalyzerPreset"
      @@discriminatorMap["#Microsoft.Media.BuiltInStandardEncoderPreset"] = "BuiltInStandardEncoderPreset"
      @@discriminatorMap["#Microsoft.Media.StandardEncoderPreset"] = "StandardEncoderPreset"
      @@discriminatorMap["#Microsoft.Media.VideoAnalyzerPreset"] = "VideoAnalyzerPreset"

      def initialize
        @odatatype = "Preset"
      end

      attr_accessor :odatatype


      #
      # Mapper for Preset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Preset',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '@odata.type',
            uber_parent: 'Preset',
            class_name: 'Preset',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
