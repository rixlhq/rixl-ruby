require 'microsoft_kiota_abstractions'
require_relative '../../../../rixl_sdk'
require_relative '../../../videos'
require_relative '../../item'
require_relative '../audio_tracks'
require_relative './item/with_lang_code_item_request_builder'
require_relative './language'

module RixlSdk
    module Videos
        module Item
            module AudioTracks
                module Language
                    ## 
                    # Builds and executes requests for operations under \videos\{videoId}\audio-tracks\language
                    class LanguageRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        ## Gets an item from the RixlSdk.videos.item.audioTracks.language.item collection
                        ## @param lang_code Language Code (BCP 47)
                        ## @return a with_lang_code_item_request_builder
                        ## 
                        def by_lang_code(lang_code)
                            raise StandardError, 'lang_code cannot be null' if lang_code.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["lang_code"] = lang_code
                            return RixlSdk::Videos::Item::AudioTracks::Language::Item::WithLangCodeItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new LanguageRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/videos/{videoId}/audio-tracks/language")
                        end
                    end
                end
            end
        end
    end
end
