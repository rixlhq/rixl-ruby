require 'microsoft_kiota_abstractions'
require_relative '../rixl_sdk'
require_relative './models'

module RixlSdk
    module Models
        class Chapter
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The duration_label property
            @duration_label
            ## 
            # The end_time_sec property
            @end_time_sec
            ## 
            # The start_time_sec property
            @start_time_sec
            ## 
            # The title property
            @title
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
            ## Instantiates a new Chapter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a chapter
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Chapter.new
            end
            ## 
            ## Gets the duration_label property value. The duration_label property
            ## @return a string
            ## 
            def duration_label
                return @duration_label
            end
            ## 
            ## Sets the duration_label property value. The duration_label property
            ## @param value Value to set for the duration_label property.
            ## @return a void
            ## 
            def duration_label=(value)
                @duration_label = value
            end
            ## 
            ## Gets the end_time_sec property value. The end_time_sec property
            ## @return a double
            ## 
            def end_time_sec
                return @end_time_sec
            end
            ## 
            ## Sets the end_time_sec property value. The end_time_sec property
            ## @param value Value to set for the end_time_sec property.
            ## @return a void
            ## 
            def end_time_sec=(value)
                @end_time_sec = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "duration_label" => lambda {|n| @duration_label = n.get_string_value() },
                    "end_time_sec" => lambda {|n| @end_time_sec = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "start_time_sec" => lambda {|n| @start_time_sec = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "title" => lambda {|n| @title = n.get_string_value() },
                }
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("duration_label", @duration_label)
                writer.write_object_value("end_time_sec", @end_time_sec)
                writer.write_object_value("start_time_sec", @start_time_sec)
                writer.write_string_value("title", @title)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the start_time_sec property value. The start_time_sec property
            ## @return a double
            ## 
            def start_time_sec
                return @start_time_sec
            end
            ## 
            ## Sets the start_time_sec property value. The start_time_sec property
            ## @param value Value to set for the start_time_sec property.
            ## @return a void
            ## 
            def start_time_sec=(value)
                @start_time_sec = value
            end
            ## 
            ## Gets the title property value. The title property
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title property
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
