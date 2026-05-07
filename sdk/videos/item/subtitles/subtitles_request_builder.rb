require 'microsoft_kiota_abstractions'
require_relative '../../../models/subtitle'
require_relative '../../../models/subtitle_delete'
require_relative '../../../rixl_sdk'
require_relative '../../videos'
require_relative '../item'
require_relative './item/with_subtitle_item_request_builder'
require_relative './language/language_request_builder'
require_relative './subtitles'

module RixlSdk
    module Videos
        module Item
            module Subtitles
                ## 
                # Builds and executes requests for operations under \videos\{videoId}\subtitles
                class SubtitlesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # The language property
                    def language()
                        return RixlSdk::Videos::Item::Subtitles::Language::LanguageRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Gets an item from the RixlSdk.videos.item.subtitles.item collection
                    ## @param subtitle_id Subtitle ID
                    ## @return a with_subtitle_item_request_builder
                    ## 
                    def by_subtitle_id(subtitle_id)
                        raise StandardError, 'subtitle_id cannot be null' if subtitle_id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["subtitleId"] = subtitle_id
                        return RixlSdk::Videos::Item::Subtitles::Item::WithSubtitleItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new SubtitlesRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/videos/{videoId}/subtitles")
                    end
                    ## 
                    ## Remove all subtitles from a video using API key authentication
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of subtitle_delete
                    ## 
                    def delete(request_configuration=nil)
                        request_info = self.to_delete_request_information(
                            request_configuration
                        )
                        return @request_adapter.send_async(request_info, lambda {|pn| RixlSdk::Models::SubtitleDelete.create_from_discriminator_value(pn) }, nil)
                    end
                    ## 
                    ## Replace all subtitles with the provided ones using API key authentication
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of subtitle
                    ## 
                    def post(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_post_request_information(
                            body, request_configuration
                        )
                        return @request_adapter.send_async(request_info, lambda {|pn| RixlSdk::Models::Subtitle.create_from_discriminator_value(pn) }, nil)
                    end
                    ## 
                    ## Remove all subtitles from a video using API key authentication
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
                    ## Replace all subtitles with the provided ones using API key authentication
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
                    ## @return a subtitles_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return SubtitlesRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end
