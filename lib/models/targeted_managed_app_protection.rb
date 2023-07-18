require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Policy used to configure detailed management settings targeted to specific security groups
        class TargetedManagedAppProtection < MicrosoftGraphBeta::Models::ManagedAppProtection
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates a collection of apps to target which can be one of several pre-defined lists of apps or a manually selected list of apps
            @app_group_type
            ## 
            # Navigation property to list of inclusion and exclusion groups to which the policy is deployed.
            @assignments
            ## 
            # Indicates if the policy is deployed to any inclusion groups or not.
            @is_assigned
            ## 
            # Management levels for apps
            @targeted_app_management_levels
            ## 
            ## Gets the appGroupType property value. Indicates a collection of apps to target which can be one of several pre-defined lists of apps or a manually selected list of apps
            ## @return a targeted_managed_app_group_type
            ## 
            def app_group_type
                return @app_group_type
            end
            ## 
            ## Sets the appGroupType property value. Indicates a collection of apps to target which can be one of several pre-defined lists of apps or a manually selected list of apps
            ## @param value Value to set for the app_group_type property.
            ## @return a void
            ## 
            def app_group_type=(value)
                @app_group_type = value
            end
            ## 
            ## Gets the assignments property value. Navigation property to list of inclusion and exclusion groups to which the policy is deployed.
            ## @return a targeted_managed_app_policy_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. Navigation property to list of inclusion and exclusion groups to which the policy is deployed.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new targetedManagedAppProtection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.targetedManagedAppProtection"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a targeted_managed_app_protection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.androidManagedAppProtection"
                            return AndroidManagedAppProtection.new
                        when "#microsoft.graph.iosManagedAppProtection"
                            return IosManagedAppProtection.new
                    end
                end
                return TargetedManagedAppProtection.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appGroupType" => lambda {|n| @app_group_type = n.get_enum_value(MicrosoftGraphBeta::Models::TargetedManagedAppGroupType) },
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TargetedManagedAppPolicyAssignment.create_from_discriminator_value(pn) }) },
                    "isAssigned" => lambda {|n| @is_assigned = n.get_boolean_value() },
                    "targetedAppManagementLevels" => lambda {|n| @targeted_app_management_levels = n.get_enum_value(MicrosoftGraphBeta::Models::AppManagementLevel) },
                })
            end
            ## 
            ## Gets the isAssigned property value. Indicates if the policy is deployed to any inclusion groups or not.
            ## @return a boolean
            ## 
            def is_assigned
                return @is_assigned
            end
            ## 
            ## Sets the isAssigned property value. Indicates if the policy is deployed to any inclusion groups or not.
            ## @param value Value to set for the is_assigned property.
            ## @return a void
            ## 
            def is_assigned=(value)
                @is_assigned = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("appGroupType", @app_group_type)
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_boolean_value("isAssigned", @is_assigned)
                writer.write_enum_value("targetedAppManagementLevels", @targeted_app_management_levels)
            end
            ## 
            ## Gets the targetedAppManagementLevels property value. Management levels for apps
            ## @return a app_management_level
            ## 
            def targeted_app_management_levels
                return @targeted_app_management_levels
            end
            ## 
            ## Sets the targetedAppManagementLevels property value. Management levels for apps
            ## @param value Value to set for the targeted_app_management_levels property.
            ## @return a void
            ## 
            def targeted_app_management_levels=(value)
                @targeted_app_management_levels = value
            end
        end
    end
end
