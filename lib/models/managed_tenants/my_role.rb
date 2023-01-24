require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta::Models::ManagedTenants
    class MyRole
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # A collection of role assignments for the managed tenant.
        @assignments
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The Azure Active Directory tenant identifier for the managed tenant. Optional. Read-only.
        @tenant_id
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the assignments property value. A collection of role assignments for the managed tenant.
        ## @return a role_assignment
        ## 
        def assignments
            return @assignments
        end
        ## 
        ## Sets the assignments property value. A collection of role assignments for the managed tenant.
        ## @param value Value to set for the assignments property.
        ## @return a void
        ## 
        def assignments=(value)
            @assignments = value
        end
        ## 
        ## Instantiates a new myRole and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a my_role
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MyRole.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::RoleAssignment.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_object_values("assignments", @assignments)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("tenantId", @tenant_id)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the tenantId property value. The Azure Active Directory tenant identifier for the managed tenant. Optional. Read-only.
        ## @return a string
        ## 
        def tenant_id
            return @tenant_id
        end
        ## 
        ## Sets the tenantId property value. The Azure Active Directory tenant identifier for the managed tenant. Optional. Read-only.
        ## @param value Value to set for the tenantId property.
        ## @return a void
        ## 
        def tenant_id=(value)
            @tenant_id = value
        end
    end
end
