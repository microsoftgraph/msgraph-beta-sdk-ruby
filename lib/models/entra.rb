require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Entra < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents settings related to access to the Microsoft Entra admin center.
            @ux_setting
            ## 
            ## Instantiates a new Entra and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a entra
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Entra.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "uxSetting" => lambda {|n| @ux_setting = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UxSetting.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("uxSetting", @ux_setting)
            end
            ## 
            ## Gets the uxSetting property value. Represents settings related to access to the Microsoft Entra admin center.
            ## @return a ux_setting
            ## 
            def ux_setting
                return @ux_setting
            end
            ## 
            ## Sets the uxSetting property value. Represents settings related to access to the Microsoft Entra admin center.
            ## @param value Value to set for the uxSetting property.
            ## @return a void
            ## 
            def ux_setting=(value)
                @ux_setting = value
            end
        end
    end
end
