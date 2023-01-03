require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class RoleMembershipGovernanceCriteria < MicrosoftGraphBeta::Models::GovernanceCriteria
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The roleId property
        @role_id
        ## 
        # The roleTemplateId property
        @role_template_id
        ## 
        ## Instantiates a new RoleMembershipGovernanceCriteria and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.roleMembershipGovernanceCriteria"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a role_membership_governance_criteria
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return RoleMembershipGovernanceCriteria.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "roleId" => lambda {|n| @role_id = n.get_string_value() },
                "roleTemplateId" => lambda {|n| @role_template_id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the roleId property value. The roleId property
        ## @return a string
        ## 
        def role_id
            return @role_id
        end
        ## 
        ## Sets the roleId property value. The roleId property
        ## @param value Value to set for the roleId property.
        ## @return a void
        ## 
        def role_id=(value)
            @role_id = value
        end
        ## 
        ## Gets the roleTemplateId property value. The roleTemplateId property
        ## @return a string
        ## 
        def role_template_id
            return @role_template_id
        end
        ## 
        ## Sets the roleTemplateId property value. The roleTemplateId property
        ## @param value Value to set for the roleTemplateId property.
        ## @return a void
        ## 
        def role_template_id=(value)
            @role_template_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("roleId", @role_id)
            writer.write_string_value("roleTemplateId", @role_template_id)
        end
    end
end
