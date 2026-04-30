require 'microsoft_kiota_abstractions'
require_relative '../../../models/audio_track_delete'
require_relative '../../../rixl_sdk'
require_relative '../../videos'
require_relative '../item'
require_relative './audio_tracks'
require_relative './item/with_lang_code_item_request_builder'

module RixlSdk
    module Videos
        module Item
            module AudioTracks
                ## 
                # Builds and executes requests for operations under \videos\{videoId}\audio-tracks
                class AudioTracksRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Gets an item from the RixlSdk.videos.item.audioTracks.item collection
                    ## @param lang_code Language Code (BCP 47)
                    ## @return a with_lang_code_item_request_builder
                    ## 
                    def by_lang_code(lang_code)
                        raise StandardError, 'lang_code cannot be null' if lang_code.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["lang_code"] = lang_code
                        return RixlSdk::Videos::Item::AudioTracks::Item::WithLangCodeItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new AudioTracksRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/videos/{videoId}/audio-tracks")
                    end
                    ## 
                    ## Remove all additional audio tracks from a video using API key authentication
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of audio_track_delete
                    ## 
                    def delete(request_configuration=nil)
                        request_info = self.to_delete_request_information(
                            request_configuration
                        )
                        return @request_adapter.send_async(request_info, lambda {|pn| RixlSdk::Models::AudioTrackDelete.create_from_discriminator_value(pn) }, nil)
                    end
                    ## 
                    ## Remove all additional audio tracks from a video using API key authentication
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
                    ## @return a audio_tracks_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return AudioTracksRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end
