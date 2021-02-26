# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Specifies the web app that snapshot contents will be retrieved from.
    #
    class SnapshotRecoverySource

      include MsRestAzure

      # @return [String] Geographical location of the source web app, e.g.
      # SouthEastAsia, SouthCentralUS
      attr_accessor :location

      # @return [String] ARM resource ID of the source app.
      # /subscriptions/{subId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName}
      # for production slots and
      # /subscriptions/{subId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{siteName}/slots/{slotName}
      # for other slots.
      attr_accessor :id


      #
      # Mapper for SnapshotRecoverySource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SnapshotRecoverySource',
          type: {
            name: 'Composite',
            class_name: 'SnapshotRecoverySource',
            model_properties: {
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
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
