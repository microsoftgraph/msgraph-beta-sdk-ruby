require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AuthenticationEventListener < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier of the authenticationEventsFlow object.
            @authentication_events_flow_id
            ## 
            # The conditions on which this authenticationEventListener should trigger.
            @conditions
            ## 
            # The priority of this handler. Between 0 (lower priority) and 1000 (higher priority).
            @priority
            ## 
            ## Gets the authenticationEventsFlowId property value. The identifier of the authenticationEventsFlow object.
            ## @return a string
            ## 
            def authentication_events_flow_id
                return @authentication_events_flow_id
            end
            ## 
            ## Sets the authenticationEventsFlowId property value. The identifier of the authenticationEventsFlow object.
            ## @param value Value to set for the authenticationEventsFlowId property.
            ## @return a void
            ## 
            def authentication_events_flow_id=(value)
                @authentication_events_flow_id = value
            end
            ## 
            ## Gets the conditions property value. The conditions on which this authenticationEventListener should trigger.
            ## @return a authentication_conditions
            ## 
            def conditions
                return @conditions
            end
            ## 
            ## Sets the conditions property value. The conditions on which this authenticationEventListener should trigger.
            ## @param value Value to set for the conditions property.
            ## @return a void
            ## 
            def conditions=(value)
                @conditions = value
            end
            ## 
            ## Instantiates a new authenticationEventListener and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_event_listener
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.onAttributeCollectionListener"
                            return OnAttributeCollectionListener.new
                        when "#microsoft.graph.onAuthenticationMethodLoadStartListener"
                            return OnAuthenticationMethodLoadStartListener.new
                        when "#microsoft.graph.onInteractiveAuthFlowStartListener"
                            return OnInteractiveAuthFlowStartListener.new
                        when "#microsoft.graph.onTokenIssuanceStartListener"
                            return OnTokenIssuanceStartListener.new
                        when "#microsoft.graph.onUserCreateStartListener"
                            return OnUserCreateStartListener.new
                    end
                end
                return AuthenticationEventListener.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationEventsFlowId" => lambda {|n| @authentication_events_flow_id = n.get_string_value() },
                    "conditions" => lambda {|n| @conditions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationConditions.create_from_discriminator_value(pn) }) },
                    "priority" => lambda {|n| @priority = n.get_number_value() },
                })
            end
            ## 
            ## Gets the priority property value. The priority of this handler. Between 0 (lower priority) and 1000 (higher priority).
            ## @return a integer
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. The priority of this handler. Between 0 (lower priority) and 1000 (higher priority).
            ## @param value Value to set for the priority property.
            ## @return a void
            ## 
            def priority=(value)
                @priority = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("authenticationEventsFlowId", @authentication_events_flow_id)
                writer.write_object_value("conditions", @conditions)
                writer.write_number_value("priority", @priority)
            end
        end
    end
end
