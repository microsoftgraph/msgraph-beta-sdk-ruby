require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MobilityManagementPolicy < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the user scope of the mobility management policy. Possible values are: none, all, selected.
            @applies_to
            ## 
            # Compliance URL of the mobility management application.
            @compliance_url
            ## 
            # Description of the mobility management application.
            @description
            ## 
            # Discovery URL of the mobility management application.
            @discovery_url
            ## 
            # Display name of the mobility management application.
            @display_name
            ## 
            # Microsoft Entra groups under the scope of the mobility management application if appliesTo is selected
            @included_groups
            ## 
            # Whether policy is valid. Invalid policies may not be updated and should be deleted.
            @is_valid
            ## 
            # Terms of Use URL of the mobility management application.
            @terms_of_use_url
            ## 
            ## Gets the appliesTo property value. Indicates the user scope of the mobility management policy. Possible values are: none, all, selected.
            ## @return a policy_scope
            ## 
            def applies_to
                return @applies_to
            end
            ## 
            ## Sets the appliesTo property value. Indicates the user scope of the mobility management policy. Possible values are: none, all, selected.
            ## @param value Value to set for the appliesTo property.
            ## @return a void
            ## 
            def applies_to=(value)
                @applies_to = value
            end
            ## 
            ## Gets the complianceUrl property value. Compliance URL of the mobility management application.
            ## @return a string
            ## 
            def compliance_url
                return @compliance_url
            end
            ## 
            ## Sets the complianceUrl property value. Compliance URL of the mobility management application.
            ## @param value Value to set for the complianceUrl property.
            ## @return a void
            ## 
            def compliance_url=(value)
                @compliance_url = value
            end
            ## 
            ## Instantiates a new MobilityManagementPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mobility_management_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MobilityManagementPolicy.new
            end
            ## 
            ## Gets the description property value. Description of the mobility management application.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the mobility management application.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the discoveryUrl property value. Discovery URL of the mobility management application.
            ## @return a string
            ## 
            def discovery_url
                return @discovery_url
            end
            ## 
            ## Sets the discoveryUrl property value. Discovery URL of the mobility management application.
            ## @param value Value to set for the discoveryUrl property.
            ## @return a void
            ## 
            def discovery_url=(value)
                @discovery_url = value
            end
            ## 
            ## Gets the displayName property value. Display name of the mobility management application.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the mobility management application.
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
                    "appliesTo" => lambda {|n| @applies_to = n.get_enum_value(MicrosoftGraphBeta::Models::PolicyScope) },
                    "complianceUrl" => lambda {|n| @compliance_url = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "discoveryUrl" => lambda {|n| @discovery_url = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "includedGroups" => lambda {|n| @included_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Group.create_from_discriminator_value(pn) }) },
                    "isValid" => lambda {|n| @is_valid = n.get_boolean_value() },
                    "termsOfUseUrl" => lambda {|n| @terms_of_use_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the includedGroups property value. Microsoft Entra groups under the scope of the mobility management application if appliesTo is selected
            ## @return a group
            ## 
            def included_groups
                return @included_groups
            end
            ## 
            ## Sets the includedGroups property value. Microsoft Entra groups under the scope of the mobility management application if appliesTo is selected
            ## @param value Value to set for the includedGroups property.
            ## @return a void
            ## 
            def included_groups=(value)
                @included_groups = value
            end
            ## 
            ## Gets the isValid property value. Whether policy is valid. Invalid policies may not be updated and should be deleted.
            ## @return a boolean
            ## 
            def is_valid
                return @is_valid
            end
            ## 
            ## Sets the isValid property value. Whether policy is valid. Invalid policies may not be updated and should be deleted.
            ## @param value Value to set for the isValid property.
            ## @return a void
            ## 
            def is_valid=(value)
                @is_valid = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("appliesTo", @applies_to)
                writer.write_string_value("complianceUrl", @compliance_url)
                writer.write_string_value("description", @description)
                writer.write_string_value("discoveryUrl", @discovery_url)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("includedGroups", @included_groups)
                writer.write_boolean_value("isValid", @is_valid)
                writer.write_string_value("termsOfUseUrl", @terms_of_use_url)
            end
            ## 
            ## Gets the termsOfUseUrl property value. Terms of Use URL of the mobility management application.
            ## @return a string
            ## 
            def terms_of_use_url
                return @terms_of_use_url
            end
            ## 
            ## Sets the termsOfUseUrl property value. Terms of Use URL of the mobility management application.
            ## @param value Value to set for the termsOfUseUrl property.
            ## @return a void
            ## 
            def terms_of_use_url=(value)
                @terms_of_use_url = value
            end
        end
    end
end
