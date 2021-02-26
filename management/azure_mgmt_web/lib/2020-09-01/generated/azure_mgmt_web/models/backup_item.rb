# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Backup description.
    #
    class BackupItem < ProxyOnlyResource

      include MsRestAzure

      # @return [Integer] Id of the backup.
      attr_accessor :backup_id

      # @return [String] SAS URL for the storage account container which
      # contains this backup.
      attr_accessor :storage_account_url

      # @return [String] Name of the blob which contains data for this backup.
      attr_accessor :blob_name

      # @return [String] Name of this backup.
      attr_accessor :backup_item_name

      # @return [BackupItemStatus] Backup status. Possible values include:
      # 'InProgress', 'Failed', 'Succeeded', 'TimedOut', 'Created', 'Skipped',
      # 'PartiallySucceeded', 'DeleteInProgress', 'DeleteFailed', 'Deleted'
      attr_accessor :status

      # @return [Integer] Size of the backup in bytes.
      attr_accessor :size_in_bytes

      # @return [DateTime] Timestamp of the backup creation.
      attr_accessor :created

      # @return [String] Details regarding this backup. Might contain an error
      # message.
      attr_accessor :log

      # @return [Array<DatabaseBackupSetting>] List of databases included in
      # the backup.
      attr_accessor :databases

      # @return [Boolean] True if this backup has been created due to a
      # schedule being triggered.
      attr_accessor :scheduled

      # @return [DateTime] Timestamp of a last restore operation which used
      # this backup.
      attr_accessor :last_restore_time_stamp

      # @return [DateTime] Timestamp when this backup finished.
      attr_accessor :finished_time_stamp

      # @return [String] Unique correlation identifier. Please use this along
      # with the timestamp while communicating with Azure support.
      attr_accessor :correlation_id

      # @return [Integer] Size of the original web app which has been backed
      # up.
      attr_accessor :website_size_in_bytes


      #
      # Mapper for BackupItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupItem',
          type: {
            name: 'Composite',
            class_name: 'BackupItem',
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
              backup_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.id',
                type: {
                  name: 'Number'
                }
              },
              storage_account_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.storageAccountUrl',
                type: {
                  name: 'String'
                }
              },
              blob_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.blobName',
                type: {
                  name: 'String'
                }
              },
              backup_item_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'BackupItemStatus'
                }
              },
              size_in_bytes: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.sizeInBytes',
                type: {
                  name: 'Number'
                }
              },
              created: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.created',
                type: {
                  name: 'DateTime'
                }
              },
              log: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.log',
                type: {
                  name: 'String'
                }
              },
              databases: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.databases',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DatabaseBackupSettingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DatabaseBackupSetting'
                      }
                  }
                }
              },
              scheduled: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.scheduled',
                type: {
                  name: 'Boolean'
                }
              },
              last_restore_time_stamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastRestoreTimeStamp',
                type: {
                  name: 'DateTime'
                }
              },
              finished_time_stamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.finishedTimeStamp',
                type: {
                  name: 'DateTime'
                }
              },
              correlation_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.correlationId',
                type: {
                  name: 'String'
                }
              },
              website_size_in_bytes: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.websiteSizeInBytes',
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
