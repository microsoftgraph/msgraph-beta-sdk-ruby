require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../device_management'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './activate_device_esim'

module MicrosoftGraphBeta
    module DeviceManagement
        module ManagedDevices
            module Item
                module ActivateDeviceEsim
                    class ActivateDeviceEsimPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The carrierUrl property
                        @carrier_url
                        ## 
                        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @return a i_dictionary
                        ## 
                        def additional_data
                            return @additional_data
                        end
                        ## 
                        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @param value Value to set for the AdditionalData property.
                        ## @return a void
                        ## 
                        def additional_data=(value)
                            @additional_data = value
                        end
                        ## 
                        ## Gets the carrierUrl property value. The carrierUrl property
                        ## @return a string
                        ## 
                        def carrier_url
                            return @carrier_url
                        end
                        ## 
                        ## Sets the carrierUrl property value. The carrierUrl property
                        ## @param value Value to set for the carrier_url property.
                        ## @return a void
                        ## 
                        def carrier_url=(value)
                            @carrier_url = value
                        end
                        ## 
                        ## Instantiates a new activateDeviceEsimPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a activate_device_esim_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return ActivateDeviceEsimPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "carrierUrl" => lambda {|n| @carrier_url = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("carrierUrl", @carrier_url)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
