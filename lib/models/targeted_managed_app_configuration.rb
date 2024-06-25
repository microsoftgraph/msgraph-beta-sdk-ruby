require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Configuration used to deliver a set of custom settings as-is to all users in the targeted security group
        class TargetedManagedAppConfiguration < MicrosoftGraphBeta::Models::ManagedAppConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates a collection of apps to target which can be one of several pre-defined lists of apps or a manually selected list of apps
            @app_group_type
            ## 
            # List of apps to which the policy is deployed.
            @apps
            ## 
            # Navigation property to list of inclusion and exclusion groups to which the policy is deployed.
            @assignments
            ## 
            # Count of apps to which the current policy is deployed.
            @deployed_app_count
            ## 
            # Navigation property to deployment summary of the configuration.
            @deployment_summary
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
            ## @param value Value to set for the appGroupType property.
            ## @return a void
            ## 
            def app_group_type=(value)
                @app_group_type = value
            end
            ## 
            ## Gets the apps property value. List of apps to which the policy is deployed.
            ## @return a managed_mobile_app
            ## 
            def apps
                return @apps
            end
            ## 
            ## Sets the apps property value. List of apps to which the policy is deployed.
            ## @param value Value to set for the apps property.
            ## @return a void
            ## 
            def apps=(value)
                @apps = value
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
            ## Instantiates a new TargetedManagedAppConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.targetedManagedAppConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a targeted_managed_app_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TargetedManagedAppConfiguration.new
            end
            ## 
            ## Gets the deployedAppCount property value. Count of apps to which the current policy is deployed.
            ## @return a integer
            ## 
            def deployed_app_count
                return @deployed_app_count
            end
            ## 
            ## Sets the deployedAppCount property value. Count of apps to which the current policy is deployed.
            ## @param value Value to set for the deployedAppCount property.
            ## @return a void
            ## 
            def deployed_app_count=(value)
                @deployed_app_count = value
            end
            ## 
            ## Gets the deploymentSummary property value. Navigation property to deployment summary of the configuration.
            ## @return a managed_app_policy_deployment_summary
            ## 
            def deployment_summary
                return @deployment_summary
            end
            ## 
            ## Sets the deploymentSummary property value. Navigation property to deployment summary of the configuration.
            ## @param value Value to set for the deploymentSummary property.
            ## @return a void
            ## 
            def deployment_summary=(value)
                @deployment_summary = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appGroupType" => lambda {|n| @app_group_type = n.get_enum_value(MicrosoftGraphBeta::Models::TargetedManagedAppGroupType) },
                    "apps" => lambda {|n| @apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedMobileApp.create_from_discriminator_value(pn) }) },
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TargetedManagedAppPolicyAssignment.create_from_discriminator_value(pn) }) },
                    "deployedAppCount" => lambda {|n| @deployed_app_count = n.get_number_value() },
                    "deploymentSummary" => lambda {|n| @deployment_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedAppPolicyDeploymentSummary.create_from_discriminator_value(pn) }) },
                    "isAssigned" => lambda {|n| @is_assigned = n.get_boolean_value() },
                    "targetedAppManagementLevels" => lambda {|n| @targeted_app_management_levels = n.get_enum_values(MicrosoftGraphBeta::Models::AppManagementLevel) },
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
            ## @param value Value to set for the isAssigned property.
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
                writer.write_collection_of_object_values("apps", @apps)
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_number_value("deployedAppCount", @deployed_app_count)
                writer.write_object_value("deploymentSummary", @deployment_summary)
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
            ## @param value Value to set for the targetedAppManagementLevels property.
            ## @return a void
            ## 
            def targeted_app_management_levels=(value)
                @targeted_app_management_levels = value
            end
        end
    end
end
