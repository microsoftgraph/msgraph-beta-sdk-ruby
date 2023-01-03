require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class VirtualAppointment < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The join web URL of the virtual appointment for clients with waiting room and browser join. Optional.
        @appointment_client_join_web_url
        ## 
        # The client information for the virtual appointment, including name, email, and SMS phone number. Optional.
        @appointment_clients
        ## 
        # The identifier of the appointment from the scheduling system, associated with the current virtual appointment. Optional.
        @external_appointment_id
        ## 
        # The URL of the appointment resource from the scheduling system, associated with the current virtual appointment. Optional.
        @external_appointment_url
        ## 
        # The settings associated with the virtual appointment resource. Optional.
        @settings
        ## 
        ## Gets the appointmentClientJoinWebUrl property value. The join web URL of the virtual appointment for clients with waiting room and browser join. Optional.
        ## @return a string
        ## 
        def appointment_client_join_web_url
            return @appointment_client_join_web_url
        end
        ## 
        ## Sets the appointmentClientJoinWebUrl property value. The join web URL of the virtual appointment for clients with waiting room and browser join. Optional.
        ## @param value Value to set for the appointmentClientJoinWebUrl property.
        ## @return a void
        ## 
        def appointment_client_join_web_url=(value)
            @appointment_client_join_web_url = value
        end
        ## 
        ## Gets the appointmentClients property value. The client information for the virtual appointment, including name, email, and SMS phone number. Optional.
        ## @return a virtual_appointment_user
        ## 
        def appointment_clients
            return @appointment_clients
        end
        ## 
        ## Sets the appointmentClients property value. The client information for the virtual appointment, including name, email, and SMS phone number. Optional.
        ## @param value Value to set for the appointmentClients property.
        ## @return a void
        ## 
        def appointment_clients=(value)
            @appointment_clients = value
        end
        ## 
        ## Instantiates a new virtualAppointment and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a virtual_appointment
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return VirtualAppointment.new
        end
        ## 
        ## Gets the externalAppointmentId property value. The identifier of the appointment from the scheduling system, associated with the current virtual appointment. Optional.
        ## @return a string
        ## 
        def external_appointment_id
            return @external_appointment_id
        end
        ## 
        ## Sets the externalAppointmentId property value. The identifier of the appointment from the scheduling system, associated with the current virtual appointment. Optional.
        ## @param value Value to set for the externalAppointmentId property.
        ## @return a void
        ## 
        def external_appointment_id=(value)
            @external_appointment_id = value
        end
        ## 
        ## Gets the externalAppointmentUrl property value. The URL of the appointment resource from the scheduling system, associated with the current virtual appointment. Optional.
        ## @return a string
        ## 
        def external_appointment_url
            return @external_appointment_url
        end
        ## 
        ## Sets the externalAppointmentUrl property value. The URL of the appointment resource from the scheduling system, associated with the current virtual appointment. Optional.
        ## @param value Value to set for the externalAppointmentUrl property.
        ## @return a void
        ## 
        def external_appointment_url=(value)
            @external_appointment_url = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "appointmentClientJoinWebUrl" => lambda {|n| @appointment_client_join_web_url = n.get_string_value() },
                "appointmentClients" => lambda {|n| @appointment_clients = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VirtualAppointmentUser.create_from_discriminator_value(pn) }) },
                "externalAppointmentId" => lambda {|n| @external_appointment_id = n.get_string_value() },
                "externalAppointmentUrl" => lambda {|n| @external_appointment_url = n.get_string_value() },
                "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::VirtualAppointmentSettings.create_from_discriminator_value(pn) }) },
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
            writer.write_string_value("appointmentClientJoinWebUrl", @appointment_client_join_web_url)
            writer.write_collection_of_object_values("appointmentClients", @appointment_clients)
            writer.write_string_value("externalAppointmentId", @external_appointment_id)
            writer.write_string_value("externalAppointmentUrl", @external_appointment_url)
            writer.write_object_value("settings", @settings)
        end
        ## 
        ## Gets the settings property value. The settings associated with the virtual appointment resource. Optional.
        ## @return a virtual_appointment_settings
        ## 
        def settings
            return @settings
        end
        ## 
        ## Sets the settings property value. The settings associated with the virtual appointment resource. Optional.
        ## @param value Value to set for the settings property.
        ## @return a void
        ## 
        def settings=(value)
            @settings = value
        end
    end
end
