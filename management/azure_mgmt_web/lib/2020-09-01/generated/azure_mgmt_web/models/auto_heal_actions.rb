# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Actions which to take by the auto-heal module when a rule is triggered.
    #
    class AutoHealActions

      include MsRestAzure

      # @return [AutoHealActionType] Predefined action to be taken. Possible
      # values include: 'Recycle', 'LogEvent', 'CustomAction'
      attr_accessor :action_type

      # @return [AutoHealCustomAction] Custom action to be taken.
      attr_accessor :custom_action

      # @return [String] Minimum time the process must execute
      # before taking the action
      attr_accessor :min_process_execution_time


      #
      # Mapper for AutoHealActions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutoHealActions',
          type: {
            name: 'Composite',
            class_name: 'AutoHealActions',
            model_properties: {
              action_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actionType',
                type: {
                  name: 'Enum',
                  module: 'AutoHealActionType'
                }
              },
              custom_action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customAction',
                type: {
                  name: 'Composite',
                  class_name: 'AutoHealCustomAction'
                }
              },
              min_process_execution_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minProcessExecutionTime',
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
