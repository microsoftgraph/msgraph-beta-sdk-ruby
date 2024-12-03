require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AuthenticationMethodDevice < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The displayName property
            @display_name
            ## 
            # The hardwareOathDevices property
            @hardware_oath_devices
            ## 
            ## Instantiates a new AuthenticationMethodDevice and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_method_device
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.hardwareOathTokenAuthenticationMethodDevice"
                            return HardwareOathTokenAuthenticationMethodDevice.new
                    end
                end
                return AuthenticationMethodDevice.new
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "hardwareOathDevices" => lambda {|n| @hardware_oath_devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HardwareOathTokenAuthenticationMethodDevice.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the hardwareOathDevices property value. The hardwareOathDevices property
            ## @return a hardware_oath_token_authentication_method_device
            ## 
            def hardware_oath_devices
                return @hardware_oath_devices
            end
            ## 
            ## Sets the hardwareOathDevices property value. The hardwareOathDevices property
            ## @param value Value to set for the hardwareOathDevices property.
            ## @return a void
            ## 
            def hardware_oath_devices=(value)
                @hardware_oath_devices = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("hardwareOathDevices", @hardware_oath_devices)
            end
        end
    end
end
