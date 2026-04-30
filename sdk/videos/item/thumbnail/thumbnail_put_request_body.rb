require 'microsoft_kiota_abstractions'
require_relative '../../../rixl_sdk'
require_relative '../../videos'
require_relative '../item'
require_relative './thumbnail'

module RixlSdk
    module Videos
        module Item
            module Thumbnail
                class ThumbnailPutRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The thumbnail property
                    @thumbnail
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
                    ## Instantiates a new ThumbnailPutRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a thumbnail_put_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ThumbnailPutRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "thumbnail" => lambda {|n| @thumbnail = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("thumbnail", @thumbnail)
                        writer.write_additional_data(@additional_data)
                    end
                    ## 
                    ## Gets the thumbnail property value. The thumbnail property
                    ## @return a binary
                    ## 
                    def thumbnail
                        return @thumbnail
                    end
                    ## 
                    ## Sets the thumbnail property value. The thumbnail property
                    ## @param value Value to set for the thumbnail property.
                    ## @return a void
                    ## 
                    def thumbnail=(value)
                        @thumbnail = value
                    end
                end
            end
        end
    end
end
