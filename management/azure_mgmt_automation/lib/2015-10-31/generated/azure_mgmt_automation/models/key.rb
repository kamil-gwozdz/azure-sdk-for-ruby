# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Automation key which is used to register a DSC Node
    #
    class Key

      include MsRestAzure

      # @return [AutomationKeyName] Automation key name. Possible values
      # include: 'Primary', 'Secondary'
      attr_accessor :key_name

      # @return [AutomationKeyPermissions] Automation key permissions. Possible
      # values include: 'Read', 'Full'
      attr_accessor :permissions

      # @return [String] Value of the Automation Key used for registration.
      attr_accessor :value


      #
      # Mapper for Key class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Key',
          type: {
            name: 'Composite',
            class_name: 'Key',
            model_properties: {
              key_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'KeyName',
                type: {
                  name: 'String'
                }
              },
              permissions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'Permissions',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'Value',
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
