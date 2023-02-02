require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class UpdatePolicy < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The audience property
        @audience
        ## 
        # The complianceChangeRules property
        @compliance_change_rules
        ## 
        # The complianceChanges property
        @compliance_changes
        ## 
        # The createdDateTime property
        @created_date_time
        ## 
        # The deploymentSettings property
        @deployment_settings
        ## 
        ## Gets the audience property value. The audience property
        ## @return a deployment_audience
        ## 
        def audience
            return @audience
        end
        ## 
        ## Sets the audience property value. The audience property
        ## @param value Value to set for the audience property.
        ## @return a void
        ## 
        def audience=(value)
            @audience = value
        end
        ## 
        ## Gets the complianceChangeRules property value. The complianceChangeRules property
        ## @return a compliance_change_rule
        ## 
        def compliance_change_rules
            return @compliance_change_rules
        end
        ## 
        ## Sets the complianceChangeRules property value. The complianceChangeRules property
        ## @param value Value to set for the compliance_change_rules property.
        ## @return a void
        ## 
        def compliance_change_rules=(value)
            @compliance_change_rules = value
        end
        ## 
        ## Gets the complianceChanges property value. The complianceChanges property
        ## @return a compliance_change
        ## 
        def compliance_changes
            return @compliance_changes
        end
        ## 
        ## Sets the complianceChanges property value. The complianceChanges property
        ## @param value Value to set for the compliance_changes property.
        ## @return a void
        ## 
        def compliance_changes=(value)
            @compliance_changes = value
        end
        ## 
        ## Instantiates a new updatePolicy and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
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
        ## @return a update_policy
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UpdatePolicy.new
        end
        ## 
        ## Gets the deploymentSettings property value. The deploymentSettings property
        ## @return a deployment_settings
        ## 
        def deployment_settings
            return @deployment_settings
        end
        ## 
        ## Sets the deploymentSettings property value. The deploymentSettings property
        ## @param value Value to set for the deployment_settings property.
        ## @return a void
        ## 
        def deployment_settings=(value)
            @deployment_settings = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "audience" => lambda {|n| @audience = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::DeploymentAudience.create_from_discriminator_value(pn) }) },
                "complianceChangeRules" => lambda {|n| @compliance_change_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::ComplianceChangeRule.create_from_discriminator_value(pn) }) },
                "complianceChanges" => lambda {|n| @compliance_changes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::ComplianceChange.create_from_discriminator_value(pn) }) },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "deploymentSettings" => lambda {|n| @deployment_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::DeploymentSettings.create_from_discriminator_value(pn) }) },
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
            writer.write_object_value("audience", @audience)
            writer.write_collection_of_object_values("complianceChangeRules", @compliance_change_rules)
            writer.write_collection_of_object_values("complianceChanges", @compliance_changes)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_object_value("deploymentSettings", @deployment_settings)
        end
    end
end
