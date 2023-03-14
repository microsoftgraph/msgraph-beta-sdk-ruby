require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../device_management'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './deprovision'

module MicrosoftGraphBeta
    module DeviceManagement
        module ManagedDevices
            module Item
                module Deprovision
                    class DeprovisionPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The deprovisionReason property
                        @deprovision_reason
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
                        ## Instantiates a new deprovisionPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a deprovision_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return DeprovisionPostRequestBody.new
                        end
                        ## 
                        ## Gets the deprovisionReason property value. The deprovisionReason property
                        ## @return a string
                        ## 
                        def deprovision_reason
                            return @deprovision_reason
                        end
                        ## 
                        ## Sets the deprovisionReason property value. The deprovisionReason property
                        ## @param value Value to set for the deprovision_reason property.
                        ## @return a void
                        ## 
                        def deprovision_reason=(value)
                            @deprovision_reason = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "deprovisionReason" => lambda {|n| @deprovision_reason = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("deprovisionReason", @deprovision_reason)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
