require 'microsoft_kiota_abstractions'
require_relative '../rixl_sdk'
require_relative './models'

module RixlSdk
    module Models
        ## 
        # Upload completion request
        class Internal_images_handlerCompleteRequest
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The attached_to_video property
            @attached_to_video
            ## 
            # The image_id property
            @image_id
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
            ## Gets the attached_to_video property value. The attached_to_video property
            ## @return a boolean
            ## 
            def attached_to_video
                return @attached_to_video
            end
            ## 
            ## Sets the attached_to_video property value. The attached_to_video property
            ## @param value Value to set for the attached_to_video property.
            ## @return a void
            ## 
            def attached_to_video=(value)
                @attached_to_video = value
            end
            ## 
            ## Instantiates a new Internal_images_handlerCompleteRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a internal_images_handler_complete_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Internal_images_handlerCompleteRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attached_to_video" => lambda {|n| @attached_to_video = n.get_boolean_value() },
                    "image_id" => lambda {|n| @image_id = n.get_string_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("attached_to_video", @attached_to_video)
                writer.write_string_value("image_id", @image_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
