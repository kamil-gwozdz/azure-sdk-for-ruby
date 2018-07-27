# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_10_01_preview
  module Models
    #
    # The maximum size capability.
    #
    class MaxSizeCapability

      include MsRestAzure

      # @return [Integer] The maximum size limit (see 'unit' for the units).
      attr_accessor :limit

      # @return [MaxSizeUnit] The units that the limit is expressed in.
      # Possible values include: 'Megabytes', 'Gigabytes', 'Terabytes',
      # 'Petabytes'
      attr_accessor :unit


      #
      # Mapper for MaxSizeCapability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MaxSizeCapability',
          type: {
            name: 'Composite',
            class_name: 'MaxSizeCapability',
            model_properties: {
              limit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'unit',
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
