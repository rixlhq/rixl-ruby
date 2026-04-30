require 'microsoft_kiota_abstractions'
require_relative '../../models/github_com_rixlhq_api_internal_errors_error_response'
require_relative '../../models/pagination_paginated_response_post'
require_relative '../../rixl_sdk'
require_relative '../feeds'
require_relative './creators/creators_request_builder'
require_relative './item'
require_relative './item/with_post_item_request_builder'

module RixlSdk
    module Feeds
        module Item
            ## 
            # Builds and executes requests for operations under \feeds\{feedId}
            class WithFeedItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # The creators property
                def creators()
                    return RixlSdk::Feeds::Item::Creators::CreatorsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Gets an item from the RixlSdk.feeds.item.item collection
                ## @param post_id Post ID
                ## @return a with_post_item_request_builder
                ## 
                def by_post_id(post_id)
                    raise StandardError, 'post_id cannot be null' if post_id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["postId"] = post_id
                    return RixlSdk::Feeds::Item::Item::WithPostItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new WithFeedItemRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/feeds/{feedId}{?limit*,offset*}")
                end
                ## 
                ## Retrieve posts in a feed, with pagination.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of pagination_paginated_response_post
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["400"] = lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_errorsErrorResponse.create_from_discriminator_value(pn) }
                    error_mapping["500"] = lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_errorsErrorResponse.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| RixlSdk::Models::PaginationPaginatedResponsePost.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Retrieve posts in a feed, with pagination.
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
                ## @return a with_feed_item_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return WithFeedItemRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # Retrieve posts in a feed, with pagination.
                class WithFeedItemRequestBuilderGetQueryParameters
                    
                    ## 
                    # Maximum number of items to return in a single request. <br> **Default:** `25`
                    attr_accessor :limit
                    ## 
                    # Starting point of the result set. <br>To get page 2 with a limit of 25, set `offset` to `25`. <br> **Default:** `0`
                    attr_accessor :offset
                end
            end
        end
    end
end
