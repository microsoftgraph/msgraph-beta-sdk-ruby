require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PeopleAdminSettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The profileCardProperties property
            @profile_card_properties
            ## 
            # Represents administrator settings that manage the support of pronouns in an organization.
            @pronouns
            ## 
            ## Instantiates a new peopleAdminSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a people_admin_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PeopleAdminSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "profileCardProperties" => lambda {|n| @profile_card_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ProfileCardProperty.create_from_discriminator_value(pn) }) },
                    "pronouns" => lambda {|n| @pronouns = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PronounsSettings.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the profileCardProperties property value. The profileCardProperties property
            ## @return a profile_card_property
            ## 
            def profile_card_properties
                return @profile_card_properties
            end
            ## 
            ## Sets the profileCardProperties property value. The profileCardProperties property
            ## @param value Value to set for the profileCardProperties property.
            ## @return a void
            ## 
            def profile_card_properties=(value)
                @profile_card_properties = value
            end
            ## 
            ## Gets the pronouns property value. Represents administrator settings that manage the support of pronouns in an organization.
            ## @return a pronouns_settings
            ## 
            def pronouns
                return @pronouns
            end
            ## 
            ## Sets the pronouns property value. Represents administrator settings that manage the support of pronouns in an organization.
            ## @param value Value to set for the pronouns property.
            ## @return a void
            ## 
            def pronouns=(value)
                @pronouns = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("profileCardProperties", @profile_card_properties)
                writer.write_object_value("pronouns", @pronouns)
            end
        end
    end
end
