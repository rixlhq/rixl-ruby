require 'microsoft_kiota_abstractions'
require_relative '../../../../rixl_sdk'
require_relative '../../../videos'
require_relative '../../item'
require_relative '../audio_tracks'
require_relative './item'

module RixlSdk
    module Videos
        module Item
            module AudioTracks
                module Item
                    class WithLangCodePutRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The file property
                        @file
                        ## 
                        # The label property
                        @label
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
                        ## Instantiates a new WithLangCodePutRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a with_lang_code_put_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return WithLangCodePutRequestBody.new
                        end
                        ## 
                        ## Gets the file property value. The file property
                        ## @return a binary
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
                                "file" => lambda {|n| @file = n.get_string_value() },
                                "label" => lambda {|n| @label = n.get_string_value() },
                            }
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
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_object_value("file", @file)
                            writer.write_string_value("label", @label)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
