require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './industry_data'

module MicrosoftGraphBeta
    module Models
        module IndustryData
            class UserMatchingSetting
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The RefUserMatchTarget for matching a user from the source with an Azure Active Directory user object.
                @match_target
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The priority order to apply when a user has multiple RefRole codes assigned.
                @priority_order
                ## 
                # The roleGroup property
                @role_group
                ## 
                # The sourceIdentifier property
                @source_identifier
                ## 
                ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the additionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new userMatchingSetting and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a user_matching_setting
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UserMatchingSetting.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "matchTarget" => lambda {|n| @match_target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::UserMatchTargetReferenceValue.create_from_discriminator_value(pn) }) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "priorityOrder" => lambda {|n| @priority_order = n.get_number_value() },
                        "roleGroup" => lambda {|n| @role_group = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::RoleGroup.create_from_discriminator_value(pn) }) },
                        "sourceIdentifier" => lambda {|n| @source_identifier = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::IdentifierTypeReferenceValue.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the matchTarget property value. The RefUserMatchTarget for matching a user from the source with an Azure Active Directory user object.
                ## @return a user_match_target_reference_value
                ## 
                def match_target
                    return @match_target
                end
                ## 
                ## Sets the matchTarget property value. The RefUserMatchTarget for matching a user from the source with an Azure Active Directory user object.
                ## @param value Value to set for the matchTarget property.
                ## @return a void
                ## 
                def match_target=(value)
                    @match_target = value
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
                ## Gets the priorityOrder property value. The priority order to apply when a user has multiple RefRole codes assigned.
                ## @return a integer
                ## 
                def priority_order
                    return @priority_order
                end
                ## 
                ## Sets the priorityOrder property value. The priority order to apply when a user has multiple RefRole codes assigned.
                ## @param value Value to set for the priorityOrder property.
                ## @return a void
                ## 
                def priority_order=(value)
                    @priority_order = value
                end
                ## 
                ## Gets the roleGroup property value. The roleGroup property
                ## @return a role_group
                ## 
                def role_group
                    return @role_group
                end
                ## 
                ## Sets the roleGroup property value. The roleGroup property
                ## @param value Value to set for the roleGroup property.
                ## @return a void
                ## 
                def role_group=(value)
                    @role_group = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("matchTarget", @match_target)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_number_value("priorityOrder", @priority_order)
                    writer.write_object_value("roleGroup", @role_group)
                    writer.write_object_value("sourceIdentifier", @source_identifier)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the sourceIdentifier property value. The sourceIdentifier property
                ## @return a identifier_type_reference_value
                ## 
                def source_identifier
                    return @source_identifier
                end
                ## 
                ## Sets the sourceIdentifier property value. The sourceIdentifier property
                ## @param value Value to set for the sourceIdentifier property.
                ## @return a void
                ## 
                def source_identifier=(value)
                    @source_identifier = value
                end
            end
        end
    end
end
