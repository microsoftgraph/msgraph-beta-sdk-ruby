require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PermissionsCreepIndexDistribution < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The authorizationSystem property
            @authorization_system
            ## 
            # Defines when the PCI distribution was created.
            @created_date_time
            ## 
            # The highRiskProfile property
            @high_risk_profile
            ## 
            # The lowRiskProfile property
            @low_risk_profile
            ## 
            # The mediumRiskProfile property
            @medium_risk_profile
            ## 
            ## Gets the authorizationSystem property value. The authorizationSystem property
            ## @return a authorization_system
            ## 
            def authorization_system
                return @authorization_system
            end
            ## 
            ## Sets the authorizationSystem property value. The authorizationSystem property
            ## @param value Value to set for the authorizationSystem property.
            ## @return a void
            ## 
            def authorization_system=(value)
                @authorization_system = value
            end
            ## 
            ## Instantiates a new permissionsCreepIndexDistribution and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Defines when the PCI distribution was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Defines when the PCI distribution was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a permissions_creep_index_distribution
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PermissionsCreepIndexDistribution.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authorizationSystem" => lambda {|n| @authorization_system = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystem.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "highRiskProfile" => lambda {|n| @high_risk_profile = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RiskProfile.create_from_discriminator_value(pn) }) },
                    "lowRiskProfile" => lambda {|n| @low_risk_profile = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RiskProfile.create_from_discriminator_value(pn) }) },
                    "mediumRiskProfile" => lambda {|n| @medium_risk_profile = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RiskProfile.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the highRiskProfile property value. The highRiskProfile property
            ## @return a risk_profile
            ## 
            def high_risk_profile
                return @high_risk_profile
            end
            ## 
            ## Sets the highRiskProfile property value. The highRiskProfile property
            ## @param value Value to set for the highRiskProfile property.
            ## @return a void
            ## 
            def high_risk_profile=(value)
                @high_risk_profile = value
            end
            ## 
            ## Gets the lowRiskProfile property value. The lowRiskProfile property
            ## @return a risk_profile
            ## 
            def low_risk_profile
                return @low_risk_profile
            end
            ## 
            ## Sets the lowRiskProfile property value. The lowRiskProfile property
            ## @param value Value to set for the lowRiskProfile property.
            ## @return a void
            ## 
            def low_risk_profile=(value)
                @low_risk_profile = value
            end
            ## 
            ## Gets the mediumRiskProfile property value. The mediumRiskProfile property
            ## @return a risk_profile
            ## 
            def medium_risk_profile
                return @medium_risk_profile
            end
            ## 
            ## Sets the mediumRiskProfile property value. The mediumRiskProfile property
            ## @param value Value to set for the mediumRiskProfile property.
            ## @return a void
            ## 
            def medium_risk_profile=(value)
                @medium_risk_profile = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("authorizationSystem", @authorization_system)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("highRiskProfile", @high_risk_profile)
                writer.write_object_value("lowRiskProfile", @low_risk_profile)
                writer.write_object_value("mediumRiskProfile", @medium_risk_profile)
            end
        end
    end
end
