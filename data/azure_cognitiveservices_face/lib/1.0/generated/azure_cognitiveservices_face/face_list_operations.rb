# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  #
  # An API for face detection, verification, and identification.
  #
  class FaceListOperations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the FaceListOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [FaceClient] reference to the FaceClient
    attr_reader :client

    #
    # Create an empty face list. Up to 64 face lists are allowed to exist in one
    # subscription.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param name [String] User defined name, maximum length is 128.
    # @param user_data [String] User specified data. Length should not exceed 16KB.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def create(face_list_id, name:nil, user_data:nil, custom_headers:nil)
      response = create_async(face_list_id, name:name, user_data:user_data, custom_headers:custom_headers).value!
      nil
    end

    #
    # Create an empty face list. Up to 64 face lists are allowed to exist in one
    # subscription.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param name [String] User defined name, maximum length is 128.
    # @param user_data [String] User specified data. Length should not exceed 16KB.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(face_list_id, name:nil, user_data:nil, custom_headers:nil)
      create_async(face_list_id, name:name, user_data:user_data, custom_headers:custom_headers).value!
    end

    #
    # Create an empty face list. Up to 64 face lists are allowed to exist in one
    # subscription.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param name [String] User defined name, maximum length is 128.
    # @param user_data [String] User specified data. Length should not exceed 16KB.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(face_list_id, name:nil, user_data:nil, custom_headers:nil)
      fail ArgumentError, 'face_list_id is nil' if face_list_id.nil?
      fail ArgumentError, "'face_list_id' should satisfy the constraint - 'MaxLength': '64'" if !face_list_id.nil? && face_list_id.length > 64
      fail ArgumentError, "'face_list_id' should satisfy the constraint - 'Pattern': '^[a-z0-9-_]+$'" if !face_list_id.nil? && face_list_id.match(Regexp.new('^^[a-z0-9-_]+$$')).nil?
      fail ArgumentError, "'name' should satisfy the constraint - 'MaxLength': '128'" if !name.nil? && name.length > 128
      fail ArgumentError, "'user_data' should satisfy the constraint - 'MaxLength': '16384'" if !user_data.nil? && user_data.length > 16384

      body = NameAndUserDataContract.new
      unless name.nil? && user_data.nil?
        body.name = name
        body.user_data = user_data
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::Face::V1_0::Models::NameAndUserDataContract.mapper()
      request_content = @client.serialize(request_mapper,  body)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'facelists/{faceListId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'faceListId' => face_list_id},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Retrieve a face list's information.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [FaceList] operation results.
    #
    def get(face_list_id, custom_headers:nil)
      response = get_async(face_list_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve a face list's information.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(face_list_id, custom_headers:nil)
      get_async(face_list_id, custom_headers:custom_headers).value!
    end

    #
    # Retrieve a face list's information.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(face_list_id, custom_headers:nil)
      fail ArgumentError, 'face_list_id is nil' if face_list_id.nil?
      fail ArgumentError, "'face_list_id' should satisfy the constraint - 'MaxLength': '64'" if !face_list_id.nil? && face_list_id.length > 64
      fail ArgumentError, "'face_list_id' should satisfy the constraint - 'Pattern': '^[a-z0-9-_]+$'" if !face_list_id.nil? && face_list_id.match(Regexp.new('^^[a-z0-9-_]+$$')).nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'facelists/{faceListId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'faceListId' => face_list_id},
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
            result_mapper = Azure::CognitiveServices::Face::V1_0::Models::FaceList.mapper()
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
    # Update information of a face list.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param name [String] User defined name, maximum length is 128.
    # @param user_data [String] User specified data. Length should not exceed 16KB.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def update(face_list_id, name:nil, user_data:nil, custom_headers:nil)
      response = update_async(face_list_id, name:name, user_data:user_data, custom_headers:custom_headers).value!
      nil
    end

    #
    # Update information of a face list.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param name [String] User defined name, maximum length is 128.
    # @param user_data [String] User specified data. Length should not exceed 16KB.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(face_list_id, name:nil, user_data:nil, custom_headers:nil)
      update_async(face_list_id, name:name, user_data:user_data, custom_headers:custom_headers).value!
    end

    #
    # Update information of a face list.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param name [String] User defined name, maximum length is 128.
    # @param user_data [String] User specified data. Length should not exceed 16KB.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(face_list_id, name:nil, user_data:nil, custom_headers:nil)
      fail ArgumentError, 'face_list_id is nil' if face_list_id.nil?
      fail ArgumentError, "'face_list_id' should satisfy the constraint - 'MaxLength': '64'" if !face_list_id.nil? && face_list_id.length > 64
      fail ArgumentError, "'face_list_id' should satisfy the constraint - 'Pattern': '^[a-z0-9-_]+$'" if !face_list_id.nil? && face_list_id.match(Regexp.new('^^[a-z0-9-_]+$$')).nil?
      fail ArgumentError, "'name' should satisfy the constraint - 'MaxLength': '128'" if !name.nil? && name.length > 128
      fail ArgumentError, "'user_data' should satisfy the constraint - 'MaxLength': '16384'" if !user_data.nil? && user_data.length > 16384

      body = NameAndUserDataContract.new
      unless name.nil? && user_data.nil?
        body.name = name
        body.user_data = user_data
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::Face::V1_0::Models::NameAndUserDataContract.mapper()
      request_content = @client.serialize(request_mapper,  body)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'facelists/{faceListId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'faceListId' => face_list_id},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Delete an existing face list according to faceListId. Persisted face images
    # in the face list will also be deleted.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(face_list_id, custom_headers:nil)
      response = delete_async(face_list_id, custom_headers:custom_headers).value!
      nil
    end

    #
    # Delete an existing face list according to faceListId. Persisted face images
    # in the face list will also be deleted.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(face_list_id, custom_headers:nil)
      delete_async(face_list_id, custom_headers:custom_headers).value!
    end

    #
    # Delete an existing face list according to faceListId. Persisted face images
    # in the face list will also be deleted.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(face_list_id, custom_headers:nil)
      fail ArgumentError, 'face_list_id is nil' if face_list_id.nil?
      fail ArgumentError, "'face_list_id' should satisfy the constraint - 'MaxLength': '64'" if !face_list_id.nil? && face_list_id.length > 64
      fail ArgumentError, "'face_list_id' should satisfy the constraint - 'Pattern': '^[a-z0-9-_]+$'" if !face_list_id.nil? && face_list_id.match(Regexp.new('^^[a-z0-9-_]+$$')).nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'facelists/{faceListId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'faceListId' => face_list_id},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Retrieve information about all existing face lists. Only faceListId, name and
    # userData will be returned.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list(custom_headers:nil)
      response = list_async(custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve information about all existing face lists. Only faceListId, name and
    # userData will be returned.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(custom_headers:nil)
      list_async(custom_headers:custom_headers).value!
    end

    #
    # Retrieve information about all existing face lists. Only faceListId, name and
    # userData will be returned.
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(custom_headers:nil)


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'facelists'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
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
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    client_side_validation: true,
                    required: false,
                    serialized_name: 'FaceListElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'FaceList'
                    }
                }
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
    # Delete an existing face from a face list (given by a persisitedFaceId and a
    # faceListId). Persisted image related to the face will also be deleted.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param persisted_face_id Id referencing a particular persistedFaceId of an
    # existing face.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete_face(face_list_id, persisted_face_id, custom_headers:nil)
      response = delete_face_async(face_list_id, persisted_face_id, custom_headers:custom_headers).value!
      nil
    end

    #
    # Delete an existing face from a face list (given by a persisitedFaceId and a
    # faceListId). Persisted image related to the face will also be deleted.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param persisted_face_id Id referencing a particular persistedFaceId of an
    # existing face.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_face_with_http_info(face_list_id, persisted_face_id, custom_headers:nil)
      delete_face_async(face_list_id, persisted_face_id, custom_headers:custom_headers).value!
    end

    #
    # Delete an existing face from a face list (given by a persisitedFaceId and a
    # faceListId). Persisted image related to the face will also be deleted.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param persisted_face_id Id referencing a particular persistedFaceId of an
    # existing face.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_face_async(face_list_id, persisted_face_id, custom_headers:nil)
      fail ArgumentError, 'face_list_id is nil' if face_list_id.nil?
      fail ArgumentError, "'face_list_id' should satisfy the constraint - 'MaxLength': '64'" if !face_list_id.nil? && face_list_id.length > 64
      fail ArgumentError, "'face_list_id' should satisfy the constraint - 'Pattern': '^[a-z0-9-_]+$'" if !face_list_id.nil? && face_list_id.match(Regexp.new('^^[a-z0-9-_]+$$')).nil?
      fail ArgumentError, 'persisted_face_id is nil' if persisted_face_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'facelists/{faceListId}/persistedFaces/{persistedFaceId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'faceListId' => face_list_id,'persistedFaceId' => persisted_face_id},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Add a face to a face list. The input face is specified as an image with a
    # targetFace rectangle. It returns a persistedFaceId representing the added
    # face, and persistedFaceId will not expire.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param url [String] Publicly reachable URL of an image
    # @param user_data [String] User-specified data about the face for any purpose.
    # The maximum length is 1KB.
    # @param target_face [Array<Integer>] A face rectangle to specify the target
    # face to be added to a person in the format of
    # "targetFace=left,top,width,height". E.g. "targetFace=10,10,100,100". If there
    # is more than one face in the image, targetFace is required to specify which
    # face to add. No targetFace means there is only one face detected in the
    # entire image.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PersistedFace] operation results.
    #
    def add_face_from_url(face_list_id, url, user_data:nil, target_face:nil, custom_headers:nil)
      response = add_face_from_url_async(face_list_id, url, user_data:user_data, target_face:target_face, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Add a face to a face list. The input face is specified as an image with a
    # targetFace rectangle. It returns a persistedFaceId representing the added
    # face, and persistedFaceId will not expire.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param url [String] Publicly reachable URL of an image
    # @param user_data [String] User-specified data about the face for any purpose.
    # The maximum length is 1KB.
    # @param target_face [Array<Integer>] A face rectangle to specify the target
    # face to be added to a person in the format of
    # "targetFace=left,top,width,height". E.g. "targetFace=10,10,100,100". If there
    # is more than one face in the image, targetFace is required to specify which
    # face to add. No targetFace means there is only one face detected in the
    # entire image.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def add_face_from_url_with_http_info(face_list_id, url, user_data:nil, target_face:nil, custom_headers:nil)
      add_face_from_url_async(face_list_id, url, user_data:user_data, target_face:target_face, custom_headers:custom_headers).value!
    end

    #
    # Add a face to a face list. The input face is specified as an image with a
    # targetFace rectangle. It returns a persistedFaceId representing the added
    # face, and persistedFaceId will not expire.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param url [String] Publicly reachable URL of an image
    # @param user_data [String] User-specified data about the face for any purpose.
    # The maximum length is 1KB.
    # @param target_face [Array<Integer>] A face rectangle to specify the target
    # face to be added to a person in the format of
    # "targetFace=left,top,width,height". E.g. "targetFace=10,10,100,100". If there
    # is more than one face in the image, targetFace is required to specify which
    # face to add. No targetFace means there is only one face detected in the
    # entire image.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def add_face_from_url_async(face_list_id, url, user_data:nil, target_face:nil, custom_headers:nil)
      fail ArgumentError, 'face_list_id is nil' if face_list_id.nil?
      fail ArgumentError, "'face_list_id' should satisfy the constraint - 'MaxLength': '64'" if !face_list_id.nil? && face_list_id.length > 64
      fail ArgumentError, "'face_list_id' should satisfy the constraint - 'Pattern': '^[a-z0-9-_]+$'" if !face_list_id.nil? && face_list_id.match(Regexp.new('^^[a-z0-9-_]+$$')).nil?
      fail ArgumentError, "'user_data' should satisfy the constraint - 'MaxLength': '1024'" if !user_data.nil? && user_data.length > 1024
      fail ArgumentError, 'url is nil' if url.nil?

      image_url = ImageUrl.new
      unless url.nil?
        image_url.url = url
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::Face::V1_0::Models::ImageUrl.mapper()
      request_content = @client.serialize(request_mapper,  image_url)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'facelists/{faceListId}/persistedFaces'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'faceListId' => face_list_id},
          query_params: {'userData' => user_data,'targetFace' => target_face.nil? ? nil : target_face.join(',')},
          body: request_content,
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
            result_mapper = Azure::CognitiveServices::Face::V1_0::Models::PersistedFace.mapper()
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
    # Add a face to a face list. The input face is specified as an image with a
    # targetFace rectangle. It returns a persistedFaceId representing the added
    # face, and persistedFaceId will not expire.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param image An image stream.
    # @param user_data [String] User-specified data about the face for any purpose.
    # The maximum length is 1KB.
    # @param target_face [Array<Integer>] A face rectangle to specify the target
    # face to be added to a person in the format of
    # "targetFace=left,top,width,height". E.g. "targetFace=10,10,100,100". If there
    # is more than one face in the image, targetFace is required to specify which
    # face to add. No targetFace means there is only one face detected in the
    # entire image.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PersistedFace] operation results.
    #
    def add_face_from_stream(face_list_id, image, user_data:nil, target_face:nil, custom_headers:nil)
      response = add_face_from_stream_async(face_list_id, image, user_data:user_data, target_face:target_face, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Add a face to a face list. The input face is specified as an image with a
    # targetFace rectangle. It returns a persistedFaceId representing the added
    # face, and persistedFaceId will not expire.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param image An image stream.
    # @param user_data [String] User-specified data about the face for any purpose.
    # The maximum length is 1KB.
    # @param target_face [Array<Integer>] A face rectangle to specify the target
    # face to be added to a person in the format of
    # "targetFace=left,top,width,height". E.g. "targetFace=10,10,100,100". If there
    # is more than one face in the image, targetFace is required to specify which
    # face to add. No targetFace means there is only one face detected in the
    # entire image.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def add_face_from_stream_with_http_info(face_list_id, image, user_data:nil, target_face:nil, custom_headers:nil)
      add_face_from_stream_async(face_list_id, image, user_data:user_data, target_face:target_face, custom_headers:custom_headers).value!
    end

    #
    # Add a face to a face list. The input face is specified as an image with a
    # targetFace rectangle. It returns a persistedFaceId representing the added
    # face, and persistedFaceId will not expire.
    #
    # @param face_list_id [String] Id referencing a particular face list.
    # @param image An image stream.
    # @param user_data [String] User-specified data about the face for any purpose.
    # The maximum length is 1KB.
    # @param target_face [Array<Integer>] A face rectangle to specify the target
    # face to be added to a person in the format of
    # "targetFace=left,top,width,height". E.g. "targetFace=10,10,100,100". If there
    # is more than one face in the image, targetFace is required to specify which
    # face to add. No targetFace means there is only one face detected in the
    # entire image.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def add_face_from_stream_async(face_list_id, image, user_data:nil, target_face:nil, custom_headers:nil)
      fail ArgumentError, 'face_list_id is nil' if face_list_id.nil?
      fail ArgumentError, "'face_list_id' should satisfy the constraint - 'MaxLength': '64'" if !face_list_id.nil? && face_list_id.length > 64
      fail ArgumentError, "'face_list_id' should satisfy the constraint - 'Pattern': '^[a-z0-9-_]+$'" if !face_list_id.nil? && face_list_id.match(Regexp.new('^^[a-z0-9-_]+$$')).nil?
      fail ArgumentError, "'user_data' should satisfy the constraint - 'MaxLength': '1024'" if !user_data.nil? && user_data.length > 1024
      fail ArgumentError, 'image is nil' if image.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/octet-stream'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = {
        client_side_validation: true,
        required: true,
        serialized_name: 'Image',
        type: {
          name: 'Stream'
        }
      }
      request_content = @client.serialize(request_mapper,  image)

      path_template = 'facelists/{faceListId}/persistedFaces'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'faceListId' => face_list_id},
          query_params: {'userData' => user_data,'targetFace' => target_face.nil? ? nil : target_face.join(',')},
          body: request_content,
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
            result_mapper = Azure::CognitiveServices::Face::V1_0::Models::PersistedFace.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
