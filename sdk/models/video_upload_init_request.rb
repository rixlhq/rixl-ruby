require 'microsoft_kiota_abstractions'
require_relative '../rixl_sdk'
require_relative './models'

module RixlSdk
    module Models
        ## 
        # Video upload initialization request
        class VideoUploadInitRequest
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The file_name property
            @file_name
            ## 
            # The image_format property
            @image_format
            ## 
            # The video_quality property
            @video_quality
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
            ## Instantiates a new VideoUploadInitRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a video_upload_init_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VideoUploadInitRequest.new
            end
            ## 
            ## Gets the file_name property value. The file_name property
            ## @return a string
            ## 
            def file_name
                return @file_name
            end
            ## 
            ## Sets the file_name property value. The file_name property
            ## @param value Value to set for the file_name property.
            ## @return a void
            ## 
            def file_name=(value)
                @file_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "file_name" => lambda {|n| @file_name = n.get_string_value() },
                    "image_format" => lambda {|n| @image_format = n.get_string_value() },
                    "video_quality" => lambda {|n| @video_quality = n.get_enum_value(RixlSdk::Models::Github_com_rixlhq_api_db_sqlcVideoQuality) },
                }
            end
            ## 
            ## Gets the image_format property value. The image_format property
            ## @return a string
            ## 
            def image_format
                return @image_format
            end
            ## 
            ## Sets the image_format property value. The image_format property
            ## @param value Value to set for the image_format property.
            ## @return a void
            ## 
            def image_format=(value)
                @image_format = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("file_name", @file_name)
                writer.write_string_value("image_format", @image_format)
                writer.write_enum_value("video_quality", @video_quality)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the video_quality property value. The video_quality property
            ## @return a github_com_rixlhq_api_db_sqlc_video_quality
            ## 
            def video_quality
                return @video_quality
            end
            ## 
            ## Sets the video_quality property value. The video_quality property
            ## @param value Value to set for the video_quality property.
            ## @return a void
            ## 
            def video_quality=(value)
                @video_quality = value
            end
        end
    end
end
