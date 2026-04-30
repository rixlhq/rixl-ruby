require 'microsoft_kiota_abstractions'
require_relative '../rixl_sdk'
require_relative './models'

module RixlSdk
    module Models
        class Github_com_rixlhq_api_internal_videos_handler_uploadInitResponse
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The poster_id property
            @poster_id
            ## 
            # The poster_presigned_url property
            @poster_presigned_url
            ## 
            # The upload_expires property
            @upload_expires
            ## 
            # The video_id property
            @video_id
            ## 
            # The video_presigned_url property
            @video_presigned_url
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
            ## Instantiates a new Github_com_rixlhq_api_internal_videos_handler_uploadInitResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a github_com_rixlhq_api_internal_videos_handler_upload_init_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Github_com_rixlhq_api_internal_videos_handler_uploadInitResponse.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "poster_id" => lambda {|n| @poster_id = n.get_string_value() },
                    "poster_presigned_url" => lambda {|n| @poster_presigned_url = n.get_string_value() },
                    "upload_expires" => lambda {|n| @upload_expires = n.get_number_value() },
                    "video_id" => lambda {|n| @video_id = n.get_string_value() },
                    "video_presigned_url" => lambda {|n| @video_presigned_url = n.get_string_value() },
                }
            end
            ## 
            ## Gets the poster_id property value. The poster_id property
            ## @return a string
            ## 
            def poster_id
                return @poster_id
            end
            ## 
            ## Sets the poster_id property value. The poster_id property
            ## @param value Value to set for the poster_id property.
            ## @return a void
            ## 
            def poster_id=(value)
                @poster_id = value
            end
            ## 
            ## Gets the poster_presigned_url property value. The poster_presigned_url property
            ## @return a string
            ## 
            def poster_presigned_url
                return @poster_presigned_url
            end
            ## 
            ## Sets the poster_presigned_url property value. The poster_presigned_url property
            ## @param value Value to set for the poster_presigned_url property.
            ## @return a void
            ## 
            def poster_presigned_url=(value)
                @poster_presigned_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("poster_id", @poster_id)
                writer.write_string_value("poster_presigned_url", @poster_presigned_url)
                writer.write_number_value("upload_expires", @upload_expires)
                writer.write_string_value("video_id", @video_id)
                writer.write_string_value("video_presigned_url", @video_presigned_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the upload_expires property value. The upload_expires property
            ## @return a integer
            ## 
            def upload_expires
                return @upload_expires
            end
            ## 
            ## Sets the upload_expires property value. The upload_expires property
            ## @param value Value to set for the upload_expires property.
            ## @return a void
            ## 
            def upload_expires=(value)
                @upload_expires = value
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
            ## 
            ## Gets the video_presigned_url property value. The video_presigned_url property
            ## @return a string
            ## 
            def video_presigned_url
                return @video_presigned_url
            end
            ## 
            ## Sets the video_presigned_url property value. The video_presigned_url property
            ## @param value Value to set for the video_presigned_url property.
            ## @return a void
            ## 
            def video_presigned_url=(value)
                @video_presigned_url = value
            end
        end
    end
end
