# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # ARM resource for a static site when patching
    #
    class StaticSitePatchResource < ProxyOnlyResource

      include MsRestAzure

      # @return [String] The default autogenerated hostname for the static
      # site.
      attr_accessor :default_hostname

      # @return [String] URL for the repository of the static site.
      attr_accessor :repository_url

      # @return [String] The target branch in the repository.
      attr_accessor :branch

      # @return [Array<String>] The custom domains associated with this static
      # site.
      attr_accessor :custom_domains

      # @return [String] A user's github repository token. This is used to
      # setup the Github Actions workflow file and API secrets.
      attr_accessor :repository_token

      # @return [StaticSiteBuildProperties] Build properties to configure on
      # the repository.
      attr_accessor :build_properties


      #
      # Mapper for StaticSitePatchResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StaticSitePatchResource',
          type: {
            name: 'Composite',
            class_name: 'StaticSitePatchResource',
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
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              system_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'systemData',
                type: {
                  name: 'Composite',
                  class_name: 'SystemData'
                }
              },
              default_hostname: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.defaultHostname',
                type: {
                  name: 'String'
                }
              },
              repository_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.repositoryUrl',
                type: {
                  name: 'String'
                }
              },
              branch: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.branch',
                type: {
                  name: 'String'
                }
              },
              custom_domains: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.customDomains',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              repository_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.repositoryToken',
                type: {
                  name: 'String'
                }
              },
              build_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.buildProperties',
                type: {
                  name: 'Composite',
                  class_name: 'StaticSiteBuildProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
