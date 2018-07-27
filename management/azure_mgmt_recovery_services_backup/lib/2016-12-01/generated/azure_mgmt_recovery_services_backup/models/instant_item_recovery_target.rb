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
    # Target details for file / folder restore.
    #
    class InstantItemRecoveryTarget

      include MsRestAzure

      # @return [Array<ClientScriptForConnect>] List of client scripts.
      attr_accessor :client_scripts


      #
      # Mapper for InstantItemRecoveryTarget class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InstantItemRecoveryTarget',
          type: {
            name: 'Composite',
            class_name: 'InstantItemRecoveryTarget',
            model_properties: {
              client_scripts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clientScripts',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ClientScriptForConnectElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ClientScriptForConnect'
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
