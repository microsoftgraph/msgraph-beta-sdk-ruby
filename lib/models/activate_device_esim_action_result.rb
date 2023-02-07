require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ActivateDeviceEsimActionResult < MicrosoftGraphBeta::Models::DeviceActionResult
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Carrier Url to activate the device eSIM
        @carrier_url
        ## 
        ## Gets the carrierUrl property value. Carrier Url to activate the device eSIM
        ## @return a string
        ## 
        def carrier_url
            return @carrier_url
        end
        ## 
        ## Sets the carrierUrl property value. Carrier Url to activate the device eSIM
        ## @param value Value to set for the carrier_url property.
        ## @return a void
        ## 
        def carrier_url=(value)
            @carrier_url = value
        end
        ## 
        ## Instantiates a new ActivateDeviceEsimActionResult and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a activate_device_esim_action_result
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ActivateDeviceEsimActionResult.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "carrierUrl" => lambda {|n| @carrier_url = n.get_string_value() },
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
            writer.write_string_value("carrierUrl", @carrier_url)
        end
    end
end
