require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The set of Role Definitions and Role Assignments assigned to a user.
    class DeviceAndAppManagementAssignedRoleDetails
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Role Assignment IDs for the specifc Role Assignments assigned to a user. This property is read-only.
        @role_assignment_ids
        ## 
        # Role Definition IDs for the specifc Role Definitions assigned to a user. This property is read-only.
        @role_definition_ids
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
        ## Instantiates a new deviceAndAppManagementAssignedRoleDetails and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_and_app_management_assigned_role_details
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceAndAppManagementAssignedRoleDetails.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "roleAssignmentIds" => lambda {|n| @role_assignment_ids = n.get_collection_of_primitive_values(String) },
                "roleDefinitionIds" => lambda {|n| @role_definition_ids = n.get_collection_of_primitive_values(String) },
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
        ## Gets the roleAssignmentIds property value. Role Assignment IDs for the specifc Role Assignments assigned to a user. This property is read-only.
        ## @return a string
        ## 
        def role_assignment_ids
            return @role_assignment_ids
        end
        ## 
        ## Sets the roleAssignmentIds property value. Role Assignment IDs for the specifc Role Assignments assigned to a user. This property is read-only.
        ## @param value Value to set for the roleAssignmentIds property.
        ## @return a void
        ## 
        def role_assignment_ids=(value)
            @role_assignment_ids = value
        end
        ## 
        ## Gets the roleDefinitionIds property value. Role Definition IDs for the specifc Role Definitions assigned to a user. This property is read-only.
        ## @return a string
        ## 
        def role_definition_ids
            return @role_definition_ids
        end
        ## 
        ## Sets the roleDefinitionIds property value. Role Definition IDs for the specifc Role Definitions assigned to a user. This property is read-only.
        ## @param value Value to set for the roleDefinitionIds property.
        ## @return a void
        ## 
        def role_definition_ids=(value)
            @role_definition_ids = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
