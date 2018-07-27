# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_0
  module Models
    #
    # A deleted storage account bundle consisting of its previous id,
    # attributes and its tags, as well as information on when it will be
    # purged.
    #
    class DeletedStorageBundle < StorageBundle

      include MsRestAzure

      # @return [String] The url of the recovery object, used to identify and
      # recover the deleted storage account.
      attr_accessor :recovery_id

      # @return The time when the storage account is scheduled to be purged, in
      # UTC
      attr_accessor :scheduled_purge_date

      # @return The time when the storage account was deleted, in UTC
      attr_accessor :deleted_date


      #
      # Mapper for DeletedStorageBundle class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeletedStorageBundle',
          type: {
            name: 'Composite',
            class_name: 'DeletedStorageBundle',
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
              resource_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              active_key_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'activeKeyName',
                type: {
                  name: 'String'
                }
              },
              auto_regenerate_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'autoRegenerateKey',
                type: {
                  name: 'Boolean'
                }
              },
              regeneration_period: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'regenerationPeriod',
                type: {
                  name: 'String'
                }
              },
              attributes: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  class_name: 'StorageAccountAttributes'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
              },
              recovery_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryId',
                type: {
                  name: 'String'
                }
              },
              scheduled_purge_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'scheduledPurgeDate',
                type: {
                  name: 'UnixTime'
                }
              },
              deleted_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'deletedDate',
                type: {
                  name: 'UnixTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
