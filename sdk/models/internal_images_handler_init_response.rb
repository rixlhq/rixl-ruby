require 'microsoft_kiota_abstractions'
require_relative '../rixl_sdk'
require_relative './models'

module RixlSdk
    module Models
        class Internal_images_handlerInitResponse
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The image_id property
            @image_id
            ## 
            # The presigned_url property
            @presigned_url
            ## 
            # The upload_expires property
            @upload_expires
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
            ## Instantiates a new Internal_images_handlerInitResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a internal_images_handler_init_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Internal_images_handlerInitResponse.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "image_id" => lambda {|n| @image_id = n.get_string_value() },
                    "presigned_url" => lambda {|n| @presigned_url = n.get_string_value() },
                    "upload_expires" => lambda {|n| @upload_expires = n.get_number_value() },
                }
            end
            ## 
            ## Gets the image_id property value. The image_id property
            ## @return a string
            ## 
            def image_id
                return @image_id
            end
            ## 
            ## Sets the image_id property value. The image_id property
            ## @param value Value to set for the image_id property.
            ## @return a void
            ## 
            def image_id=(value)
                @image_id = value
            end
            ## 
            ## Gets the presigned_url property value. The presigned_url property
            ## @return a string
            ## 
            def presigned_url
                return @presigned_url
            end
            ## 
            ## Sets the presigned_url property value. The presigned_url property
            ## @param value Value to set for the presigned_url property.
            ## @return a void
            ## 
            def presigned_url=(value)
                @presigned_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("image_id", @image_id)
                writer.write_string_value("presigned_url", @presigned_url)
                writer.write_number_value("upload_expires", @upload_expires)
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
        end
    end
end
