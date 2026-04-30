require 'microsoft_kiota_abstractions'
require_relative '../rixl_sdk'
require_relative './models'

module RixlSdk
    module Models
        class Post
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The created_at property
            @created_at
            ## 
            # The creator_id property
            @creator_id
            ## 
            # The description property
            @description
            ## 
            # The feed_id property
            @feed_id
            ## 
            # The id property
            @id
            ## 
            # The image property
            @image
            ## 
            # The plan_type property
            @plan_type
            ## 
            # The type property
            @type
            ## 
            # The updated_at property
            @updated_at
            ## 
            # The video property
            @video
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
            ## Instantiates a new Post and sets the default values.
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
            ## @return a post
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Post.new
            end
            ## 
            ## Gets the creator_id property value. The creator_id property
            ## @return a string
            ## 
            def creator_id
                return @creator_id
            end
            ## 
            ## Sets the creator_id property value. The creator_id property
            ## @param value Value to set for the creator_id property.
            ## @return a void
            ## 
            def creator_id=(value)
                @creator_id = value
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the feed_id property value. The feed_id property
            ## @return a string
            ## 
            def feed_id
                return @feed_id
            end
            ## 
            ## Sets the feed_id property value. The feed_id property
            ## @param value Value to set for the feed_id property.
            ## @return a void
            ## 
            def feed_id=(value)
                @feed_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "created_at" => lambda {|n| @created_at = n.get_string_value() },
                    "creator_id" => lambda {|n| @creator_id = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "feed_id" => lambda {|n| @feed_id = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "image" => lambda {|n| @image = n.get_object_value(lambda {|pn| RixlSdk::Models::Image.create_from_discriminator_value(pn) }) },
                    "plan_type" => lambda {|n| @plan_type = n.get_enum_value(RixlSdk::Models::Github_com_rixlhq_api_db_sqlcPlanType) },
                    "type" => lambda {|n| @type = n.get_enum_value(RixlSdk::Models::PostType) },
                    "updated_at" => lambda {|n| @updated_at = n.get_string_value() },
                    "video" => lambda {|n| @video = n.get_object_value(lambda {|pn| RixlSdk::Models::Github_com_rixlhq_api_internal_videosVideoResponse.create_from_discriminator_value(pn) }) },
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
            ## Gets the image property value. The image property
            ## @return a image
            ## 
            def image
                return @image
            end
            ## 
            ## Sets the image property value. The image property
            ## @param value Value to set for the image property.
            ## @return a void
            ## 
            def image=(value)
                @image = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("created_at", @created_at)
                writer.write_string_value("creator_id", @creator_id)
                writer.write_string_value("description", @description)
                writer.write_string_value("feed_id", @feed_id)
                writer.write_string_value("id", @id)
                writer.write_object_value("image", @image)
                writer.write_enum_value("plan_type", @plan_type)
                writer.write_enum_value("type", @type)
                writer.write_string_value("updated_at", @updated_at)
                writer.write_object_value("video", @video)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a post_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type property
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the updated_at property value. The updated_at property
            ## @return a string
            ## 
            def updated_at
                return @updated_at
            end
            ## 
            ## Sets the updated_at property value. The updated_at property
            ## @param value Value to set for the updated_at property.
            ## @return a void
            ## 
            def updated_at=(value)
                @updated_at = value
            end
            ## 
            ## Gets the video property value. The video property
            ## @return a github_com_rixlhq_api_internal_videos_video_response
            ## 
            def video
                return @video
            end
            ## 
            ## Sets the video property value. The video property
            ## @param value Value to set for the video property.
            ## @return a void
            ## 
            def video=(value)
                @video = value
            end
        end
    end
end
