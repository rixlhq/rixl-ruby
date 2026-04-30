require 'microsoft_kiota_abstractions'
require_relative '../../rixl_sdk'
require_relative '../images'
require_relative './complete/complete_request_builder'
require_relative './init/init_request_builder'
require_relative './upload'

module RixlSdk
    module Images
        module Upload
            ## 
            # Builds and executes requests for operations under \images\upload
            class UploadRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # The complete property
                def complete()
                    return RixlSdk::Images::Upload::Complete::CompleteRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # The init property
                def init()
                    return RixlSdk::Images::Upload::Init::InitRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new UploadRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/images/upload")
                end
            end
        end
    end
end
