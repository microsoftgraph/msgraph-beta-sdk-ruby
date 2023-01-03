require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ConnectedOrganizationMembers < MicrosoftGraphBeta::Models::UserSet
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The name of the connected organization. Read only.
        @description
        ## 
        # The ID of the connected organization in entitlement management.
        @id
        ## 
        ## Instantiates a new ConnectedOrganizationMembers and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.connectedOrganizationMembers"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a connected_organization_members
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ConnectedOrganizationMembers.new
        end
        ## 
        ## Gets the description property value. The name of the connected organization. Read only.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The name of the connected organization. Read only.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "description" => lambda {|n| @description = n.get_string_value() },
                "id" => lambda {|n| @id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the id property value. The ID of the connected organization in entitlement management.
        ## @return a string
        ## 
        def id
            return @id
        end
        ## 
        ## Sets the id property value. The ID of the connected organization in entitlement management.
        ## @param value Value to set for the id property.
        ## @return a void
        ## 
        def id=(value)
            @id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("description", @description)
            writer.write_string_value("id", @id)
        end
    end
end
