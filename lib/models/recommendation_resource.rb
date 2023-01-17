require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class RecommendationResource < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The addedDateTime property
        @added_date_time
        ## 
        # The additionalDetails property
        @additional_details
        ## 
        # The apiUrl property
        @api_url
        ## 
        # The displayName property
        @display_name
        ## 
        # The owner property
        @owner
        ## 
        # The portalUrl property
        @portal_url
        ## 
        # The rank property
        @rank
        ## 
        # The recommendationId property
        @recommendation_id
        ## 
        # The resourceType property
        @resource_type
        ## 
        # The status property
        @status
        ## 
        ## Gets the addedDateTime property value. The addedDateTime property
        ## @return a date_time
        ## 
        def added_date_time
            return @added_date_time
        end
        ## 
        ## Sets the addedDateTime property value. The addedDateTime property
        ## @param value Value to set for the addedDateTime property.
        ## @return a void
        ## 
        def added_date_time=(value)
            @added_date_time = value
        end
        ## 
        ## Gets the additionalDetails property value. The additionalDetails property
        ## @return a key_value
        ## 
        def additional_details
            return @additional_details
        end
        ## 
        ## Sets the additionalDetails property value. The additionalDetails property
        ## @param value Value to set for the additionalDetails property.
        ## @return a void
        ## 
        def additional_details=(value)
            @additional_details = value
        end
        ## 
        ## Gets the apiUrl property value. The apiUrl property
        ## @return a string
        ## 
        def api_url
            return @api_url
        end
        ## 
        ## Sets the apiUrl property value. The apiUrl property
        ## @param value Value to set for the apiUrl property.
        ## @return a void
        ## 
        def api_url=(value)
            @api_url = value
        end
        ## 
        ## Instantiates a new recommendationResource and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a recommendation_resource
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return RecommendationResource.new
        end
        ## 
        ## Gets the displayName property value. The displayName property
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The displayName property
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "addedDateTime" => lambda {|n| @added_date_time = n.get_date_time_value() },
                "additionalDetails" => lambda {|n| @additional_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValue.create_from_discriminator_value(pn) }) },
                "apiUrl" => lambda {|n| @api_url = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "owner" => lambda {|n| @owner = n.get_string_value() },
                "portalUrl" => lambda {|n| @portal_url = n.get_string_value() },
                "rank" => lambda {|n| @rank = n.get_number_value() },
                "recommendationId" => lambda {|n| @recommendation_id = n.get_string_value() },
                "resourceType" => lambda {|n| @resource_type = n.get_string_value() },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::RecommendationStatus) },
            })
        end
        ## 
        ## Gets the owner property value. The owner property
        ## @return a string
        ## 
        def owner
            return @owner
        end
        ## 
        ## Sets the owner property value. The owner property
        ## @param value Value to set for the owner property.
        ## @return a void
        ## 
        def owner=(value)
            @owner = value
        end
        ## 
        ## Gets the portalUrl property value. The portalUrl property
        ## @return a string
        ## 
        def portal_url
            return @portal_url
        end
        ## 
        ## Sets the portalUrl property value. The portalUrl property
        ## @param value Value to set for the portalUrl property.
        ## @return a void
        ## 
        def portal_url=(value)
            @portal_url = value
        end
        ## 
        ## Gets the rank property value. The rank property
        ## @return a integer
        ## 
        def rank
            return @rank
        end
        ## 
        ## Sets the rank property value. The rank property
        ## @param value Value to set for the rank property.
        ## @return a void
        ## 
        def rank=(value)
            @rank = value
        end
        ## 
        ## Gets the recommendationId property value. The recommendationId property
        ## @return a string
        ## 
        def recommendation_id
            return @recommendation_id
        end
        ## 
        ## Sets the recommendationId property value. The recommendationId property
        ## @param value Value to set for the recommendationId property.
        ## @return a void
        ## 
        def recommendation_id=(value)
            @recommendation_id = value
        end
        ## 
        ## Gets the resourceType property value. The resourceType property
        ## @return a string
        ## 
        def resource_type
            return @resource_type
        end
        ## 
        ## Sets the resourceType property value. The resourceType property
        ## @param value Value to set for the resourceType property.
        ## @return a void
        ## 
        def resource_type=(value)
            @resource_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_time_value("addedDateTime", @added_date_time)
            writer.write_collection_of_object_values("additionalDetails", @additional_details)
            writer.write_string_value("apiUrl", @api_url)
            writer.write_string_value("displayName", @display_name)
            writer.write_string_value("owner", @owner)
            writer.write_string_value("portalUrl", @portal_url)
            writer.write_number_value("rank", @rank)
            writer.write_string_value("recommendationId", @recommendation_id)
            writer.write_string_value("resourceType", @resource_type)
            writer.write_enum_value("status", @status)
        end
        ## 
        ## Gets the status property value. The status property
        ## @return a recommendation_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. The status property
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
