require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsManagementTemplateStepTenantSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The assignedTenantsCount property
            @assigned_tenants_count
            ## 
            # The compliantTenantsCount property
            @compliant_tenants_count
            ## 
            # The createdByUserId property
            @created_by_user_id
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The dismissedTenantsCount property
            @dismissed_tenants_count
            ## 
            # The ineligibleTenantsCount property
            @ineligible_tenants_count
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
            # The managementTemplateDisplayName property
            @management_template_display_name
            ## 
            # The managementTemplateId property
            @management_template_id
            ## 
            # The managementTemplateStepDisplayName property
            @management_template_step_display_name
            ## 
            # The managementTemplateStepId property
            @management_template_step_id
            ## 
            # The notCompliantTenantsCount property
            @not_compliant_tenants_count
            ## 
            ## Gets the assignedTenantsCount property value. The assignedTenantsCount property
            ## @return a integer
            ## 
            def assigned_tenants_count
                return @assigned_tenants_count
            end
            ## 
            ## Sets the assignedTenantsCount property value. The assignedTenantsCount property
            ## @param value Value to set for the assignedTenantsCount property.
            ## @return a void
            ## 
            def assigned_tenants_count=(value)
                @assigned_tenants_count = value
            end
            ## 
            ## Gets the compliantTenantsCount property value. The compliantTenantsCount property
            ## @return a integer
            ## 
            def compliant_tenants_count
                return @compliant_tenants_count
            end
            ## 
            ## Sets the compliantTenantsCount property value. The compliantTenantsCount property
            ## @param value Value to set for the compliantTenantsCount property.
            ## @return a void
            ## 
            def compliant_tenants_count=(value)
                @compliant_tenants_count = value
            end
            ## 
            ## Instantiates a new ManagedTenantsManagementTemplateStepTenantSummary and sets the default values.
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
            ## @param value Value to set for the createdByUserId property.
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
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_management_template_step_tenant_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsManagementTemplateStepTenantSummary.new
            end
            ## 
            ## Gets the dismissedTenantsCount property value. The dismissedTenantsCount property
            ## @return a integer
            ## 
            def dismissed_tenants_count
                return @dismissed_tenants_count
            end
            ## 
            ## Sets the dismissedTenantsCount property value. The dismissedTenantsCount property
            ## @param value Value to set for the dismissedTenantsCount property.
            ## @return a void
            ## 
            def dismissed_tenants_count=(value)
                @dismissed_tenants_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignedTenantsCount" => lambda {|n| @assigned_tenants_count = n.get_number_value() },
                    "compliantTenantsCount" => lambda {|n| @compliant_tenants_count = n.get_number_value() },
                    "createdByUserId" => lambda {|n| @created_by_user_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "dismissedTenantsCount" => lambda {|n| @dismissed_tenants_count = n.get_number_value() },
                    "ineligibleTenantsCount" => lambda {|n| @ineligible_tenants_count = n.get_number_value() },
                    "lastActionByUserId" => lambda {|n| @last_action_by_user_id = n.get_string_value() },
                    "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                    "managementTemplateCollectionDisplayName" => lambda {|n| @management_template_collection_display_name = n.get_string_value() },
                    "managementTemplateCollectionId" => lambda {|n| @management_template_collection_id = n.get_string_value() },
                    "managementTemplateDisplayName" => lambda {|n| @management_template_display_name = n.get_string_value() },
                    "managementTemplateId" => lambda {|n| @management_template_id = n.get_string_value() },
                    "managementTemplateStepDisplayName" => lambda {|n| @management_template_step_display_name = n.get_string_value() },
                    "managementTemplateStepId" => lambda {|n| @management_template_step_id = n.get_string_value() },
                    "notCompliantTenantsCount" => lambda {|n| @not_compliant_tenants_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the ineligibleTenantsCount property value. The ineligibleTenantsCount property
            ## @return a integer
            ## 
            def ineligible_tenants_count
                return @ineligible_tenants_count
            end
            ## 
            ## Sets the ineligibleTenantsCount property value. The ineligibleTenantsCount property
            ## @param value Value to set for the ineligibleTenantsCount property.
            ## @return a void
            ## 
            def ineligible_tenants_count=(value)
                @ineligible_tenants_count = value
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
            ## @param value Value to set for the lastActionByUserId property.
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
            ## @param value Value to set for the lastActionDateTime property.
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
            ## @param value Value to set for the managementTemplateCollectionDisplayName property.
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
            ## @param value Value to set for the managementTemplateCollectionId property.
            ## @return a void
            ## 
            def management_template_collection_id=(value)
                @management_template_collection_id = value
            end
            ## 
            ## Gets the managementTemplateDisplayName property value. The managementTemplateDisplayName property
            ## @return a string
            ## 
            def management_template_display_name
                return @management_template_display_name
            end
            ## 
            ## Sets the managementTemplateDisplayName property value. The managementTemplateDisplayName property
            ## @param value Value to set for the managementTemplateDisplayName property.
            ## @return a void
            ## 
            def management_template_display_name=(value)
                @management_template_display_name = value
            end
            ## 
            ## Gets the managementTemplateId property value. The managementTemplateId property
            ## @return a string
            ## 
            def management_template_id
                return @management_template_id
            end
            ## 
            ## Sets the managementTemplateId property value. The managementTemplateId property
            ## @param value Value to set for the managementTemplateId property.
            ## @return a void
            ## 
            def management_template_id=(value)
                @management_template_id = value
            end
            ## 
            ## Gets the managementTemplateStepDisplayName property value. The managementTemplateStepDisplayName property
            ## @return a string
            ## 
            def management_template_step_display_name
                return @management_template_step_display_name
            end
            ## 
            ## Sets the managementTemplateStepDisplayName property value. The managementTemplateStepDisplayName property
            ## @param value Value to set for the managementTemplateStepDisplayName property.
            ## @return a void
            ## 
            def management_template_step_display_name=(value)
                @management_template_step_display_name = value
            end
            ## 
            ## Gets the managementTemplateStepId property value. The managementTemplateStepId property
            ## @return a string
            ## 
            def management_template_step_id
                return @management_template_step_id
            end
            ## 
            ## Sets the managementTemplateStepId property value. The managementTemplateStepId property
            ## @param value Value to set for the managementTemplateStepId property.
            ## @return a void
            ## 
            def management_template_step_id=(value)
                @management_template_step_id = value
            end
            ## 
            ## Gets the notCompliantTenantsCount property value. The notCompliantTenantsCount property
            ## @return a integer
            ## 
            def not_compliant_tenants_count
                return @not_compliant_tenants_count
            end
            ## 
            ## Sets the notCompliantTenantsCount property value. The notCompliantTenantsCount property
            ## @param value Value to set for the notCompliantTenantsCount property.
            ## @return a void
            ## 
            def not_compliant_tenants_count=(value)
                @not_compliant_tenants_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("assignedTenantsCount", @assigned_tenants_count)
                writer.write_number_value("compliantTenantsCount", @compliant_tenants_count)
                writer.write_string_value("createdByUserId", @created_by_user_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_number_value("dismissedTenantsCount", @dismissed_tenants_count)
                writer.write_number_value("ineligibleTenantsCount", @ineligible_tenants_count)
                writer.write_string_value("lastActionByUserId", @last_action_by_user_id)
                writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
                writer.write_string_value("managementTemplateCollectionDisplayName", @management_template_collection_display_name)
                writer.write_string_value("managementTemplateCollectionId", @management_template_collection_id)
                writer.write_string_value("managementTemplateDisplayName", @management_template_display_name)
                writer.write_string_value("managementTemplateId", @management_template_id)
                writer.write_string_value("managementTemplateStepDisplayName", @management_template_step_display_name)
                writer.write_string_value("managementTemplateStepId", @management_template_step_id)
                writer.write_number_value("notCompliantTenantsCount", @not_compliant_tenants_count)
            end
        end
    end
end
