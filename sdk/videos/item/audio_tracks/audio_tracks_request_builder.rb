require 'microsoft_kiota_abstractions'
require_relative '../../../models/audio_track'
require_relative '../../../models/audio_track_delete'
require_relative '../../../rixl_sdk'
require_relative '../../videos'
require_relative '../item'
require_relative './audio_tracks'
require_relative './item/with_track_item_request_builder'
require_relative './language/language_request_builder'

module RixlSdk
    module Videos
        module Item
            module AudioTracks
                ## 
                # Builds and executes requests for operations under \videos\{videoId}\audio-tracks
                class AudioTracksRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # The language property
                    def language()
                        return RixlSdk::Videos::Item::AudioTracks::Language::LanguageRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Gets an item from the RixlSdk.videos.item.audioTracks.item collection
                    ## @param track_id Audio Track ID
                    ## @return a with_track_item_request_builder
                    ## 
                    def by_track_id(track_id)
                        raise StandardError, 'track_id cannot be null' if track_id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["trackId"] = track_id
                        return RixlSdk::Videos::Item::AudioTracks::Item::WithTrackItemRequestBuilder.new(url_tpl_params, @request_adapter)
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
                    ## Replace all audio tracks with the provided ones using API key authentication
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of audio_track
                    ## 
                    def post(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_post_request_information(
                            body, request_configuration
                        )
                        return @request_adapter.send_async(request_info, lambda {|pn| RixlSdk::Models::AudioTrack.create_from_discriminator_value(pn) }, nil)
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
                    ## Replace all audio tracks with the provided ones using API key authentication
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_post_request_information(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.set_content_from_parsable(@request_adapter, 'multipart/form-data', body)
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :POST
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
