require 'microsoft_kiota_abstractions'
require_relative '../rixl_sdk'
require_relative './models'

module RixlSdk
    module Models
        ## 
        # Pagination data for the request.
        class PaginationPagination
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Maximum number of items to return in a single request.
            @limit
            ## 
            # Starting point of the result set.
            @offset
            ## 
            # The total number of available items in the full list.
            @total
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
            ## Instantiates a new PaginationPagination and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a pagination_pagination
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PaginationPagination.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "limit" => lambda {|n| @limit = n.get_number_value() },
                    "offset" => lambda {|n| @offset = n.get_number_value() },
                    "total" => lambda {|n| @total = n.get_number_value() },
                }
            end
            ## 
            ## Gets the limit property value. Maximum number of items to return in a single request.
            ## @return a integer
            ## 
            def limit
                return @limit
            end
            ## 
            ## Sets the limit property value. Maximum number of items to return in a single request.
            ## @param value Value to set for the limit property.
            ## @return a void
            ## 
            def limit=(value)
                @limit = value
            end
            ## 
            ## Gets the offset property value. Starting point of the result set.
            ## @return a integer
            ## 
            def offset
                return @offset
            end
            ## 
            ## Sets the offset property value. Starting point of the result set.
            ## @param value Value to set for the offset property.
            ## @return a void
            ## 
            def offset=(value)
                @offset = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("limit", @limit)
                writer.write_number_value("offset", @offset)
                writer.write_number_value("total", @total)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the total property value. The total number of available items in the full list.
            ## @return a integer
            ## 
            def total
                return @total
            end
            ## 
            ## Sets the total property value. The total number of available items in the full list.
            ## @param value Value to set for the total property.
            ## @return a void
            ## 
            def total=(value)
                @total = value
            end
        end
    end
end
