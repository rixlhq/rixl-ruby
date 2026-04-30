require 'microsoft_kiota_abstractions'
require_relative '../rixl_sdk'
require_relative './models'

module RixlSdk
    module Models
        ## 
        # Standard error response returned by the API
        class Github_com_rixlhq_api_internal_errorsErrorResponse < MicrosoftKiotaAbstractions::ApiError
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # HTTP status code
            @code
            ## 
            # Optional details about the error
            @details
            ## 
            # Error message describing what went wrong
            @error
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
            ## Gets the code property value. HTTP status code
            ## @return a integer
            ## 
            def code
                return @code
            end
            ## 
            ## Sets the code property value. HTTP status code
            ## @param value Value to set for the code property.
            ## @return a void
            ## 
            def code=(value)
                @code = value
            end
            ## 
            ## Instantiates a new Github_com_rixlhq_api_internal_errorsErrorResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a github_com_rixlhq_api_internal_errors_error_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Github_com_rixlhq_api_internal_errorsErrorResponse.new
            end
            ## 
            ## Gets the details property value. Optional details about the error
            ## @return a string
            ## 
            def details
                return @details
            end
            ## 
            ## Sets the details property value. Optional details about the error
            ## @param value Value to set for the details property.
            ## @return a void
            ## 
            def details=(value)
                @details = value
            end
            ## 
            ## Gets the error property value. Error message describing what went wrong
            ## @return a string
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. Error message describing what went wrong
            ## @param value Value to set for the error property.
            ## @return a void
            ## 
            def error=(value)
                @error = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "code" => lambda {|n| @code = n.get_number_value() },
                    "details" => lambda {|n| @details = n.get_string_value() },
                    "error" => lambda {|n| @error = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("code", @code)
                writer.write_string_value("details", @details)
                writer.write_string_value("error", @error)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
