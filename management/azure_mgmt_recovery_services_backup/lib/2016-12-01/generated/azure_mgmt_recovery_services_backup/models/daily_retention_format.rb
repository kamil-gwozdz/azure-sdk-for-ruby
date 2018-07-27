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
    # Daily retention format.
    #
    class DailyRetentionFormat

      include MsRestAzure

      # @return [Array<Day>] List of days of the month.
      attr_accessor :days_of_the_month


      #
      # Mapper for DailyRetentionFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DailyRetentionFormat',
          type: {
            name: 'Composite',
            class_name: 'DailyRetentionFormat',
            model_properties: {
              days_of_the_month: {
                client_side_validation: true,
                required: false,
                serialized_name: 'daysOfTheMonth',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DayElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Day'
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
