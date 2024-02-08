require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsRoleAssignment
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The type of the admin relationship(s) associated with the role assignment. Possible values are: none, delegatedAdminPrivileges, unknownFutureValue, granularDelegatedAdminPrivileges, delegatedAndGranularDelegetedAdminPrivileges. Note that you must use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: granularDelegatedAdminPrivileges , delegatedAndGranularDelegetedAdminPrivileges.
            @assignment_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The collection of roles assigned.
            @roles
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
            ## Gets the assignmentType property value. The type of the admin relationship(s) associated with the role assignment. Possible values are: none, delegatedAdminPrivileges, unknownFutureValue, granularDelegatedAdminPrivileges, delegatedAndGranularDelegetedAdminPrivileges. Note that you must use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: granularDelegatedAdminPrivileges , delegatedAndGranularDelegetedAdminPrivileges.
            ## @return a managed_tenants_delegated_privilege_status
            ## 
            def assignment_type
                return @assignment_type
            end
            ## 
            ## Sets the assignmentType property value. The type of the admin relationship(s) associated with the role assignment. Possible values are: none, delegatedAdminPrivileges, unknownFutureValue, granularDelegatedAdminPrivileges, delegatedAndGranularDelegetedAdminPrivileges. Note that you must use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: granularDelegatedAdminPrivileges , delegatedAndGranularDelegetedAdminPrivileges.
            ## @param value Value to set for the assignmentType property.
            ## @return a void
            ## 
            def assignment_type=(value)
                @assignment_type = value
            end
            ## 
            ## Instantiates a new ManagedTenantsRoleAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_role_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsRoleAssignment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "assignmentType" => lambda {|n| @assignment_type = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenantsDelegatedPrivilegeStatus) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "roles" => lambda {|n| @roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsRoleDefinition.create_from_discriminator_value(pn) }) },
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
            ## Gets the roles property value. The collection of roles assigned.
            ## @return a managed_tenants_role_definition
            ## 
            def roles
                return @roles
            end
            ## 
            ## Sets the roles property value. The collection of roles assigned.
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
                writer.write_enum_value("assignmentType", @assignment_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("roles", @roles)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
