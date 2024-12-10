require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WhatIfUserActionContext < MicrosoftGraphBeta::Models::ConditionalAccessContext
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The userAction property
            @user_action
            ## 
            ## Instantiates a new WhatIfUserActionContext and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.whatIfUserActionContext"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a what_if_user_action_context
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WhatIfUserActionContext.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "userAction" => lambda {|n| @user_action = n.get_enum_value(MicrosoftGraphBeta::Models::UserAction) },
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
                writer.write_enum_value("userAction", @user_action)
            end
            ## 
            ## Gets the userAction property value. The userAction property
            ## @return a user_action
            ## 
            def user_action
                return @user_action
            end
            ## 
            ## Sets the userAction property value. The userAction property
            ## @param value Value to set for the userAction property.
            ## @return a void
            ## 
            def user_action=(value)
                @user_action = value
            end
        end
    end
end
