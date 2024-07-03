require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataSimplePasswordSettings < MicrosoftGraphBeta::Models::IndustryDataPasswordSettings
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The password for the user.
            @password
            ## 
            ## Instantiates a new IndustryDataSimplePasswordSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.industryData.simplePasswordSettings"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_simple_password_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IndustryDataSimplePasswordSettings.new
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
            ## Gets the password property value. The password for the user.
            ## @return a string
            ## 
            def password
                return @password
            end
            ## 
            ## Sets the password property value. The password for the user.
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
