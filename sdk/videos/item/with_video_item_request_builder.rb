require 'microsoft_kiota_abstractions'
require_relative '../../models/github_com_rixlhq_api_internal_errors_error_response'
require_relative '../../models/video'
require_relative '../../rixl_sdk'
require_relative '../videos'
require_relative './audio_tracks/audio_tracks_request_builder'
require_relative './chapters/chapters_request_builder'
require_relative './delete/delete_request_builder'
require_relative './item'
require_relative './subtitles/subtitles_request_builder'
require_relative './thumbnail/thumbnail_request_builder'

module RixlSdk
    module Videos
        module Item
            ## 
            # Builds and executes requests for operations under \videos\{videoId}
            class WithVideoItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # The audioTracks property
                def audio_tracks()
                    return RixlSdk::Videos::Item::AudioTracks::AudioTracksRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # The chapters property
                def chapters()
                    return RixlSdk::Videos::Item::Chapters::ChaptersRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # The deletePath property
                def delete_path()
                    return RixlSdk::Videos::Item::Delete::DeleteRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # The subtitles property
                def subtitles()
                    return RixlSdk::Videos::Item::Subtitles::SubtitlesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # The thumbnail property
                def thumbnail()
                    return RixlSdk::Videos::Item::Thumbnail::ThumbnailRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new WithVideoItemRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/videos/{videoId}")
                end
                ## 
                ## Retrieve a video by its ID for a specific project.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of video
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["400"] = lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_errorsErrorResponse.create_from_discriminator_value(pn) }
                    error_mapping["401"] = lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_errorsErrorResponse.create_from_discriminator_value(pn) }
                    error_mapping["403"] = lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_errorsErrorResponse.create_from_discriminator_value(pn) }
                    error_mapping["404"] = lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_errorsErrorResponse.create_from_discriminator_value(pn) }
                    error_mapping["500"] = lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_errorsErrorResponse.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| RixlSdk::Models::Video.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Retrieve a video by its ID for a specific project.
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
                ## @return a with_video_item_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return WithVideoItemRequestBuilder.new(raw_url, @request_adapter)
                end
            end
        end
    end
end
