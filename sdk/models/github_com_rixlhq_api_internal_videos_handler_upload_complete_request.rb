require 'microsoft_kiota_abstractions'
require_relative '../rixl_sdk'
require_relative './models'

module RixlSdk
    module Models
        ## 
        # Video upload completion request
        class Github_com_rixlhq_api_internal_videos_handler_uploadCompleteRequest
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The video_id property
            @video_id
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new Github_com_rixlhq_api_internal_videos_handler_uploadCompleteRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a github_com_rixlhq_api_internal_videos_handler_upload_complete_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Github_com_rixlhq_api_internal_videos_handler_uploadCompleteRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "video_id" => lambda {|n| @video_id = n.get_string_value() },
                }
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("video_id", @video_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the video_id property value. The video_id property
            ## @return a string
            ## 
            def video_id
                return @video_id
            end
            ## 
            ## Sets the video_id property value. The video_id property
            ## @param value Value to set for the video_id property.
            ## @return a void
            ## 
            def video_id=(value)
                @video_id = value
            end
        end
    end
end
