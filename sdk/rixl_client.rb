require 'microsoft_kiota_abstractions'
require 'microsoft_kiota_serialization_json'
require_relative './feeds/feeds_request_builder'
require_relative './images/images_request_builder'
require_relative './rixl_sdk'
require_relative './videos/videos_request_builder'

module RixlSdk
    ## 
    # The main entry point of the SDK, exposes the configuration and the fluent API.
    class RixlClient < MicrosoftKiotaAbstractions::BaseRequestBuilder
        
        ## 
        # The feeds property
        def feeds()
            return RixlSdk::Feeds::FeedsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The images property
        def images()
            return RixlSdk::Images::ImagesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The videos property
        def videos()
            return RixlSdk::Videos::VideosRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Instantiates a new RixlClient and sets the default values.
        ## @param request_adapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(request_adapter)
            super(Hash.new, request_adapter, "{+baseurl}")
            MicrosoftKiotaAbstractions::ApiClientBuilder.register_default_serializer(MicrosoftKiotaSerializationJson::JsonSerializationWriterFactory)
            MicrosoftKiotaAbstractions::ApiClientBuilder.register_default_deserializer(MicrosoftKiotaSerializationJson::JsonParseNodeFactory)
        end
    end
end
