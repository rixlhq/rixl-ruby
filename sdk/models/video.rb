require 'microsoft_kiota_abstractions'
require_relative '../rixl_sdk'
require_relative './models'

module RixlSdk
    module Models
        class Video
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The bitrate property
            @bitrate
            ## 
            # The chapters property
            @chapters
            ## 
            # The codec property
            @codec
            ## 
            # The duration property
            @duration
            ## 
            # The file property
            @file
            ## 
            # The framerate property
            @framerate
            ## 
            # The hdr property
            @hdr
            ## 
            # The height property
            @height
            ## 
            # The id property
            @id
            ## 
            # The plan_type property
            @plan_type
            ## 
            # The poster property
            @poster
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
            ## Gets the bitrate property value. The bitrate property
            ## @return a integer
            ## 
            def bitrate
                return @bitrate
            end
            ## 
            ## Sets the bitrate property value. The bitrate property
            ## @param value Value to set for the bitrate property.
            ## @return a void
            ## 
            def bitrate=(value)
                @bitrate = value
            end
            ## 
            ## Gets the chapters property value. The chapters property
            ## @return a chapter
            ## 
            def chapters
                return @chapters
            end
            ## 
            ## Sets the chapters property value. The chapters property
            ## @param value Value to set for the chapters property.
            ## @return a void
            ## 
            def chapters=(value)
                @chapters = value
            end
            ## 
            ## Gets the codec property value. The codec property
            ## @return a string
            ## 
            def codec
                return @codec
            end
            ## 
            ## Sets the codec property value. The codec property
            ## @param value Value to set for the codec property.
            ## @return a void
            ## 
            def codec=(value)
                @codec = value
            end
            ## 
            ## Instantiates a new Video and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a video
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Video.new
            end
            ## 
            ## Gets the duration property value. The duration property
            ## @return a double
            ## 
            def duration
                return @duration
            end
            ## 
            ## Sets the duration property value. The duration property
            ## @param value Value to set for the duration property.
            ## @return a void
            ## 
            def duration=(value)
                @duration = value
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
            ## Gets the framerate property value. The framerate property
            ## @return a string
            ## 
            def framerate
                return @framerate
            end
            ## 
            ## Sets the framerate property value. The framerate property
            ## @param value Value to set for the framerate property.
            ## @return a void
            ## 
            def framerate=(value)
                @framerate = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "bitrate" => lambda {|n| @bitrate = n.get_number_value() },
                    "chapters" => lambda {|n| @chapters = n.get_collection_of_object_values(lambda {|pn| RixlSdk::Models::Chapter.create_from_discriminator_value(pn) }) },
                    "codec" => lambda {|n| @codec = n.get_string_value() },
                    "duration" => lambda {|n| @duration = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "file" => lambda {|n| @file = n.get_object_value(lambda {|pn| RixlSdk::Models::File.create_from_discriminator_value(pn) }) },
                    "framerate" => lambda {|n| @framerate = n.get_string_value() },
                    "hdr" => lambda {|n| @hdr = n.get_boolean_value() },
                    "height" => lambda {|n| @height = n.get_number_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "plan_type" => lambda {|n| @plan_type = n.get_enum_value(RixlSdk::Models::Github_com_rixlhq_api_db_sqlcPlanType) },
                    "poster" => lambda {|n| @poster = n.get_object_value(lambda {|pn| RixlSdk::Models::Image.create_from_discriminator_value(pn) }) },
                    "width" => lambda {|n| @width = n.get_number_value() },
                }
            end
            ## 
            ## Gets the hdr property value. The hdr property
            ## @return a boolean
            ## 
            def hdr
                return @hdr
            end
            ## 
            ## Sets the hdr property value. The hdr property
            ## @param value Value to set for the hdr property.
            ## @return a void
            ## 
            def hdr=(value)
                @hdr = value
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
            ## Gets the plan_type property value. The plan_type property
            ## @return a github_com_rixlhq_api_db_sqlc_plan_type
            ## 
            def plan_type
                return @plan_type
            end
            ## 
            ## Sets the plan_type property value. The plan_type property
            ## @param value Value to set for the plan_type property.
            ## @return a void
            ## 
            def plan_type=(value)
                @plan_type = value
            end
            ## 
            ## Gets the poster property value. The poster property
            ## @return a image
            ## 
            def poster
                return @poster
            end
            ## 
            ## Sets the poster property value. The poster property
            ## @param value Value to set for the poster property.
            ## @return a void
            ## 
            def poster=(value)
                @poster = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("bitrate", @bitrate)
                writer.write_collection_of_object_values("chapters", @chapters)
                writer.write_string_value("codec", @codec)
                writer.write_object_value("duration", @duration)
                writer.write_object_value("file", @file)
                writer.write_string_value("framerate", @framerate)
                writer.write_boolean_value("hdr", @hdr)
                writer.write_number_value("height", @height)
                writer.write_string_value("id", @id)
                writer.write_enum_value("plan_type", @plan_type)
                writer.write_object_value("poster", @poster)
                writer.write_number_value("width", @width)
                writer.write_additional_data(@additional_data)
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
