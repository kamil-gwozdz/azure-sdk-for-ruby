# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # A snapshot of a web app configuration.
    #
    class SiteConfigurationSnapshotInfo < ProxyOnlyResource

      include MsRestAzure

      # @return [DateTime] The time the snapshot was taken.
      attr_accessor :time

      # @return [Integer] The id of the snapshot
      attr_accessor :snapshot_id


      #
      # Mapper for SiteConfigurationSnapshotInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SiteConfigurationSnapshotInfo',
          type: {
            name: 'Composite',
            class_name: 'SiteConfigurationSnapshotInfo',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              system_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              },
              time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.time',
                type: {
                  name: 'DateTime'
                }
              },
              snapshot_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.snapshotId',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
