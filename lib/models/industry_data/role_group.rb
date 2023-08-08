require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './industry_data'

module MicrosoftGraphBeta
    module Models
        module IndustryData
            class RoleGroup < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The name of the role group.
                @display_name
                ## 
                # The set of roles included in the role group.
                @roles
                ## 
                ## Instantiates a new roleGroup and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a role_group
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return RoleGroup.new
                end
                ## 
                ## Gets the displayName property value. The name of the role group.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The name of the role group.
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
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "roles" => lambda {|n| @roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::RoleReferenceValue.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the roles property value. The set of roles included in the role group.
                ## @return a role_reference_value
                ## 
                def roles
                    return @roles
                end
                ## 
                ## Sets the roles property value. The set of roles included in the role group.
                ## @param value Value to set for the roles property.
                ## @return a void
                ## 
                def roles=(value)
                    @roles = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("displayName", @display_name)
                    writer.write_collection_of_object_values("roles", @roles)
                end
            end
        end
    end
end
