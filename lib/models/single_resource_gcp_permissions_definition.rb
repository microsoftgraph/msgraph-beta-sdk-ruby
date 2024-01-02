require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SingleResourceGcpPermissionsDefinition < MicrosoftGraphBeta::Models::PermissionsDefinition
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The actionInfo property
            @action_info
            ## 
            # Identifier for the resource.
            @resource_id
            ## 
            ## Gets the actionInfo property value. The actionInfo property
            ## @return a gcp_permissions_definition_action
            ## 
            def action_info
                return @action_info
            end
            ## 
            ## Sets the actionInfo property value. The actionInfo property
            ## @param value Value to set for the actionInfo property.
            ## @return a void
            ## 
            def action_info=(value)
                @action_info = value
            end
            ## 
            ## Instantiates a new singleResourceGcpPermissionsDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.singleResourceGcpPermissionsDefinition"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a single_resource_gcp_permissions_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SingleResourceGcpPermissionsDefinition.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionInfo" => lambda {|n| @action_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GcpPermissionsDefinitionAction.create_from_discriminator_value(pn) }) },
                    "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the resourceId property value. Identifier for the resource.
            ## @return a string
            ## 
            def resource_id
                return @resource_id
            end
            ## 
            ## Sets the resourceId property value. Identifier for the resource.
            ## @param value Value to set for the resourceId property.
            ## @return a void
            ## 
            def resource_id=(value)
                @resource_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("actionInfo", @action_info)
                writer.write_string_value("resourceId", @resource_id)
            end
        end
    end
end
