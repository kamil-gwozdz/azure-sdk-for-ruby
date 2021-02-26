# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Domain availability check result.
    #
    class DomainAvailabilityCheckResult

      include MsRestAzure

      # @return [String] Name of the domain.
      attr_accessor :name

      # @return [Boolean] <code>true</code> if domain can be purchased using
      # CreateDomain API; otherwise, <code>false</code>.
      attr_accessor :available

      # @return [DomainType] Valid values are Regular domain: Azure will charge
      # the full price of domain registration, SoftDeleted: Purchasing this
      # domain will simply restore it and this operation will not cost
      # anything. Possible values include: 'Regular', 'SoftDeleted'
      attr_accessor :domain_type


      #
      # Mapper for DomainAvailabilityCheckResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DomainAvailabilityCheckResult',
          type: {
            name: 'Composite',
            class_name: 'DomainAvailabilityCheckResult',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'available',
                type: {
                  name: 'Boolean'
                }
              },
              domain_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'domainType',
                type: {
                  name: 'Enum',
                  module: 'DomainType'
                }
              }
            }
          }
        }
      end
    end
  end
end
