require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta::Models::ManagedTenants
    class ManagementTemplateCollectionTenantSummary < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The completeStepsCount property
        @complete_steps_count
        ## 
        # The completeUsersCount property
        @complete_users_count
        ## 
        # The createdByUserId property
        @created_by_user_id
        ## 
        # The createdDateTime property
        @created_date_time
        ## 
        # The dismissedStepsCount property
        @dismissed_steps_count
        ## 
        # The excludedUsersCount property
        @excluded_users_count
        ## 
        # The excludedUsersDistinctCount property
        @excluded_users_distinct_count
        ## 
        # The incompleteStepsCount property
        @incomplete_steps_count
        ## 
        # The incompleteUsersCount property
        @incomplete_users_count
        ## 
        # The ineligibleStepsCount property
        @ineligible_steps_count
        ## 
        # The isComplete property
        @is_complete
        ## 
        # The lastActionByUserId property
        @last_action_by_user_id
        ## 
        # The lastActionDateTime property
        @last_action_date_time
        ## 
        # The managementTemplateCollectionDisplayName property
        @management_template_collection_display_name
        ## 
        # The managementTemplateCollectionId property
        @management_template_collection_id
        ## 
        # The tenantId property
        @tenant_id
        ## 
        ## Gets the completeStepsCount property value. The completeStepsCount property
        ## @return a integer
        ## 
        def complete_steps_count
            return @complete_steps_count
        end
        ## 
        ## Sets the completeStepsCount property value. The completeStepsCount property
        ## @param value Value to set for the complete_steps_count property.
        ## @return a void
        ## 
        def complete_steps_count=(value)
            @complete_steps_count = value
        end
        ## 
        ## Gets the completeUsersCount property value. The completeUsersCount property
        ## @return a integer
        ## 
        def complete_users_count
            return @complete_users_count
        end
        ## 
        ## Sets the completeUsersCount property value. The completeUsersCount property
        ## @param value Value to set for the complete_users_count property.
        ## @return a void
        ## 
        def complete_users_count=(value)
            @complete_users_count = value
        end
        ## 
        ## Instantiates a new managementTemplateCollectionTenantSummary and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdByUserId property value. The createdByUserId property
        ## @return a string
        ## 
        def created_by_user_id
            return @created_by_user_id
        end
        ## 
        ## Sets the createdByUserId property value. The createdByUserId property
        ## @param value Value to set for the created_by_user_id property.
        ## @return a void
        ## 
        def created_by_user_id=(value)
            @created_by_user_id = value
        end
        ## 
        ## Gets the createdDateTime property value. The createdDateTime property
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The createdDateTime property
        ## @param value Value to set for the created_date_time property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a management_template_collection_tenant_summary
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ManagementTemplateCollectionTenantSummary.new
        end
        ## 
        ## Gets the dismissedStepsCount property value. The dismissedStepsCount property
        ## @return a integer
        ## 
        def dismissed_steps_count
            return @dismissed_steps_count
        end
        ## 
        ## Sets the dismissedStepsCount property value. The dismissedStepsCount property
        ## @param value Value to set for the dismissed_steps_count property.
        ## @return a void
        ## 
        def dismissed_steps_count=(value)
            @dismissed_steps_count = value
        end
        ## 
        ## Gets the excludedUsersCount property value. The excludedUsersCount property
        ## @return a integer
        ## 
        def excluded_users_count
            return @excluded_users_count
        end
        ## 
        ## Sets the excludedUsersCount property value. The excludedUsersCount property
        ## @param value Value to set for the excluded_users_count property.
        ## @return a void
        ## 
        def excluded_users_count=(value)
            @excluded_users_count = value
        end
        ## 
        ## Gets the excludedUsersDistinctCount property value. The excludedUsersDistinctCount property
        ## @return a integer
        ## 
        def excluded_users_distinct_count
            return @excluded_users_distinct_count
        end
        ## 
        ## Sets the excludedUsersDistinctCount property value. The excludedUsersDistinctCount property
        ## @param value Value to set for the excluded_users_distinct_count property.
        ## @return a void
        ## 
        def excluded_users_distinct_count=(value)
            @excluded_users_distinct_count = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "completeStepsCount" => lambda {|n| @complete_steps_count = n.get_number_value() },
                "completeUsersCount" => lambda {|n| @complete_users_count = n.get_number_value() },
                "createdByUserId" => lambda {|n| @created_by_user_id = n.get_string_value() },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "dismissedStepsCount" => lambda {|n| @dismissed_steps_count = n.get_number_value() },
                "excludedUsersCount" => lambda {|n| @excluded_users_count = n.get_number_value() },
                "excludedUsersDistinctCount" => lambda {|n| @excluded_users_distinct_count = n.get_number_value() },
                "incompleteStepsCount" => lambda {|n| @incomplete_steps_count = n.get_number_value() },
                "incompleteUsersCount" => lambda {|n| @incomplete_users_count = n.get_number_value() },
                "ineligibleStepsCount" => lambda {|n| @ineligible_steps_count = n.get_number_value() },
                "isComplete" => lambda {|n| @is_complete = n.get_boolean_value() },
                "lastActionByUserId" => lambda {|n| @last_action_by_user_id = n.get_string_value() },
                "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                "managementTemplateCollectionDisplayName" => lambda {|n| @management_template_collection_display_name = n.get_string_value() },
                "managementTemplateCollectionId" => lambda {|n| @management_template_collection_id = n.get_string_value() },
                "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the incompleteStepsCount property value. The incompleteStepsCount property
        ## @return a integer
        ## 
        def incomplete_steps_count
            return @incomplete_steps_count
        end
        ## 
        ## Sets the incompleteStepsCount property value. The incompleteStepsCount property
        ## @param value Value to set for the incomplete_steps_count property.
        ## @return a void
        ## 
        def incomplete_steps_count=(value)
            @incomplete_steps_count = value
        end
        ## 
        ## Gets the incompleteUsersCount property value. The incompleteUsersCount property
        ## @return a integer
        ## 
        def incomplete_users_count
            return @incomplete_users_count
        end
        ## 
        ## Sets the incompleteUsersCount property value. The incompleteUsersCount property
        ## @param value Value to set for the incomplete_users_count property.
        ## @return a void
        ## 
        def incomplete_users_count=(value)
            @incomplete_users_count = value
        end
        ## 
        ## Gets the ineligibleStepsCount property value. The ineligibleStepsCount property
        ## @return a integer
        ## 
        def ineligible_steps_count
            return @ineligible_steps_count
        end
        ## 
        ## Sets the ineligibleStepsCount property value. The ineligibleStepsCount property
        ## @param value Value to set for the ineligible_steps_count property.
        ## @return a void
        ## 
        def ineligible_steps_count=(value)
            @ineligible_steps_count = value
        end
        ## 
        ## Gets the isComplete property value. The isComplete property
        ## @return a boolean
        ## 
        def is_complete
            return @is_complete
        end
        ## 
        ## Sets the isComplete property value. The isComplete property
        ## @param value Value to set for the is_complete property.
        ## @return a void
        ## 
        def is_complete=(value)
            @is_complete = value
        end
        ## 
        ## Gets the lastActionByUserId property value. The lastActionByUserId property
        ## @return a string
        ## 
        def last_action_by_user_id
            return @last_action_by_user_id
        end
        ## 
        ## Sets the lastActionByUserId property value. The lastActionByUserId property
        ## @param value Value to set for the last_action_by_user_id property.
        ## @return a void
        ## 
        def last_action_by_user_id=(value)
            @last_action_by_user_id = value
        end
        ## 
        ## Gets the lastActionDateTime property value. The lastActionDateTime property
        ## @return a date_time
        ## 
        def last_action_date_time
            return @last_action_date_time
        end
        ## 
        ## Sets the lastActionDateTime property value. The lastActionDateTime property
        ## @param value Value to set for the last_action_date_time property.
        ## @return a void
        ## 
        def last_action_date_time=(value)
            @last_action_date_time = value
        end
        ## 
        ## Gets the managementTemplateCollectionDisplayName property value. The managementTemplateCollectionDisplayName property
        ## @return a string
        ## 
        def management_template_collection_display_name
            return @management_template_collection_display_name
        end
        ## 
        ## Sets the managementTemplateCollectionDisplayName property value. The managementTemplateCollectionDisplayName property
        ## @param value Value to set for the management_template_collection_display_name property.
        ## @return a void
        ## 
        def management_template_collection_display_name=(value)
            @management_template_collection_display_name = value
        end
        ## 
        ## Gets the managementTemplateCollectionId property value. The managementTemplateCollectionId property
        ## @return a string
        ## 
        def management_template_collection_id
            return @management_template_collection_id
        end
        ## 
        ## Sets the managementTemplateCollectionId property value. The managementTemplateCollectionId property
        ## @param value Value to set for the management_template_collection_id property.
        ## @return a void
        ## 
        def management_template_collection_id=(value)
            @management_template_collection_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_number_value("completeStepsCount", @complete_steps_count)
            writer.write_number_value("completeUsersCount", @complete_users_count)
            writer.write_string_value("createdByUserId", @created_by_user_id)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_number_value("dismissedStepsCount", @dismissed_steps_count)
            writer.write_number_value("excludedUsersCount", @excluded_users_count)
            writer.write_number_value("excludedUsersDistinctCount", @excluded_users_distinct_count)
            writer.write_number_value("incompleteStepsCount", @incomplete_steps_count)
            writer.write_number_value("incompleteUsersCount", @incomplete_users_count)
            writer.write_number_value("ineligibleStepsCount", @ineligible_steps_count)
            writer.write_boolean_value("isComplete", @is_complete)
            writer.write_string_value("lastActionByUserId", @last_action_by_user_id)
            writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
            writer.write_string_value("managementTemplateCollectionDisplayName", @management_template_collection_display_name)
            writer.write_string_value("managementTemplateCollectionId", @management_template_collection_id)
            writer.write_string_value("tenantId", @tenant_id)
        end
        ## 
        ## Gets the tenantId property value. The tenantId property
        ## @return a string
        ## 
        def tenant_id
            return @tenant_id
        end
        ## 
        ## Sets the tenantId property value. The tenantId property
        ## @param value Value to set for the tenant_id property.
        ## @return a void
        ## 
        def tenant_id=(value)
            @tenant_id = value
        end
    end
end
