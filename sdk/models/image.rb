require 'microsoft_kiota_abstractions'
require_relative '../rixl_sdk'
require_relative './models'

module RixlSdk
    module Models
        class Image
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The attached_to_video property
            @attached_to_video
            ## 
            # The file property
            @file
            ## 
            # The height property
            @height
            ## 
            # The id property
            @id
            ## 
            # The thumbhash property
            @thumbhash
            ## 
            # The width property
            @width
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
            ## Instantiates a new Image and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a image
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Image.new
            end
            ## 
            ## Gets the file property value. The file property
            ## @return a file
            ## 
            def file
                return @file
            end
            ## 
            ## Sets the file property value. The file property
            ## @param value Value to set for the file property.
            ## @return a void
            ## 
            def file=(value)
                @file = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attached_to_video" => lambda {|n| @attached_to_video = n.get_boolean_value() },
                    "file" => lambda {|n| @file = n.get_object_value(lambda {|pn| RixlSdk::Models::File.create_from_discriminator_value(pn) }) },
                    "height" => lambda {|n| @height = n.get_number_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "thumbhash" => lambda {|n| @thumbhash = n.get_string_value() },
                    "width" => lambda {|n| @width = n.get_number_value() },
                }
            end
            ## 
            ## Gets the height property value. The height property
            ## @return a integer
            ## 
            def height
                return @height
            end
            ## 
            ## Sets the height property value. The height property
            ## @param value Value to set for the height property.
            ## @return a void
            ## 
            def height=(value)
                @height = value
            end
            ## 
            ## Gets the id property value. The id property
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The id property
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("attached_to_video", @attached_to_video)
                writer.write_object_value("file", @file)
                writer.write_number_value("height", @height)
                writer.write_string_value("id", @id)
                writer.write_string_value("thumbhash", @thumbhash)
                writer.write_number_value("width", @width)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the thumbhash property value. The thumbhash property
            ## @return a string
            ## 
            def thumbhash
                return @thumbhash
            end
            ## 
            ## Sets the thumbhash property value. The thumbhash property
            ## @param value Value to set for the thumbhash property.
            ## @return a void
            ## 
            def thumbhash=(value)
                @thumbhash = value
            end
            ## 
            ## Gets the width property value. The width property
            ## @return a integer
            ## 
            def width
                return @width
            end
            ## 
            ## Sets the width property value. The width property
            ## @param value Value to set for the width property.
            ## @return a void
            ## 
            def width=(value)
                @width = value
            end
        end
    end
end
