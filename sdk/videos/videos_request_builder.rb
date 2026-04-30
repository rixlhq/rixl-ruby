require 'microsoft_kiota_abstractions'
require_relative '../models/github_com_rixlhq_api_internal_errors_error_response'
require_relative '../models/pagination_paginated_response_video'
require_relative '../rixl_sdk'
require_relative './item/with_video_item_request_builder'
require_relative './languages/languages_request_builder'
require_relative './upload/upload_request_builder'
require_relative './videos'

module RixlSdk
    module Videos
        ## 
        # Builds and executes requests for operations under \videos
        class VideosRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # The languages property
            def languages()
                return RixlSdk::Videos::Languages::LanguagesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The upload property
            def upload()
                return RixlSdk::Videos::Upload::UploadRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Gets an item from the RixlSdk.videos.item collection
            ## @param video_id Video ID
            ## @return a with_video_item_request_builder
            ## 
            def by_video_id(video_id)
                raise StandardError, 'video_id cannot be null' if video_id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["videoId"] = video_id
                return RixlSdk::Videos::Item::WithVideoItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Instantiates a new VideosRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/videos{?limit*,offset*,order*,sort*}")
            end
            ## 
            ## Retrieve all videos for a specific project, with pagination and sorting.
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of pagination_paginated_response_video
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["400"] = lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_errorsErrorResponse.create_from_discriminator_value(pn) }
                error_mapping["401"] = lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_errorsErrorResponse.create_from_discriminator_value(pn) }
                error_mapping["403"] = lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_errorsErrorResponse.create_from_discriminator_value(pn) }
                error_mapping["500"] = lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_errorsErrorResponse.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| RixlSdk::Models::PaginationPaginatedResponseVideo.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Retrieve all videos for a specific project, with pagination and sorting.
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a request_information
            ## 
            def to_get_request_information(request_configuration=nil)
                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                unless request_configuration.nil?
                    request_info.add_headers_from_raw_object(request_configuration.headers)
                    request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
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
            ## @return a videos_request_builder
            ## 
            def with_url(raw_url)
                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                return VideosRequestBuilder.new(raw_url, @request_adapter)
            end

            ## 
            # Retrieve all videos for a specific project, with pagination and sorting.
            class VideosRequestBuilderGetQueryParameters
                
                ## 
                # Maximum number of items to return in a single request. <br> **Default:** `25`
                attr_accessor :limit
                ## 
                # Starting point of the result set. <br>To get page 2 with a limit of 25, set `offset` to `25`. <br> **Default:** `0`
                attr_accessor :offset
                ## 
                # Sort order (asc, desc)
                attr_accessor :order
                ## 
                # Field to sort by (created_at, name, size, updated_at, duration)
                attr_accessor :sort
            end
        end
    end
end
