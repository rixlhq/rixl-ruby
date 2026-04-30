require 'microsoft_kiota_abstractions'
require_relative '../../models/internal_videos_handler_subtitles_language_response'
require_relative '../../rixl_sdk'
require_relative '../videos'
require_relative './languages'

module RixlSdk
    module Videos
        module Languages
            ## 
            # Builds and executes requests for operations under \videos\languages
            class LanguagesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Instantiates a new LanguagesRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/videos/languages")
                end
                ## 
                ## Get list of supported languages for subtitles
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of internal_videos_handler_subtitles_language_response
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    return @request_adapter.send_async(request_info, lambda {|pn| RixlSdk::Models::Internal_videos_handler_subtitlesLanguageResponse.create_from_discriminator_value(pn) }, nil)
                end
                ## 
                ## Get list of supported languages for subtitles
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_get_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :GET
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a languages_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return LanguagesRequestBuilder.new(raw_url, @request_adapter)
                end
            end
        end
    end
end
