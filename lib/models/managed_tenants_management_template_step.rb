require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsManagementTemplateStep < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The acceptedVersion property
            @accepted_version
            ## 
            # The category property
            @category
            ## 
            # The createdByUserId property
            @created_by_user_id
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The description property
            @description
            ## 
            # The displayName property
            @display_name
            ## 
            # The informationLinks property
            @information_links
            ## 
            # The lastActionByUserId property
            @last_action_by_user_id
            ## 
            # The lastActionDateTime property
            @last_action_date_time
            ## 
            # The managementTemplate property
            @management_template
            ## 
            # The portalLink property
            @portal_link
            ## 
            # The priority property
            @priority
            ## 
            # The userImpact property
            @user_impact
            ## 
            # The versions property
            @versions
            ## 
            ## Gets the acceptedVersion property value. The acceptedVersion property
            ## @return a managed_tenants_management_template_step_version
            ## 
            def accepted_version
                return @accepted_version
            end
            ## 
            ## Sets the acceptedVersion property value. The acceptedVersion property
            ## @param value Value to set for the acceptedVersion property.
            ## @return a void
            ## 
            def accepted_version=(value)
                @accepted_version = value
            end
            ## 
            ## Gets the category property value. The category property
            ## @return a managed_tenants_management_category
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The category property
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new managedTenantsManagementTemplateStep and sets the default values.
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
            ## @return a managed_tenants_management_template_step
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsManagementTemplateStep.new
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
                    "acceptedVersion" => lambda {|n| @accepted_version = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementTemplateStepVersion.create_from_discriminator_value(pn) }) },
                    "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenantsManagementCategory) },
                    "createdByUserId" => lambda {|n| @created_by_user_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "informationLinks" => lambda {|n| @information_links = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ActionUrl.create_from_discriminator_value(pn) }) },
                    "lastActionByUserId" => lambda {|n| @last_action_by_user_id = n.get_string_value() },
                    "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                    "managementTemplate" => lambda {|n| @management_template = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementTemplate.create_from_discriminator_value(pn) }) },
                    "portalLink" => lambda {|n| @portal_link = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ActionUrl.create_from_discriminator_value(pn) }) },
                    "priority" => lambda {|n| @priority = n.get_number_value() },
                    "userImpact" => lambda {|n| @user_impact = n.get_string_value() },
                    "versions" => lambda {|n| @versions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementTemplateStepVersion.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the informationLinks property value. The informationLinks property
            ## @return a action_url
            ## 
            def information_links
                return @information_links
            end
            ## 
            ## Sets the informationLinks property value. The informationLinks property
            ## @param value Value to set for the informationLinks property.
            ## @return a void
            ## 
            def information_links=(value)
                @information_links = value
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
            ## Gets the managementTemplate property value. The managementTemplate property
            ## @return a managed_tenants_management_template
            ## 
            def management_template
                return @management_template
            end
            ## 
            ## Sets the managementTemplate property value. The managementTemplate property
            ## @param value Value to set for the managementTemplate property.
            ## @return a void
            ## 
            def management_template=(value)
                @management_template = value
            end
            ## 
            ## Gets the portalLink property value. The portalLink property
            ## @return a action_url
            ## 
            def portal_link
                return @portal_link
            end
            ## 
            ## Sets the portalLink property value. The portalLink property
            ## @param value Value to set for the portalLink property.
            ## @return a void
            ## 
            def portal_link=(value)
                @portal_link = value
            end
            ## 
            ## Gets the priority property value. The priority property
            ## @return a integer
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. The priority property
            ## @param value Value to set for the priority property.
            ## @return a void
            ## 
            def priority=(value)
                @priority = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("acceptedVersion", @accepted_version)
                writer.write_enum_value("category", @category)
                writer.write_string_value("createdByUserId", @created_by_user_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("informationLinks", @information_links)
                writer.write_string_value("lastActionByUserId", @last_action_by_user_id)
                writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
                writer.write_object_value("managementTemplate", @management_template)
                writer.write_object_value("portalLink", @portal_link)
                writer.write_number_value("priority", @priority)
                writer.write_string_value("userImpact", @user_impact)
                writer.write_collection_of_object_values("versions", @versions)
            end
            ## 
            ## Gets the userImpact property value. The userImpact property
            ## @return a string
            ## 
            def user_impact
                return @user_impact
            end
            ## 
            ## Sets the userImpact property value. The userImpact property
            ## @param value Value to set for the userImpact property.
            ## @return a void
            ## 
            def user_impact=(value)
                @user_impact = value
            end
            ## 
            ## Gets the versions property value. The versions property
            ## @return a managed_tenants_management_template_step_version
            ## 
            def versions
                return @versions
            end
            ## 
            ## Sets the versions property value. The versions property
            ## @param value Value to set for the versions property.
            ## @return a void
            ## 
            def versions=(value)
                @versions = value
            end
        end
    end
end
