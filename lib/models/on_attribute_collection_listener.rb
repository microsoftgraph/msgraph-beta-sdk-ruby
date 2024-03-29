require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OnAttributeCollectionListener < MicrosoftGraphBeta::Models::AuthenticationEventListener
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Required. Configuration for what to invoke if the event resolves to this listener. This lets us define potential handler configurations per-event.
            @handler
            ## 
            ## Instantiates a new onAttributeCollectionListener and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.onAttributeCollectionListener"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_attribute_collection_listener
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnAttributeCollectionListener.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "handler" => lambda {|n| @handler = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OnAttributeCollectionHandler.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the handler property value. Required. Configuration for what to invoke if the event resolves to this listener. This lets us define potential handler configurations per-event.
            ## @return a on_attribute_collection_handler
            ## 
            def handler
                return @handler
            end
            ## 
            ## Sets the handler property value. Required. Configuration for what to invoke if the event resolves to this listener. This lets us define potential handler configurations per-event.
            ## @param value Value to set for the handler property.
            ## @return a void
            ## 
            def handler=(value)
                @handler = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("handler", @handler)
            end
        end
    end
end
