# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Container for the workloads running inside Azure Compute or Classic
    # Compute.
    #
    class AzureWorkloadContainer < ProtectionContainer

      include MsRestAzure


      def initialize
        @containerType = "AzureWorkloadContainer"
      end

      attr_accessor :containerType

      # @return [String] ARM ID of the virtual machine represented by this
      # Azure Workload Container
      attr_accessor :source_resource_id

      # @return [DateTime] Time stamp when this container was updated.
      attr_accessor :last_updated_time

      # @return [AzureWorkloadContainerExtendedInfo] Additional details of a
      # workload container.
      attr_accessor :extended_info

      # @return [WorkloadType] Workload type for which registration was sent.
      # Possible values include: 'Invalid', 'VM', 'FileFolder', 'AzureSqlDb',
      # 'SQLDB', 'Exchange', 'Sharepoint', 'VMwareVM', 'SystemState', 'Client',
      # 'GenericDataSource', 'SQLDataBase', 'AzureFileShare', 'SAPHanaDatabase'
      attr_accessor :workload_type


      #
      # Mapper for AzureWorkloadContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureWorkloadContainer',
          type: {
            name: 'Composite',
            class_name: 'AzureWorkloadContainer',
            model_properties: {
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              registration_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'registrationStatus',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthStatus',
                type: {
                  name: 'String'
                }
              },
              containerType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'containerType',
                type: {
                  name: 'String'
                }
              },
              source_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceResourceId',
                type: {
                  name: 'String'
                }
              },
              last_updated_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastUpdatedTime',
                type: {
                  name: 'DateTime'
                }
              },
              extended_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'AzureWorkloadContainerExtendedInfo'
                }
              },
              workload_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workloadType',
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
