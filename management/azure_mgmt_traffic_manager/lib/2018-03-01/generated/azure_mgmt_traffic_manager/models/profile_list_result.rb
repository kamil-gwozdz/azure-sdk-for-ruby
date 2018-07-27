# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TrafficManager::Mgmt::V2018_03_01
  module Models
    #
    # The list Traffic Manager profiles operation response.
    #
    class ProfileListResult

      include MsRestAzure

      # @return [Array<Profile>] Gets the list of Traffic manager profiles.
      attr_accessor :value


      #
      # Mapper for ProfileListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProfileListResult',
          type: {
            name: 'Composite',
            class_name: 'ProfileListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ProfileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Profile'
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
