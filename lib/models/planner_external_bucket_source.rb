require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerExternalBucketSource < MicrosoftGraphBeta::Models::PlannerBucketCreation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Nullable. An identifier for the scenario associated with this external source. This should be in reverse DNS format. For example, Contoso company owned application for customer support would have a value like 'com.constoso.customerSupport'.
            @context_scenario_id
            ## 
            # Nullable. The id of the external entity's containing entity or context.
            @external_context_id
            ## 
            # Nullable. The id of the entity that an external service associates with a bucket.
            @external_object_id
            ## 
            ## Instantiates a new plannerExternalBucketSource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.plannerExternalBucketSource"
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
            ## @param value Value to set for the context_scenario_id property.
            ## @return a void
            ## 
            def context_scenario_id=(value)
                @context_scenario_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a planner_external_bucket_source
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerExternalBucketSource.new
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
            ## @param value Value to set for the external_context_id property.
            ## @return a void
            ## 
            def external_context_id=(value)
                @external_context_id = value
            end
            ## 
            ## Gets the externalObjectId property value. Nullable. The id of the entity that an external service associates with a bucket.
            ## @return a string
            ## 
            def external_object_id
                return @external_object_id
            end
            ## 
            ## Sets the externalObjectId property value. Nullable. The id of the entity that an external service associates with a bucket.
            ## @param value Value to set for the external_object_id property.
            ## @return a void
            ## 
            def external_object_id=(value)
                @external_object_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contextScenarioId" => lambda {|n| @context_scenario_id = n.get_string_value() },
                    "externalContextId" => lambda {|n| @external_context_id = n.get_string_value() },
                    "externalObjectId" => lambda {|n| @external_object_id = n.get_string_value() },
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
                writer.write_string_value("externalContextId", @external_context_id)
                writer.write_string_value("externalObjectId", @external_object_id)
            end
        end
    end
end
