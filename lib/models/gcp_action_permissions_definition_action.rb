require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GcpActionPermissionsDefinitionAction < MicrosoftGraphBeta::Models::GcpPermissionsDefinitionAction
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of actions.
            @actions
            ## 
            ## Gets the actions property value. List of actions.
            ## @return a string
            ## 
            def actions
                return @actions
            end
            ## 
            ## Sets the actions property value. List of actions.
            ## @param value Value to set for the actions property.
            ## @return a void
            ## 
            def actions=(value)
                @actions = value
            end
            ## 
            ## Instantiates a new gcpActionPermissionsDefinitionAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.gcpActionPermissionsDefinitionAction"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a gcp_action_permissions_definition_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GcpActionPermissionsDefinitionAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actions" => lambda {|n| @actions = n.get_collection_of_primitive_values(String) },
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
                writer.write_collection_of_primitive_values("actions", @actions)
            end
        end
    end
end
