require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedAppProtectionPolicySetItem < MicrosoftGraphBeta::Models::PolicySetItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # TargetedAppManagementLevels of the ManagedAppPolicySetItem.
            @targeted_app_management_levels
            ## 
            ## Instantiates a new ManagedAppProtectionPolicySetItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.managedAppProtectionPolicySetItem"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a managed_app_protection_policy_set_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedAppProtectionPolicySetItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "targetedAppManagementLevels" => lambda {|n| @targeted_app_management_levels = n.get_string_value() },
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
                writer.write_string_value("targetedAppManagementLevels", @targeted_app_management_levels)
            end
            ## 
            ## Gets the targetedAppManagementLevels property value. TargetedAppManagementLevels of the ManagedAppPolicySetItem.
            ## @return a string
            ## 
            def targeted_app_management_levels
                return @targeted_app_management_levels
            end
            ## 
            ## Sets the targetedAppManagementLevels property value. TargetedAppManagementLevels of the ManagedAppPolicySetItem.
            ## @param value Value to set for the targeted_app_management_levels property.
            ## @return a void
            ## 
            def targeted_app_management_levels=(value)
                @targeted_app_management_levels = value
            end
        end
    end
end
