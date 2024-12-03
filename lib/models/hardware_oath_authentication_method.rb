require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class HardwareOathAuthenticationMethod < MicrosoftGraphBeta::Models::AuthenticationMethod
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The device property
            @device
            ## 
            ## Instantiates a new HardwareOathAuthenticationMethod and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.hardwareOathAuthenticationMethod"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a hardware_oath_authentication_method
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HardwareOathAuthenticationMethod.new
            end
            ## 
            ## Gets the device property value. The device property
            ## @return a hardware_oath_token_authentication_method_device
            ## 
            def device
                return @device
            end
            ## 
            ## Sets the device property value. The device property
            ## @param value Value to set for the device property.
            ## @return a void
            ## 
            def device=(value)
                @device = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "device" => lambda {|n| @device = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::HardwareOathTokenAuthenticationMethodDevice.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("device", @device)
            end
        end
    end
end
