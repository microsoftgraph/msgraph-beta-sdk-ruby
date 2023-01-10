require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AuthenticationListener < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The priority of the listener. Determines the order of evaluation when an event has multiple listeners. The priority is evaluated from low to high.
        @priority
        ## 
        # Filter based on the source of the authentication that is used to determine whether the listener is evaluated. This is currently limited to evaluations based on application the user is authenticating to.
        @source_filter
        ## 
        ## Instantiates a new authenticationListener and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a authentication_listener
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.invokeUserFlowListener"
                        return InvokeUserFlowListener.new
                end
            end
            return AuthenticationListener.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "priority" => lambda {|n| @priority = n.get_number_value() },
                "sourceFilter" => lambda {|n| @source_filter = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationSourceFilter.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the priority property value. The priority of the listener. Determines the order of evaluation when an event has multiple listeners. The priority is evaluated from low to high.
        ## @return a integer
        ## 
        def priority
            return @priority
        end
        ## 
        ## Sets the priority property value. The priority of the listener. Determines the order of evaluation when an event has multiple listeners. The priority is evaluated from low to high.
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
            writer.write_number_value("priority", @priority)
            writer.write_object_value("sourceFilter", @source_filter)
        end
        ## 
        ## Gets the sourceFilter property value. Filter based on the source of the authentication that is used to determine whether the listener is evaluated. This is currently limited to evaluations based on application the user is authenticating to.
        ## @return a authentication_source_filter
        ## 
        def source_filter
            return @source_filter
        end
        ## 
        ## Sets the sourceFilter property value. Filter based on the source of the authentication that is used to determine whether the listener is evaluated. This is currently limited to evaluations based on application the user is authenticating to.
        ## @param value Value to set for the sourceFilter property.
        ## @return a void
        ## 
        def source_filter=(value)
            @source_filter = value
        end
    end
end
