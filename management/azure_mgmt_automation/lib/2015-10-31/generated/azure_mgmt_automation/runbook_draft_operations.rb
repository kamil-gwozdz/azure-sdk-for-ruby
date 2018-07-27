# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  #
  # Automation Client
  #
  class RunbookDraftOperations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the RunbookDraftOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AutomationClient] reference to the AutomationClient
    attr_reader :client

    #
    # Retrieve the content of runbook draft identified by runbook name.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [NOT_IMPLEMENTED] operation results.
    #
    def get_content(resource_group_name, automation_account_name, runbook_name, custom_headers:nil)
      response = get_content_async(resource_group_name, automation_account_name, runbook_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve the content of runbook draft identified by runbook name.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_content_with_http_info(resource_group_name, automation_account_name, runbook_name, custom_headers:nil)
      get_content_async(resource_group_name, automation_account_name, runbook_name, custom_headers:custom_headers).value!
    end

    #
    # Retrieve the content of runbook draft identified by runbook name.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_content_async(resource_group_name, automation_account_name, runbook_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'runbook_name is nil' if runbook_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/runbooks/{runbookName}/draft/content'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'runbookName' => runbook_name},
          query_params: {'api-version' => @client.api_version},
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
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Stream'
              }
            }
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
    # Replaces the runbook draft content.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param runbook_content The runbook draft content.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [NOT_IMPLEMENTED] operation results.
    #
    def replace_content(resource_group_name, automation_account_name, runbook_name, runbook_content, custom_headers:nil)
      response = replace_content_async(resource_group_name, automation_account_name, runbook_name, runbook_content, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param runbook_content The runbook draft content.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def replace_content_async(resource_group_name, automation_account_name, runbook_name, runbook_content, custom_headers:nil)
      # Send request
      promise = begin_replace_content_async(resource_group_name, automation_account_name, runbook_name, runbook_content, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = {
            client_side_validation: true,
            required: false,
            serialized_name: 'parsed_response',
            type: {
              name: 'Stream'
            }
          }
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Retrieve the runbook draft identified by runbook name.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RunbookDraft] operation results.
    #
    def get(resource_group_name, automation_account_name, runbook_name, custom_headers:nil)
      response = get_async(resource_group_name, automation_account_name, runbook_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve the runbook draft identified by runbook name.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, automation_account_name, runbook_name, custom_headers:nil)
      get_async(resource_group_name, automation_account_name, runbook_name, custom_headers:custom_headers).value!
    end

    #
    # Retrieve the runbook draft identified by runbook name.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, automation_account_name, runbook_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'runbook_name is nil' if runbook_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/runbooks/{runbookName}/draft'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'runbookName' => runbook_name},
          query_params: {'api-version' => @client.api_version},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookDraft.mapper()
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
    # Publish runbook draft.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The parameters supplied to the publish runbook
    # operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def publish(resource_group_name, automation_account_name, runbook_name, custom_headers:nil)
      response = publish_async(resource_group_name, automation_account_name, runbook_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The parameters supplied to the publish runbook
    # operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def publish_async(resource_group_name, automation_account_name, runbook_name, custom_headers:nil)
      # Send request
      promise = begin_publish_async(resource_group_name, automation_account_name, runbook_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Undo draft edit to last known published state identified by runbook name.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [RunbookDraftUndoEditResult] operation results.
    #
    def undo_edit(resource_group_name, automation_account_name, runbook_name, custom_headers:nil)
      response = undo_edit_async(resource_group_name, automation_account_name, runbook_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Undo draft edit to last known published state identified by runbook name.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def undo_edit_with_http_info(resource_group_name, automation_account_name, runbook_name, custom_headers:nil)
      undo_edit_async(resource_group_name, automation_account_name, runbook_name, custom_headers:custom_headers).value!
    end

    #
    # Undo draft edit to last known published state identified by runbook name.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def undo_edit_async(resource_group_name, automation_account_name, runbook_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'runbook_name is nil' if runbook_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/runbooks/{runbookName}/draft/undoEdit'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'runbookName' => runbook_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::RunbookDraftUndoEditResult.mapper()
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
    # Replaces the runbook draft content.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param runbook_content The runbook draft content.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [NOT_IMPLEMENTED] operation results.
    #
    def begin_replace_content(resource_group_name, automation_account_name, runbook_name, runbook_content, custom_headers:nil)
      response = begin_replace_content_async(resource_group_name, automation_account_name, runbook_name, runbook_content, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Replaces the runbook draft content.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param runbook_content The runbook draft content.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_replace_content_with_http_info(resource_group_name, automation_account_name, runbook_name, runbook_content, custom_headers:nil)
      begin_replace_content_async(resource_group_name, automation_account_name, runbook_name, runbook_content, custom_headers:custom_headers).value!
    end

    #
    # Replaces the runbook draft content.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The runbook name.
    # @param runbook_content The runbook draft content.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_replace_content_async(resource_group_name, automation_account_name, runbook_name, runbook_content, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'runbook_name is nil' if runbook_name.nil?
      fail ArgumentError, 'runbook_content is nil' if runbook_content.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'text/powershell'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = {
        client_side_validation: true,
        required: true,
        serialized_name: 'runbookContent',
        type: {
          name: 'Stream'
        }
      }
      request_content = @client.serialize(request_mapper,  runbook_content)

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/runbooks/{runbookName}/draft/content'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'runbookName' => runbook_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Stream'
              }
            }
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
    # Publish runbook draft.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The parameters supplied to the publish runbook
    # operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_publish(resource_group_name, automation_account_name, runbook_name, custom_headers:nil)
      response = begin_publish_async(resource_group_name, automation_account_name, runbook_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Publish runbook draft.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The parameters supplied to the publish runbook
    # operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_publish_with_http_info(resource_group_name, automation_account_name, runbook_name, custom_headers:nil)
      begin_publish_async(resource_group_name, automation_account_name, runbook_name, custom_headers:custom_headers).value!
    end

    #
    # Publish runbook draft.
    #
    # @param resource_group_name [String] Name of an Azure Resource group.
    # @param automation_account_name [String] The name of the automation account.
    # @param runbook_name [String] The parameters supplied to the publish runbook
    # operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_publish_async(resource_group_name, automation_account_name, runbook_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._]+$$')).nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'runbook_name is nil' if runbook_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/runbooks/{runbookName}/draft/publish'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'runbookName' => runbook_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
