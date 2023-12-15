require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MultiTenantOrganizationMember < MicrosoftGraphBeta::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The addedByTenantId property
            @added_by_tenant_id
            ## 
            # The addedDateTime property
            @added_date_time
            ## 
            # The displayName property
            @display_name
            ## 
            # The joinedDateTime property
            @joined_date_time
            ## 
            # The role property
            @role
            ## 
            # The state property
            @state
            ## 
            # The tenantId property
            @tenant_id
            ## 
            # The transitionDetails property
            @transition_details
            ## 
            ## Gets the addedByTenantId property value. The addedByTenantId property
            ## @return a guid
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
            ## Gets the addedDateTime property value. The addedDateTime property
            ## @return a date_time
            ## 
            def added_date_time
                return @added_date_time
            end
            ## 
            ## Sets the addedDateTime property value. The addedDateTime property
            ## @param value Value to set for the addedDateTime property.
            ## @return a void
            ## 
            def added_date_time=(value)
                @added_date_time = value
            end
            ## 
            ## Instantiates a new multiTenantOrganizationMember and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.multiTenantOrganizationMember"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a multi_tenant_organization_member
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MultiTenantOrganizationMember.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
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
                    "addedByTenantId" => lambda {|n| @added_by_tenant_id = n.get_guid_value() },
                    "addedDateTime" => lambda {|n| @added_date_time = n.get_date_time_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "joinedDateTime" => lambda {|n| @joined_date_time = n.get_date_time_value() },
                    "role" => lambda {|n| @role = n.get_enum_value(MicrosoftGraphBeta::Models::MultiTenantOrganizationMemberRole) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::MultiTenantOrganizationMemberState) },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "transitionDetails" => lambda {|n| @transition_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MultiTenantOrganizationMemberTransitionDetails.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the joinedDateTime property value. The joinedDateTime property
            ## @return a date_time
            ## 
            def joined_date_time
                return @joined_date_time
            end
            ## 
            ## Sets the joinedDateTime property value. The joinedDateTime property
            ## @param value Value to set for the joinedDateTime property.
            ## @return a void
            ## 
            def joined_date_time=(value)
                @joined_date_time = value
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
                writer.write_guid_value("addedByTenantId", @added_by_tenant_id)
                writer.write_date_time_value("addedDateTime", @added_date_time)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("joinedDateTime", @joined_date_time)
                writer.write_enum_value("role", @role)
                writer.write_enum_value("state", @state)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_object_value("transitionDetails", @transition_details)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a multi_tenant_organization_member_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the tenantId property value. The tenantId property
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The tenantId property
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the transitionDetails property value. The transitionDetails property
            ## @return a multi_tenant_organization_member_transition_details
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
