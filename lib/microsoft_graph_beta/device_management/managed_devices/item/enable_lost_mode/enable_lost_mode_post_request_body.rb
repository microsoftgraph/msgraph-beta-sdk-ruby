require 'microsoft_kiota_abstractions'
require_relative '../../../device_management'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './enable_lost_mode'

module MicrosoftGraphBeta::DeviceManagement::ManagedDevices::Item::EnableLostMode
    class EnableLostModePostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The footer property
        @footer
        ## 
        # The message property
        @message
        ## 
        # The phoneNumber property
        @phone_number
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
        ## Instantiates a new enableLostModePostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a enable_lost_mode_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EnableLostModePostRequestBody.new
        end
        ## 
        ## Gets the footer property value. The footer property
        ## @return a string
        ## 
        def footer
            return @footer
        end
        ## 
        ## Sets the footer property value. The footer property
        ## @param value Value to set for the footer property.
        ## @return a void
        ## 
        def footer=(value)
            @footer = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "footer" => lambda {|n| @footer = n.get_string_value() },
                "message" => lambda {|n| @message = n.get_string_value() },
                "phoneNumber" => lambda {|n| @phone_number = n.get_string_value() },
            }
        end
        ## 
        ## Gets the message property value. The message property
        ## @return a string
        ## 
        def message
            return @message
        end
        ## 
        ## Sets the message property value. The message property
        ## @param value Value to set for the message property.
        ## @return a void
        ## 
        def message=(value)
            @message = value
        end
        ## 
        ## Gets the phoneNumber property value. The phoneNumber property
        ## @return a string
        ## 
        def phone_number
            return @phone_number
        end
        ## 
        ## Sets the phoneNumber property value. The phoneNumber property
        ## @param value Value to set for the phoneNumber property.
        ## @return a void
        ## 
        def phone_number=(value)
            @phone_number = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("footer", @footer)
            writer.write_string_value("message", @message)
            writer.write_string_value("phoneNumber", @phone_number)
            writer.write_additional_data(@additional_data)
        end
    end
end
