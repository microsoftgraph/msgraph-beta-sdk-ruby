require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerExternalTaskSource < MicrosoftGraphBeta::Models::PlannerTaskCreation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Nullable. An identifier for the scenario associated with this external source. This should be in reverse DNS format. For example, Contoso company owned application for customer support would have a value like 'com.constoso.customerSupport'.
            @context_scenario_id
            ## 
            # Specifies how an application should display the link to the associated plannerExternalTaskSource. The possible values are: none, default.
            @display_link_type
            ## 
            # The segments of the name of the external experience. Segments represent a hierarchical structure that allows other apps to display the relationship.
            @display_name_segments
            ## 
            # Nullable. The id of the external entity's containing entity or context.
            @external_context_id
            ## 
            # Nullable. The id of the entity that an external service associates with a task.
            @external_object_id
            ## 
            # Nullable. The external Item Version for the object specified by the externalObjectId.
            @external_object_version
            ## 
            # Nullable. URL of the user experience represented by the associated plannerExternalTaskSource.
            @web_url
            ## 
            ## Instantiates a new PlannerExternalTaskSource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.plannerExternalTaskSource"
            end
            ## 
            ## Gets the contextScenarioId property value. Nullable. An identifier for the scenario associated with this external source. This should be in reverse DNS format. For example, Contoso company owned application for customer support would have a value like 'com.constoso.customerSupport'.
            ## @return a string
            ## 
            def context_scenario_id
                return @context_scenario_id
            end
            ## 
            ## Sets the contextScenarioId property value. Nullable. An identifier for the scenario associated with this external source. This should be in reverse DNS format. For example, Contoso company owned application for customer support would have a value like 'com.constoso.customerSupport'.
            ## @param value Value to set for the contextScenarioId property.
            ## @return a void
            ## 
            def context_scenario_id=(value)
                @context_scenario_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a planner_external_task_source
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerExternalTaskSource.new
            end
            ## 
            ## Gets the displayLinkType property value. Specifies how an application should display the link to the associated plannerExternalTaskSource. The possible values are: none, default.
            ## @return a planner_external_task_source_display_type
            ## 
            def display_link_type
                return @display_link_type
            end
            ## 
            ## Sets the displayLinkType property value. Specifies how an application should display the link to the associated plannerExternalTaskSource. The possible values are: none, default.
            ## @param value Value to set for the displayLinkType property.
            ## @return a void
            ## 
            def display_link_type=(value)
                @display_link_type = value
            end
            ## 
            ## Gets the displayNameSegments property value. The segments of the name of the external experience. Segments represent a hierarchical structure that allows other apps to display the relationship.
            ## @return a string
            ## 
            def display_name_segments
                return @display_name_segments
            end
            ## 
            ## Sets the displayNameSegments property value. The segments of the name of the external experience. Segments represent a hierarchical structure that allows other apps to display the relationship.
            ## @param value Value to set for the displayNameSegments property.
            ## @return a void
            ## 
            def display_name_segments=(value)
                @display_name_segments = value
            end
            ## 
            ## Gets the externalContextId property value. Nullable. The id of the external entity's containing entity or context.
            ## @return a string
            ## 
            def external_context_id
                return @external_context_id
            end
            ## 
            ## Sets the externalContextId property value. Nullable. The id of the external entity's containing entity or context.
            ## @param value Value to set for the externalContextId property.
            ## @return a void
            ## 
            def external_context_id=(value)
                @external_context_id = value
            end
            ## 
            ## Gets the externalObjectId property value. Nullable. The id of the entity that an external service associates with a task.
            ## @return a string
            ## 
            def external_object_id
                return @external_object_id
            end
            ## 
            ## Sets the externalObjectId property value. Nullable. The id of the entity that an external service associates with a task.
            ## @param value Value to set for the externalObjectId property.
            ## @return a void
            ## 
            def external_object_id=(value)
                @external_object_id = value
            end
            ## 
            ## Gets the externalObjectVersion property value. Nullable. The external Item Version for the object specified by the externalObjectId.
            ## @return a string
            ## 
            def external_object_version
                return @external_object_version
            end
            ## 
            ## Sets the externalObjectVersion property value. Nullable. The external Item Version for the object specified by the externalObjectId.
            ## @param value Value to set for the externalObjectVersion property.
            ## @return a void
            ## 
            def external_object_version=(value)
                @external_object_version = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contextScenarioId" => lambda {|n| @context_scenario_id = n.get_string_value() },
                    "displayLinkType" => lambda {|n| @display_link_type = n.get_enum_value(MicrosoftGraphBeta::Models::PlannerExternalTaskSourceDisplayType) },
                    "displayNameSegments" => lambda {|n| @display_name_segments = n.get_collection_of_primitive_values(String) },
                    "externalContextId" => lambda {|n| @external_context_id = n.get_string_value() },
                    "externalObjectId" => lambda {|n| @external_object_id = n.get_string_value() },
                    "externalObjectVersion" => lambda {|n| @external_object_version = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
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
                writer.write_string_value("contextScenarioId", @context_scenario_id)
                writer.write_enum_value("displayLinkType", @display_link_type)
                writer.write_collection_of_primitive_values("displayNameSegments", @display_name_segments)
                writer.write_string_value("externalContextId", @external_context_id)
                writer.write_string_value("externalObjectId", @external_object_id)
                writer.write_string_value("externalObjectVersion", @external_object_version)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the webUrl property value. Nullable. URL of the user experience represented by the associated plannerExternalTaskSource.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. Nullable. URL of the user experience represented by the associated plannerExternalTaskSource.
            ## @param value Value to set for the webUrl property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
