require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MultiTenantOrganizationJoinRequestRecord < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The addedByTenantId property
            @added_by_tenant_id
            ## 
            # The memberState property
            @member_state
            ## 
            # The role property
            @role
            ## 
            # The transitionDetails property
            @transition_details
            ## 
            ## Gets the addedByTenantId property value. The addedByTenantId property
            ## @return a string
            ## 
            def added_by_tenant_id
                return @added_by_tenant_id
            end
            ## 
            ## Sets the addedByTenantId property value. The addedByTenantId property
            ## @param value Value to set for the addedByTenantId property.
            ## @return a void
            ## 
            def added_by_tenant_id=(value)
                @added_by_tenant_id = value
            end
            ## 
            ## Instantiates a new multiTenantOrganizationJoinRequestRecord and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a multi_tenant_organization_join_request_record
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MultiTenantOrganizationJoinRequestRecord.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "addedByTenantId" => lambda {|n| @added_by_tenant_id = n.get_string_value() },
                    "memberState" => lambda {|n| @member_state = n.get_enum_value(MicrosoftGraphBeta::Models::MultiTenantOrganizationMemberState) },
                    "role" => lambda {|n| @role = n.get_enum_value(MicrosoftGraphBeta::Models::MultiTenantOrganizationMemberRole) },
                    "transitionDetails" => lambda {|n| @transition_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MultiTenantOrganizationJoinRequestTransitionDetails.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the memberState property value. The memberState property
            ## @return a multi_tenant_organization_member_state
            ## 
            def member_state
                return @member_state
            end
            ## 
            ## Sets the memberState property value. The memberState property
            ## @param value Value to set for the memberState property.
            ## @return a void
            ## 
            def member_state=(value)
                @member_state = value
            end
            ## 
            ## Gets the role property value. The role property
            ## @return a multi_tenant_organization_member_role
            ## 
            def role
                return @role
            end
            ## 
            ## Sets the role property value. The role property
            ## @param value Value to set for the role property.
            ## @return a void
            ## 
            def role=(value)
                @role = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("addedByTenantId", @added_by_tenant_id)
                writer.write_enum_value("memberState", @member_state)
                writer.write_enum_value("role", @role)
                writer.write_object_value("transitionDetails", @transition_details)
            end
            ## 
            ## Gets the transitionDetails property value. The transitionDetails property
            ## @return a multi_tenant_organization_join_request_transition_details
            ## 
            def transition_details
                return @transition_details
            end
            ## 
            ## Sets the transitionDetails property value. The transitionDetails property
            ## @param value Value to set for the transitionDetails property.
            ## @return a void
            ## 
            def transition_details=(value)
                @transition_details = value
            end
        end
    end
end
