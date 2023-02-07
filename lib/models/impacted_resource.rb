require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ImpactedResource < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The date and time when the impactedResource object was initially associated with the recommendation.
        @added_date_time
        ## 
        # Additional information unique to the impactedResource to help contextualize the recommendation.
        @additional_details
        ## 
        # The URL link to the corresponding Azure AD resource.
        @api_url
        ## 
        # Friendly name of the Azure AD resource.
        @display_name
        ## 
        # Name of the user or service that last updated the status.
        @last_modified_by
        ## 
        # The date and time when the status was last updated.
        @last_modified_date_time
        ## 
        # The user responsible for maintaining the resource.
        @owner
        ## 
        # The URL link to the corresponding Azure AD portal page of the resource.
        @portal_url
        ## 
        # The future date and time when the status of a postponed impactedResource will be active again.
        @postpone_until_date_time
        ## 
        # Indicates the importance of the resource. A resource with a rank equal to 1 is of the highest importance.
        @rank
        ## 
        # The unique identifier of the recommendation that the resource is associated with.
        @recommendation_id
        ## 
        # Indicates the type of Azure AD resource. Examples include user, application.
        @resource_type
        ## 
        # The status property
        @status
        ## 
        # The related unique identifier, depending on the resourceType. For example, this property is set to the applicationId if the resourceType is an application.
        @subject_id
        ## 
        ## Gets the addedDateTime property value. The date and time when the impactedResource object was initially associated with the recommendation.
        ## @return a date_time
        ## 
        def added_date_time
            return @added_date_time
        end
        ## 
        ## Sets the addedDateTime property value. The date and time when the impactedResource object was initially associated with the recommendation.
        ## @param value Value to set for the added_date_time property.
        ## @return a void
        ## 
        def added_date_time=(value)
            @added_date_time = value
        end
        ## 
        ## Gets the additionalDetails property value. Additional information unique to the impactedResource to help contextualize the recommendation.
        ## @return a key_value
        ## 
        def additional_details
            return @additional_details
        end
        ## 
        ## Sets the additionalDetails property value. Additional information unique to the impactedResource to help contextualize the recommendation.
        ## @param value Value to set for the additional_details property.
        ## @return a void
        ## 
        def additional_details=(value)
            @additional_details = value
        end
        ## 
        ## Gets the apiUrl property value. The URL link to the corresponding Azure AD resource.
        ## @return a string
        ## 
        def api_url
            return @api_url
        end
        ## 
        ## Sets the apiUrl property value. The URL link to the corresponding Azure AD resource.
        ## @param value Value to set for the api_url property.
        ## @return a void
        ## 
        def api_url=(value)
            @api_url = value
        end
        ## 
        ## Instantiates a new impactedResource and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a impacted_resource
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ImpactedResource.new
        end
        ## 
        ## Gets the displayName property value. Friendly name of the Azure AD resource.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Friendly name of the Azure AD resource.
        ## @param value Value to set for the display_name property.
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
                "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_string_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_string_value() },
                "owner" => lambda {|n| @owner = n.get_string_value() },
                "portalUrl" => lambda {|n| @portal_url = n.get_string_value() },
                "postponeUntilDateTime" => lambda {|n| @postpone_until_date_time = n.get_date_time_value() },
                "rank" => lambda {|n| @rank = n.get_number_value() },
                "recommendationId" => lambda {|n| @recommendation_id = n.get_string_value() },
                "resourceType" => lambda {|n| @resource_type = n.get_string_value() },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::RecommendationStatus) },
                "subjectId" => lambda {|n| @subject_id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the lastModifiedBy property value. Name of the user or service that last updated the status.
        ## @return a string
        ## 
        def last_modified_by
            return @last_modified_by
        end
        ## 
        ## Sets the lastModifiedBy property value. Name of the user or service that last updated the status.
        ## @param value Value to set for the last_modified_by property.
        ## @return a void
        ## 
        def last_modified_by=(value)
            @last_modified_by = value
        end
        ## 
        ## Gets the lastModifiedDateTime property value. The date and time when the status was last updated.
        ## @return a string
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. The date and time when the status was last updated.
        ## @param value Value to set for the last_modified_date_time property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the owner property value. The user responsible for maintaining the resource.
        ## @return a string
        ## 
        def owner
            return @owner
        end
        ## 
        ## Sets the owner property value. The user responsible for maintaining the resource.
        ## @param value Value to set for the owner property.
        ## @return a void
        ## 
        def owner=(value)
            @owner = value
        end
        ## 
        ## Gets the portalUrl property value. The URL link to the corresponding Azure AD portal page of the resource.
        ## @return a string
        ## 
        def portal_url
            return @portal_url
        end
        ## 
        ## Sets the portalUrl property value. The URL link to the corresponding Azure AD portal page of the resource.
        ## @param value Value to set for the portal_url property.
        ## @return a void
        ## 
        def portal_url=(value)
            @portal_url = value
        end
        ## 
        ## Gets the postponeUntilDateTime property value. The future date and time when the status of a postponed impactedResource will be active again.
        ## @return a date_time
        ## 
        def postpone_until_date_time
            return @postpone_until_date_time
        end
        ## 
        ## Sets the postponeUntilDateTime property value. The future date and time when the status of a postponed impactedResource will be active again.
        ## @param value Value to set for the postpone_until_date_time property.
        ## @return a void
        ## 
        def postpone_until_date_time=(value)
            @postpone_until_date_time = value
        end
        ## 
        ## Gets the rank property value. Indicates the importance of the resource. A resource with a rank equal to 1 is of the highest importance.
        ## @return a integer
        ## 
        def rank
            return @rank
        end
        ## 
        ## Sets the rank property value. Indicates the importance of the resource. A resource with a rank equal to 1 is of the highest importance.
        ## @param value Value to set for the rank property.
        ## @return a void
        ## 
        def rank=(value)
            @rank = value
        end
        ## 
        ## Gets the recommendationId property value. The unique identifier of the recommendation that the resource is associated with.
        ## @return a string
        ## 
        def recommendation_id
            return @recommendation_id
        end
        ## 
        ## Sets the recommendationId property value. The unique identifier of the recommendation that the resource is associated with.
        ## @param value Value to set for the recommendation_id property.
        ## @return a void
        ## 
        def recommendation_id=(value)
            @recommendation_id = value
        end
        ## 
        ## Gets the resourceType property value. Indicates the type of Azure AD resource. Examples include user, application.
        ## @return a string
        ## 
        def resource_type
            return @resource_type
        end
        ## 
        ## Sets the resourceType property value. Indicates the type of Azure AD resource. Examples include user, application.
        ## @param value Value to set for the resource_type property.
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
            writer.write_string_value("lastModifiedBy", @last_modified_by)
            writer.write_string_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_string_value("owner", @owner)
            writer.write_string_value("portalUrl", @portal_url)
            writer.write_date_time_value("postponeUntilDateTime", @postpone_until_date_time)
            writer.write_number_value("rank", @rank)
            writer.write_string_value("recommendationId", @recommendation_id)
            writer.write_string_value("resourceType", @resource_type)
            writer.write_enum_value("status", @status)
            writer.write_string_value("subjectId", @subject_id)
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
        ## 
        ## Gets the subjectId property value. The related unique identifier, depending on the resourceType. For example, this property is set to the applicationId if the resourceType is an application.
        ## @return a string
        ## 
        def subject_id
            return @subject_id
        end
        ## 
        ## Sets the subjectId property value. The related unique identifier, depending on the resourceType. For example, this property is set to the applicationId if the resourceType is an application.
        ## @param value Value to set for the subject_id property.
        ## @return a void
        ## 
        def subject_id=(value)
            @subject_id = value
        end
    end
end
