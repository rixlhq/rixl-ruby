require 'microsoft_kiota_abstractions'
require_relative '../../../../models/audio_track_delete'
require_relative '../../../../models/github_com_rixlhq_api_internal_errors_error_response'
require_relative '../../../../rixl_sdk'
require_relative '../../../videos'
require_relative '../../item'
require_relative '../audio_tracks'
require_relative './item'

module RixlSdk
    module Videos
        module Item
            module AudioTracks
                module Item
                    ## 
                    # Builds and executes requests for operations under \videos\{videoId}\audio-tracks\{trackId}
                    class WithTrackItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Instantiates a new WithTrackItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/videos/{videoId}/audio-tracks/{trackId}")
                        end
                        ## 
                        ## Remove an additional audio track from a video using API key authentication
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of audio_track_delete
                        ## 
                        def delete(request_configuration=nil)
                            request_info = self.to_delete_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["401"] = lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_errorsErrorResponse.create_from_discriminator_value(pn) }
                            error_mapping["403"] = lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_errorsErrorResponse.create_from_discriminator_value(pn) }
                            error_mapping["404"] = lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_errorsErrorResponse.create_from_discriminator_value(pn) }
                            error_mapping["500"] = lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_errorsErrorResponse.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| RixlSdk::Models::AudioTrackDelete.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Remove an additional audio track from a video using API key authentication
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_delete_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :DELETE
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a with_track_item_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return WithTrackItemRequestBuilder.new(raw_url, @request_adapter)
                        end
                    end
                end
            end
        end
    end
end
