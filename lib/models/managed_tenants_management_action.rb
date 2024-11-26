require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsManagementAction < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The category property
            @category
            ## 
            # The description for the management action. Optional. Read-only.
            @description
            ## 
            # The display name for the management action. Optional. Read-only.
            @display_name
            ## 
            # The reference for the management template used to generate the management action. Required. Read-only.
            @reference_template_id
            ## 
            # The referenceTemplateVersion property
            @reference_template_version
            ## 
            # The collection of workload actions associated with the management action. Required. Read-only.
            @workload_actions
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
            ## Instantiates a new ManagedTenantsManagementAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_management_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsManagementAction.new
            end
            ## 
            ## Gets the description property value. The description for the management action. Optional. Read-only.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description for the management action. Optional. Read-only.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name for the management action. Optional. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the management action. Optional. Read-only.
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
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "referenceTemplateId" => lambda {|n| @reference_template_id = n.get_string_value() },
                    "referenceTemplateVersion" => lambda {|n| @reference_template_version = n.get_number_value() },
                    "workloadActions" => lambda {|n| @workload_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsWorkloadAction.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the referenceTemplateId property value. The reference for the management template used to generate the management action. Required. Read-only.
            ## @return a string
            ## 
            def reference_template_id
                return @reference_template_id
            end
            ## 
            ## Sets the referenceTemplateId property value. The reference for the management template used to generate the management action. Required. Read-only.
            ## @param value Value to set for the referenceTemplateId property.
            ## @return a void
            ## 
            def reference_template_id=(value)
                @reference_template_id = value
            end
            ## 
            ## Gets the referenceTemplateVersion property value. The referenceTemplateVersion property
            ## @return a integer
            ## 
            def reference_template_version
                return @reference_template_version
            end
            ## 
            ## Sets the referenceTemplateVersion property value. The referenceTemplateVersion property
            ## @param value Value to set for the referenceTemplateVersion property.
            ## @return a void
            ## 
            def reference_template_version=(value)
                @reference_template_version = value
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
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("referenceTemplateId", @reference_template_id)
                writer.write_number_value("referenceTemplateVersion", @reference_template_version)
                writer.write_collection_of_object_values("workloadActions", @workload_actions)
            end
            ## 
            ## Gets the workloadActions property value. The collection of workload actions associated with the management action. Required. Read-only.
            ## @return a managed_tenants_workload_action
            ## 
            def workload_actions
                return @workload_actions
            end
            ## 
            ## Sets the workloadActions property value. The collection of workload actions associated with the management action. Required. Read-only.
            ## @param value Value to set for the workloadActions property.
            ## @return a void
            ## 
            def workload_actions=(value)
                @workload_actions = value
            end
        end
    end
end
