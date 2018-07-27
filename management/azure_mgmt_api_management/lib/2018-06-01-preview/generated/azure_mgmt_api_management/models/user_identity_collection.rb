# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # List of Users Identity list representation.
    #
    class UserIdentityCollection

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<UserIdentityContract>] User Identity values.
      attr_accessor :value

      # @return [Integer] Total record count number across all pages.
      attr_accessor :count

      # @return [String] Next page link if any.
      attr_accessor :next_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<UserIdentityContract>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.next_link != nil do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [UserIdentityCollection] with next page content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for UserIdentityCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserIdentityCollection',
          type: {
            name: 'Composite',
            class_name: 'UserIdentityCollection',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserIdentityContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserIdentityContract'
                      }
                  }
                }
              },
              count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextLink',
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
