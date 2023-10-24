require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AwsActionsPermissionsDefinitionAction < MicrosoftGraphBeta::Models::AwsPermissionsDefinitionAction
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The assignToRoleId property
            @assign_to_role_id
            ## 
            # The statements property
            @statements
            ## 
            ## Gets the assignToRoleId property value. The assignToRoleId property
            ## @return a string
            ## 
            def assign_to_role_id
                return @assign_to_role_id
            end
            ## 
            ## Sets the assignToRoleId property value. The assignToRoleId property
            ## @param value Value to set for the assignToRoleId property.
            ## @return a void
            ## 
            def assign_to_role_id=(value)
                @assign_to_role_id = value
            end
            ## 
            ## Instantiates a new awsActionsPermissionsDefinitionAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.awsActionsPermissionsDefinitionAction"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aws_actions_permissions_definition_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AwsActionsPermissionsDefinitionAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignToRoleId" => lambda {|n| @assign_to_role_id = n.get_string_value() },
                    "statements" => lambda {|n| @statements = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AwsStatement.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("assignToRoleId", @assign_to_role_id)
                writer.write_collection_of_object_values("statements", @statements)
            end
            ## 
            ## Gets the statements property value. The statements property
            ## @return a aws_statement
            ## 
            def statements
                return @statements
            end
            ## 
            ## Sets the statements property value. The statements property
            ## @param value Value to set for the statements property.
            ## @return a void
            ## 
            def statements=(value)
                @statements = value
            end
        end
    end
end
