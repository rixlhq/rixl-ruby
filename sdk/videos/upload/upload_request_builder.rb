require 'microsoft_kiota_abstractions'
require_relative '../../rixl_sdk'
require_relative '../videos'
require_relative './complete/complete_request_builder'
require_relative './init/init_request_builder'
require_relative './upload'

module RixlSdk
    module Videos
        module Upload
            ## 
            # Builds and executes requests for operations under \videos\upload
            class UploadRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # The complete property
                def complete()
                    return RixlSdk::Videos::Upload::Complete::CompleteRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # The init property
                def init()
                    return RixlSdk::Videos::Upload::Init::InitRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new UploadRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/videos/upload")
                end
            end
        end
    end
end
