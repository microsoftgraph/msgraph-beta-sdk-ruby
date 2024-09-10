require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PasswordAuthenticationMethod < MicrosoftGraphBeta::Models::AuthenticationMethod
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # For security, the password is always returned as null from a LIST or GET operation.
            @password
            ## 
            ## Instantiates a new PasswordAuthenticationMethod and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.passwordAuthenticationMethod"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a password_authentication_method
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PasswordAuthenticationMethod.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "password" => lambda {|n| @password = n.get_string_value() },
                })
            end
            ## 
            ## Gets the password property value. For security, the password is always returned as null from a LIST or GET operation.
            ## @return a string
            ## 
            def password
                return @password
            end
            ## 
            ## Sets the password property value. For security, the password is always returned as null from a LIST or GET operation.
            ## @param value Value to set for the password property.
            ## @return a void
            ## 
            def password=(value)
                @password = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("password", @password)
            end
        end
    end
end
