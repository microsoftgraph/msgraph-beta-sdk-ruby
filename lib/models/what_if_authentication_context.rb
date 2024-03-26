require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WhatIfAuthenticationContext < MicrosoftGraphBeta::Models::ConditionalAccessContext
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The authenticationContext property
            @authentication_context
            ## 
            ## Gets the authenticationContext property value. The authenticationContext property
            ## @return a string
            ## 
            def authentication_context
                return @authentication_context
            end
            ## 
            ## Sets the authenticationContext property value. The authenticationContext property
            ## @param value Value to set for the authenticationContext property.
            ## @return a void
            ## 
            def authentication_context=(value)
                @authentication_context = value
            end
            ## 
            ## Instantiates a new WhatIfAuthenticationContext and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.whatIfAuthenticationContext"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a what_if_authentication_context
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WhatIfAuthenticationContext.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationContext" => lambda {|n| @authentication_context = n.get_string_value() },
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
                writer.write_string_value("authenticationContext", @authentication_context)
            end
        end
    end
end
