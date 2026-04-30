require 'microsoft_kiota_abstractions'
require_relative '../rixl_sdk'
require_relative './models'

module RixlSdk
    module Models
        ## 
        # Chapters array
        class UpdateChaptersRequest
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The chapters property
            @chapters
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
            ## Gets the chapters property value. The chapters property
            ## @return a github_com_rixlhq_api_internal_videos_types_chapter_input
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
            ## Instantiates a new UpdateChaptersRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a update_chapters_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UpdateChaptersRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "chapters" => lambda {|n| @chapters = n.get_collection_of_object_values(lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_videos_typesChapterInput.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("chapters", @chapters)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
