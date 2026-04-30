require 'microsoft_kiota_abstractions'
require_relative '../../../models/github_com_rixlhq_api_internal_errors_error_response'
require_relative '../../../models/video'
require_relative '../../../rixl_sdk'
require_relative '../../videos'
require_relative '../item'
require_relative './thumbnail'

module RixlSdk
    module Videos
        module Item
            module Thumbnail
                ## 
                # Builds and executes requests for operations under \videos\{videoId}\thumbnail
                class ThumbnailRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Instantiates a new ThumbnailRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/videos/{videoId}/thumbnail")
                    end
                    ## 
                    ## Update the thumbnail image for an existing video
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of video
                    ## 
                    def put(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_put_request_information(
                            body, request_configuration
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
                    ## Update the thumbnail image for an existing video
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_put_request_information(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.set_content_from_parsable(@request_adapter, 'application/x-www-form-urlencoded', body)
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :PUT
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a thumbnail_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return ThumbnailRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end
