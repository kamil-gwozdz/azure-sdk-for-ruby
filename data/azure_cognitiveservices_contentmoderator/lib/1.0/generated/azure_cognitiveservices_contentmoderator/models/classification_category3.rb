# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # The category3 score details of the text. <a
    # href="https://aka.ms/textClassifyCategories">Click here</a> for more
    # details on category classification.
    #
    class ClassificationCategory3

      include MsRestAzure

      # @return [Float] The category3 score.
      attr_accessor :score


      #
      # Mapper for ClassificationCategory3 class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Classification_Category3',
          type: {
            name: 'Composite',
            class_name: 'ClassificationCategory3',
            model_properties: {
              score: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Score',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
