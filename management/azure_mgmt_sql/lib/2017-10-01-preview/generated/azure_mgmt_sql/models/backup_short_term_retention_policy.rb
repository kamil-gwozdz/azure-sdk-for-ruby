# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_10_01_preview
  module Models
    #
    # A short term retention policy.
    #
    class BackupShortTermRetentionPolicy < ProxyResource

      include MsRestAzure

      # @return [Integer] The backup retention period in days. This is how many
      # days Point-in-Time Restore will be supported.
      attr_accessor :retention_days


      #
      # Mapper for BackupShortTermRetentionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupShortTermRetentionPolicy',
          type: {
            name: 'Composite',
            class_name: 'BackupShortTermRetentionPolicy',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              retention_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.retentionDays',
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
