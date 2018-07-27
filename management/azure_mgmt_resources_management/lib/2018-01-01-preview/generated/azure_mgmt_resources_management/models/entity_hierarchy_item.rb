# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourcesManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # The management group details for the hierarchy view.
    #
    class EntityHierarchyItem

      include MsRestAzure

      # @return [String] The fully qualified ID for the management group.  For
      # example,
      # /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
      attr_accessor :id

      # @return [String] The type of the resource.  For example,
      # /providers/Microsoft.Management/managementGroups
      attr_accessor :type

      # @return [String] The name of the management group. For example,
      # 00000000-0000-0000-0000-000000000000
      attr_accessor :name

      # @return [String] The friendly name of the management group.
      attr_accessor :display_name

      # @return [Enum] Permissions. Possible values include: 'noaccess',
      # 'view', 'edit', 'delete'
      attr_accessor :permissions

      # @return [Array<EntityHierarchyItem>] The list of children.
      attr_accessor :children


      #
      # Mapper for EntityHierarchyItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EntityHierarchyItem',
          type: {
            name: 'Composite',
            class_name: 'EntityHierarchyItem',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              permissions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.permissions',
                type: {
                  name: 'String'
                }
              },
              children: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.children',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EntityHierarchyItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EntityHierarchyItem'
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
