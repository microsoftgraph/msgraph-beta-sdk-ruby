require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './managed_tenants/managed_tenants'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsManagementTemplate < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The management category for the management template. Possible values are: custom, devices, identity, unknownFutureValue. Required. Read-only.
            @category
            ## 
            # The createdByUserId property
            @created_by_user_id
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The description for the management template. Optional. Read-only.
            @description
            ## 
            # The display name for the management template. Required. Read-only.
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
            # The managementTemplateCollections property
            @management_template_collections
            ## 
            # The managementTemplateSteps property
            @management_template_steps
            ## 
            # The collection of parameters used by the management template. Optional. Read-only.
            @parameters
            ## 
            # The priority property
            @priority
            ## 
            # The provider property
            @provider
            ## 
            # The userImpact property
            @user_impact
            ## 
            # The version property
            @version
            ## 
            # The collection of workload actions associated with the management template. Optional. Read-only.
            @workload_actions
            ## 
            ## Gets the category property value. The management category for the management template. Possible values are: custom, devices, identity, unknownFutureValue. Required. Read-only.
            ## @return a managed_tenants_management_category
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The management category for the management template. Possible values are: custom, devices, identity, unknownFutureValue. Required. Read-only.
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new managementTemplate and sets the default values.
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
            ## @return a managed_tenants_management_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsManagementTemplate.new
            end
            ## 
            ## Gets the description property value. The description for the management template. Optional. Read-only.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description for the management template. Optional. Read-only.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name for the management template. Required. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the management template. Required. Read-only.
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
                    "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenantsManagementCategory) },
                    "createdByUserId" => lambda {|n| @created_by_user_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "informationLinks" => lambda {|n| @information_links = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ActionUrl.create_from_discriminator_value(pn) }) },
                    "lastActionByUserId" => lambda {|n| @last_action_by_user_id = n.get_string_value() },
                    "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                    "managementTemplateCollections" => lambda {|n| @management_template_collections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementTemplateCollection.create_from_discriminator_value(pn) }) },
                    "managementTemplateSteps" => lambda {|n| @management_template_steps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementTemplateStep.create_from_discriminator_value(pn) }) },
                    "parameters" => lambda {|n| @parameters = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsTemplateParameter.create_from_discriminator_value(pn) }) },
                    "priority" => lambda {|n| @priority = n.get_number_value() },
                    "provider" => lambda {|n| @provider = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenantsManagementProvider) },
                    "userImpact" => lambda {|n| @user_impact = n.get_string_value() },
                    "version" => lambda {|n| @version = n.get_number_value() },
                    "workloadActions" => lambda {|n| @workload_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsWorkloadAction.create_from_discriminator_value(pn) }) },
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
            ## Gets the managementTemplateCollections property value. The managementTemplateCollections property
            ## @return a managed_tenants_management_template_collection
            ## 
            def management_template_collections
                return @management_template_collections
            end
            ## 
            ## Sets the managementTemplateCollections property value. The managementTemplateCollections property
            ## @param value Value to set for the managementTemplateCollections property.
            ## @return a void
            ## 
            def management_template_collections=(value)
                @management_template_collections = value
            end
            ## 
            ## Gets the managementTemplateSteps property value. The managementTemplateSteps property
            ## @return a managed_tenants_management_template_step
            ## 
            def management_template_steps
                return @management_template_steps
            end
            ## 
            ## Sets the managementTemplateSteps property value. The managementTemplateSteps property
            ## @param value Value to set for the managementTemplateSteps property.
            ## @return a void
            ## 
            def management_template_steps=(value)
                @management_template_steps = value
            end
            ## 
            ## Gets the parameters property value. The collection of parameters used by the management template. Optional. Read-only.
            ## @return a managed_tenants_template_parameter
            ## 
            def parameters
                return @parameters
            end
            ## 
            ## Sets the parameters property value. The collection of parameters used by the management template. Optional. Read-only.
            ## @param value Value to set for the parameters property.
            ## @return a void
            ## 
            def parameters=(value)
                @parameters = value
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
            ## Gets the provider property value. The provider property
            ## @return a managed_tenants_management_provider
            ## 
            def provider
                return @provider
            end
            ## 
            ## Sets the provider property value. The provider property
            ## @param value Value to set for the provider property.
            ## @return a void
            ## 
            def provider=(value)
                @provider = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("category", @category)
                writer.write_string_value("createdByUserId", @created_by_user_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("informationLinks", @information_links)
                writer.write_string_value("lastActionByUserId", @last_action_by_user_id)
                writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
                writer.write_collection_of_object_values("managementTemplateCollections", @management_template_collections)
                writer.write_collection_of_object_values("managementTemplateSteps", @management_template_steps)
                writer.write_collection_of_object_values("parameters", @parameters)
                writer.write_number_value("priority", @priority)
                writer.write_enum_value("provider", @provider)
                writer.write_string_value("userImpact", @user_impact)
                writer.write_number_value("version", @version)
                writer.write_collection_of_object_values("workloadActions", @workload_actions)
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
            ## Gets the version property value. The version property
            ## @return a integer
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version property
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
            ## 
            ## Gets the workloadActions property value. The collection of workload actions associated with the management template. Optional. Read-only.
            ## @return a managed_tenants_workload_action
            ## 
            def workload_actions
                return @workload_actions
            end
            ## 
            ## Sets the workloadActions property value. The collection of workload actions associated with the management template. Optional. Read-only.
            ## @param value Value to set for the workloadActions property.
            ## @return a void
            ## 
            def workload_actions=(value)
                @workload_actions = value
            end
        end
    end
end
