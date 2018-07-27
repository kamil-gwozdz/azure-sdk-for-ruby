# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  #
  # Open API 2.0 Specs for Azure RecoveryServices Backup service
  #
  class BackupWorkloadItems
    include MsRestAzure

    #
    # Creates and initializes a new instance of the BackupWorkloadItems class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [RecoveryServicesBackupClient] reference to the RecoveryServicesBackupClient
    attr_reader :client

    #
    # Provides a pageable list of workload item of a specific container according
    # to the query filter and the pagination
    # parameters.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the container.
    # @param container_name [String] Name of the container.
    # @param filter [String] OData filter options.
    # @param skip_token [String] skipToken Filter.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<WorkloadItemResource>] operation results.
    #
    def list(vault_name, resource_group_name, fabric_name, container_name, filter:nil, skip_token:nil, custom_headers:nil)
      first_page = list_as_lazy(vault_name, resource_group_name, fabric_name, container_name, filter:filter, skip_token:skip_token, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Provides a pageable list of workload item of a specific container according
    # to the query filter and the pagination
    # parameters.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the container.
    # @param container_name [String] Name of the container.
    # @param filter [String] OData filter options.
    # @param skip_token [String] skipToken Filter.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(vault_name, resource_group_name, fabric_name, container_name, filter:nil, skip_token:nil, custom_headers:nil)
      list_async(vault_name, resource_group_name, fabric_name, container_name, filter:filter, skip_token:skip_token, custom_headers:custom_headers).value!
    end

    #
    # Provides a pageable list of workload item of a specific container according
    # to the query filter and the pagination
    # parameters.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the container.
    # @param container_name [String] Name of the container.
    # @param filter [String] OData filter options.
    # @param skip_token [String] skipToken Filter.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(vault_name, resource_group_name, fabric_name, container_name, filter:nil, skip_token:nil, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'fabric_name is nil' if fabric_name.nil?
      fail ArgumentError, 'container_name is nil' if container_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupFabrics/{fabricName}/protectionContainers/{containerName}/items'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'fabricName' => fabric_name,'containerName' => container_name},
          query_params: {'api-version' => @client.api_version,'$filter' => filter,'$skipToken' => skip_token},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemResourceList.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Provides a pageable list of workload item of a specific container according
    # to the query filter and the pagination
    # parameters.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [WorkloadItemResourceList] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Provides a pageable list of workload item of a specific container according
    # to the query filter and the pagination
    # parameters.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers:nil)
      list_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Provides a pageable list of workload item of a specific container according
    # to the query filter and the pagination
    # parameters.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::WorkloadItemResourceList.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Provides a pageable list of workload item of a specific container according
    # to the query filter and the pagination
    # parameters.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the container.
    # @param container_name [String] Name of the container.
    # @param filter [String] OData filter options.
    # @param skip_token [String] skipToken Filter.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [WorkloadItemResourceList] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(vault_name, resource_group_name, fabric_name, container_name, filter:nil, skip_token:nil, custom_headers:nil)
      response = list_async(vault_name, resource_group_name, fabric_name, container_name, filter:filter, skip_token:skip_token, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end
