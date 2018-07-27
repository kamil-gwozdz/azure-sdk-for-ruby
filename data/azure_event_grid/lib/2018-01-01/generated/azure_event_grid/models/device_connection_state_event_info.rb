# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Information about the device connection state event.
    #
    class DeviceConnectionStateEventInfo

      include MsRestAzure

      # @return [String] Sequence number is string representation of a
      # hexadecimal number. string compare can be used to identify the larger
      # number because both in ASCII and HEX numbers come after alphabets. If
      # you are converting the string to hex, then the number is a 256 bit
      # number.
      attr_accessor :sequence_number


      #
      # Mapper for DeviceConnectionStateEventInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeviceConnectionStateEventInfo',
          type: {
            name: 'Composite',
            class_name: 'DeviceConnectionStateEventInfo',
            model_properties: {
              sequence_number: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sequenceNumber',
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
