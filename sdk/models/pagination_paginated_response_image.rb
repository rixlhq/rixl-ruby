require 'microsoft_kiota_abstractions'
require_relative '../rixl_sdk'
require_relative './models'

module RixlSdk
    module Models
        class PaginationPaginatedResponseImage
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Data contains the slice of items for the current request.
            @data
            ## 
            # Pagination data for the request.
            @pagination
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
            ## Instantiates a new PaginationPaginatedResponseImage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a pagination_paginated_response_image
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PaginationPaginatedResponseImage.new
            end
            ## 
            ## Gets the data property value. Data contains the slice of items for the current request.
            ## @return a image
            ## 
            def data
                return @data
            end
            ## 
            ## Sets the data property value. Data contains the slice of items for the current request.
            ## @param value Value to set for the data property.
            ## @return a void
            ## 
            def data=(value)
                @data = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "data" => lambda {|n| @data = n.get_collection_of_object_values(lambda {|pn| RixlSdk::Models::Image.create_from_discriminator_value(pn) }) },
                    "pagination" => lambda {|n| @pagination = n.get_object_value(lambda {|pn| RixlSdk::Models::PaginationPagination.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the pagination property value. Pagination data for the request.
            ## @return a pagination_pagination
            ## 
            def pagination
                return @pagination
            end
            ## 
            ## Sets the pagination property value. Pagination data for the request.
            ## @param value Value to set for the pagination property.
            ## @return a void
            ## 
            def pagination=(value)
                @pagination = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("data", @data)
                writer.write_object_value("pagination", @pagination)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
