require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SharePointSharingAbilities
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The anyone link abilities.
            @anyone_link_abilities
            ## 
            # The direct sharing abilities.
            @direct_sharing_abilities
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The organization link abilities.
            @organization_link_abilities
            ## 
            # The specificPeople link abilities.
            @specific_people_link_abilities
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the anyoneLinkAbilities property value. The anyone link abilities.
            ## @return a link_scope_abilities
            ## 
            def anyone_link_abilities
                return @anyone_link_abilities
            end
            ## 
            ## Sets the anyoneLinkAbilities property value. The anyone link abilities.
            ## @param value Value to set for the anyoneLinkAbilities property.
            ## @return a void
            ## 
            def anyone_link_abilities=(value)
                @anyone_link_abilities = value
            end
            ## 
            ## Instantiates a new SharePointSharingAbilities and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a share_point_sharing_abilities
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharePointSharingAbilities.new
            end
            ## 
            ## Gets the directSharingAbilities property value. The direct sharing abilities.
            ## @return a direct_sharing_abilities
            ## 
            def direct_sharing_abilities
                return @direct_sharing_abilities
            end
            ## 
            ## Sets the directSharingAbilities property value. The direct sharing abilities.
            ## @param value Value to set for the directSharingAbilities property.
            ## @return a void
            ## 
            def direct_sharing_abilities=(value)
                @direct_sharing_abilities = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "anyoneLinkAbilities" => lambda {|n| @anyone_link_abilities = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LinkScopeAbilities.create_from_discriminator_value(pn) }) },
                    "directSharingAbilities" => lambda {|n| @direct_sharing_abilities = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DirectSharingAbilities.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "organizationLinkAbilities" => lambda {|n| @organization_link_abilities = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LinkScopeAbilities.create_from_discriminator_value(pn) }) },
                    "specificPeopleLinkAbilities" => lambda {|n| @specific_people_link_abilities = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LinkScopeAbilities.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the organizationLinkAbilities property value. The organization link abilities.
            ## @return a link_scope_abilities
            ## 
            def organization_link_abilities
                return @organization_link_abilities
            end
            ## 
            ## Sets the organizationLinkAbilities property value. The organization link abilities.
            ## @param value Value to set for the organizationLinkAbilities property.
            ## @return a void
            ## 
            def organization_link_abilities=(value)
                @organization_link_abilities = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("anyoneLinkAbilities", @anyone_link_abilities)
                writer.write_object_value("directSharingAbilities", @direct_sharing_abilities)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("organizationLinkAbilities", @organization_link_abilities)
                writer.write_object_value("specificPeopleLinkAbilities", @specific_people_link_abilities)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the specificPeopleLinkAbilities property value. The specificPeople link abilities.
            ## @return a link_scope_abilities
            ## 
            def specific_people_link_abilities
                return @specific_people_link_abilities
            end
            ## 
            ## Sets the specificPeopleLinkAbilities property value. The specificPeople link abilities.
            ## @param value Value to set for the specificPeopleLinkAbilities property.
            ## @return a void
            ## 
            def specific_people_link_abilities=(value)
                @specific_people_link_abilities = value
            end
        end
    end
end
