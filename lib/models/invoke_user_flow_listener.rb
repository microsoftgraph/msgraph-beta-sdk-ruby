require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class InvokeUserFlowListener < MicrosoftGraphBeta::Models::AuthenticationListener
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The user flow that is invoked when this action executes.
            @user_flow
            ## 
            ## Instantiates a new InvokeUserFlowListener and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.invokeUserFlowListener"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a invoke_user_flow_listener
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InvokeUserFlowListener.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "userFlow" => lambda {|n| @user_flow = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::B2xIdentityUserFlow.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("userFlow", @user_flow)
            end
            ## 
            ## Gets the userFlow property value. The user flow that is invoked when this action executes.
            ## @return a b2x_identity_user_flow
            ## 
            def user_flow
                return @user_flow
            end
            ## 
            ## Sets the userFlow property value. The user flow that is invoked when this action executes.
            ## @param value Value to set for the user_flow property.
            ## @return a void
            ## 
            def user_flow=(value)
                @user_flow = value
            end
        end
    end
end
