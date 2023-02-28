require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MacOSCustomConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the channel used to deploy the configuration profile. Available choices are DeviceChannel, UserChannel
            @deployment_channel
            ## 
            # Payload. (UTF8 encoded byte array)
            @payload
            ## 
            # Payload file name (.mobileconfig
            @payload_file_name
            ## 
            # Name that is displayed to the user.
            @payload_name
            ## 
            ## Instantiates a new MacOSCustomConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.macOSCustomConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_custom_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSCustomConfiguration.new
            end
            ## 
            ## Gets the deploymentChannel property value. Indicates the channel used to deploy the configuration profile. Available choices are DeviceChannel, UserChannel
            ## @return a apple_deployment_channel
            ## 
            def deployment_channel
                return @deployment_channel
            end
            ## 
            ## Sets the deploymentChannel property value. Indicates the channel used to deploy the configuration profile. Available choices are DeviceChannel, UserChannel
            ## @param value Value to set for the deployment_channel property.
            ## @return a void
            ## 
            def deployment_channel=(value)
                @deployment_channel = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deploymentChannel" => lambda {|n| @deployment_channel = n.get_enum_value(MicrosoftGraphBeta::Models::AppleDeploymentChannel) },
                    "payload" => lambda {|n| @payload = n.get_string_value() },
                    "payloadFileName" => lambda {|n| @payload_file_name = n.get_string_value() },
                    "payloadName" => lambda {|n| @payload_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the payload property value. Payload. (UTF8 encoded byte array)
            ## @return a binary
            ## 
            def payload
                return @payload
            end
            ## 
            ## Sets the payload property value. Payload. (UTF8 encoded byte array)
            ## @param value Value to set for the payload property.
            ## @return a void
            ## 
            def payload=(value)
                @payload = value
            end
            ## 
            ## Gets the payloadFileName property value. Payload file name (.mobileconfig
            ## @return a string
            ## 
            def payload_file_name
                return @payload_file_name
            end
            ## 
            ## Sets the payloadFileName property value. Payload file name (.mobileconfig
            ## @param value Value to set for the payload_file_name property.
            ## @return a void
            ## 
            def payload_file_name=(value)
                @payload_file_name = value
            end
            ## 
            ## Gets the payloadName property value. Name that is displayed to the user.
            ## @return a string
            ## 
            def payload_name
                return @payload_name
            end
            ## 
            ## Sets the payloadName property value. Name that is displayed to the user.
            ## @param value Value to set for the payload_name property.
            ## @return a void
            ## 
            def payload_name=(value)
                @payload_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("deploymentChannel", @deployment_channel)
                writer.write_object_value("payload", @payload)
                writer.write_string_value("payloadFileName", @payload_file_name)
                writer.write_string_value("payloadName", @payload_name)
            end
        end
    end
end
