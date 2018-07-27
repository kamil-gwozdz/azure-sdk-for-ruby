# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2018_03_01
  module Models
    #
    # Response to force reboot for Redis cache.
    #
    class RedisForceRebootResponse

      include MsRestAzure

      # @return [String] Status message
      attr_accessor :message


      #
      # Mapper for RedisForceRebootResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RedisForceRebootResponse',
          type: {
            name: 'Composite',
            class_name: 'RedisForceRebootResponse',
            model_properties: {
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
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
