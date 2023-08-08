require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MultiTenantOrganization < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The description property
            @description
            ## 
            # The displayName property
            @display_name
            ## 
            # The joinRequest property
            @join_request
            ## 
            # The state property
            @state
            ## 
            # The tenants property
            @tenants
            ## 
            ## Instantiates a new multiTenantOrganization and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a multi_tenant_organization
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MultiTenantOrganization.new
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
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
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "joinRequest" => lambda {|n| @join_request = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MultiTenantOrganizationJoinRequestRecord.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::MultiTenantOrganizationState) },
                    "tenants" => lambda {|n| @tenants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MultiTenantOrganizationMember.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the joinRequest property value. The joinRequest property
            ## @return a multi_tenant_organization_join_request_record
            ## 
            def join_request
                return @join_request
            end
            ## 
            ## Sets the joinRequest property value. The joinRequest property
            ## @param value Value to set for the joinRequest property.
            ## @return a void
            ## 
            def join_request=(value)
                @join_request = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("joinRequest", @join_request)
                writer.write_enum_value("state", @state)
                writer.write_collection_of_object_values("tenants", @tenants)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a multi_tenant_organization_state
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
            ## Gets the tenants property value. The tenants property
            ## @return a multi_tenant_organization_member
            ## 
            def tenants
                return @tenants
            end
            ## 
            ## Sets the tenants property value. The tenants property
            ## @param value Value to set for the tenants property.
            ## @return a void
            ## 
            def tenants=(value)
                @tenants = value
            end
        end
    end
end
