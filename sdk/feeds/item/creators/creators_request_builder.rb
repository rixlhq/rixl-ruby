require 'microsoft_kiota_abstractions'
require_relative '../../../rixl_sdk'
require_relative '../../feeds'
require_relative '../item'
require_relative './creators'
require_relative './item/with_creator_item_request_builder'

module RixlSdk
    module Feeds
        module Item
            module Creators
                ## 
                # Builds and executes requests for operations under \feeds\{feedId}\creators
                class CreatorsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Gets an item from the RixlSdk.feeds.item.creators.item collection
                    ## @param creator_id Creator ID
                    ## @return a with_creator_item_request_builder
                    ## 
                    def by_creator_id(creator_id)
                        raise StandardError, 'creator_id cannot be null' if creator_id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["creatorId"] = creator_id
                        return RixlSdk::Feeds::Item::Creators::Item::WithCreatorItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new CreatorsRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/feeds/{feedId}/creators")
                    end
                end
            end
        end
    end
end
