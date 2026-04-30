require 'microsoft_kiota_abstractions'
require_relative '../rixl_sdk'
require_relative './models'

module RixlSdk
    module Models
        class AudioTrack
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The created_at property
            @created_at
            ## 
            # The format property
            @format
            ## 
            # The id property
            @id
            ## 
            # The label property
            @label
            ## 
            # The language_code property
            @language_code
            ## 
            # The name property
            @name
            ## 
            # The size property
            @size
            ## 
            # The url property
            @url
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
            ## Instantiates a new AudioTrack and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the created_at property value. The created_at property
            ## @return a string
            ## 
            def created_at
                return @created_at
            end
            ## 
            ## Sets the created_at property value. The created_at property
            ## @param value Value to set for the created_at property.
            ## @return a void
            ## 
            def created_at=(value)
                @created_at = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a audio_track
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AudioTrack.new
            end
            ## 
            ## Gets the format property value. The format property
            ## @return a string
            ## 
            def format
                return @format
            end
            ## 
            ## Sets the format property value. The format property
            ## @param value Value to set for the format property.
            ## @return a void
            ## 
            def format=(value)
                @format = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "created_at" => lambda {|n| @created_at = n.get_string_value() },
                    "format" => lambda {|n| @format = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "label" => lambda {|n| @label = n.get_string_value() },
                    "language_code" => lambda {|n| @language_code = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "size" => lambda {|n| @size = n.get_number_value() },
                    "url" => lambda {|n| @url = n.get_string_value() },
                    "video_id" => lambda {|n| @video_id = n.get_string_value() },
                }
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
            ## Gets the label property value. The label property
            ## @return a string
            ## 
            def label
                return @label
            end
            ## 
            ## Sets the label property value. The label property
            ## @param value Value to set for the label property.
            ## @return a void
            ## 
            def label=(value)
                @label = value
            end
            ## 
            ## Gets the language_code property value. The language_code property
            ## @return a string
            ## 
            def language_code
                return @language_code
            end
            ## 
            ## Sets the language_code property value. The language_code property
            ## @param value Value to set for the language_code property.
            ## @return a void
            ## 
            def language_code=(value)
                @language_code = value
            end
            ## 
            ## Gets the name property value. The name property
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name property
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("created_at", @created_at)
                writer.write_string_value("format", @format)
                writer.write_string_value("id", @id)
                writer.write_string_value("label", @label)
                writer.write_string_value("language_code", @language_code)
                writer.write_string_value("name", @name)
                writer.write_number_value("size", @size)
                writer.write_string_value("url", @url)
                writer.write_string_value("video_id", @video_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the size property value. The size property
            ## @return a integer
            ## 
            def size
                return @size
            end
            ## 
            ## Sets the size property value. The size property
            ## @param value Value to set for the size property.
            ## @return a void
            ## 
            def size=(value)
                @size = value
            end
            ## 
            ## Gets the url property value. The url property
            ## @return a string
            ## 
            def url
                return @url
            end
            ## 
            ## Sets the url property value. The url property
            ## @param value Value to set for the url property.
            ## @return a void
            ## 
            def url=(value)
                @url = value
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
