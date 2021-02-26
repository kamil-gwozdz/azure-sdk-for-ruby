# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2020_09_01
  module Models
    #
    # Github access token for Appservice CLI github integration.
    #
    class AppserviceGithubToken

      include MsRestAzure

      # @return [String] Github access token for Appservice CLI github
      # integration
      attr_accessor :access_token

      # @return [String] Scope of the github access token
      attr_accessor :scope

      # @return [String] token type
      attr_accessor :token_type

      # @return [Boolean] True if valid github token received, False otherwise
      attr_accessor :got_token

      # @return [String] Error message if unable to get token
      attr_accessor :error_message


      #
      # Mapper for AppserviceGithubToken class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AppserviceGithubToken',
          type: {
            name: 'Composite',
            class_name: 'AppserviceGithubToken',
            model_properties: {
              access_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'accessToken',
                type: {
                  name: 'String'
                }
              },
              scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scope',
                type: {
                  name: 'String'
                }
              },
              token_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tokenType',
                type: {
                  name: 'String'
                }
              },
              got_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'gotToken',
                type: {
                  name: 'Boolean'
                }
              },
              error_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorMessage',
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
