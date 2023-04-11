require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class VirtualAppointmentUser
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The display name of the user who participates in a virtual appointment. Optional.
            @display_name
            ## 
            # The email address of the user who participates in a virtual appointment. Optional.
            @email_address
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The phone number for sending SMS texts for the user who participates in a virtual appointment. Optional.
            @sms_capable_phone_number
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
            ## Instantiates a new virtualAppointmentUser and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_appointment_user
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualAppointmentUser.new
            end
            ## 
            ## Gets the displayName property value. The display name of the user who participates in a virtual appointment. Optional.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the user who participates in a virtual appointment. Optional.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the emailAddress property value. The email address of the user who participates in a virtual appointment. Optional.
            ## @return a string
            ## 
            def email_address
                return @email_address
            end
            ## 
            ## Sets the emailAddress property value. The email address of the user who participates in a virtual appointment. Optional.
            ## @param value Value to set for the email_address property.
            ## @return a void
            ## 
            def email_address=(value)
                @email_address = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "emailAddress" => lambda {|n| @email_address = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "smsCapablePhoneNumber" => lambda {|n| @sms_capable_phone_number = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("emailAddress", @email_address)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("smsCapablePhoneNumber", @sms_capable_phone_number)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the smsCapablePhoneNumber property value. The phone number for sending SMS texts for the user who participates in a virtual appointment. Optional.
            ## @return a string
            ## 
            def sms_capable_phone_number
                return @sms_capable_phone_number
            end
            ## 
            ## Sets the smsCapablePhoneNumber property value. The phone number for sending SMS texts for the user who participates in a virtual appointment. Optional.
            ## @param value Value to set for the sms_capable_phone_number property.
            ## @return a void
            ## 
            def sms_capable_phone_number=(value)
                @sms_capable_phone_number = value
            end
        end
    end
end
