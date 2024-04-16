require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Intune will provide customer the ability to configure hardware/bios settings on the enrolled windows 10 Azure Active Directory joined devices.
        class HardwarePasswordInfo < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Current device password
            @current_password
            ## 
            # List of previous device passwords
            @previous_passwords
            ## 
            # Device serial number
            @serial_number
            ## 
            ## Instantiates a new HardwarePasswordInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a hardware_password_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HardwarePasswordInfo.new
            end
            ## 
            ## Gets the currentPassword property value. Current device password
            ## @return a string
            ## 
            def current_password
                return @current_password
            end
            ## 
            ## Sets the currentPassword property value. Current device password
            ## @param value Value to set for the currentPassword property.
            ## @return a void
            ## 
            def current_password=(value)
                @current_password = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "currentPassword" => lambda {|n| @current_password = n.get_string_value() },
                    "previousPasswords" => lambda {|n| @previous_passwords = n.get_collection_of_primitive_values(String) },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                })
            end
            ## 
            ## Gets the previousPasswords property value. List of previous device passwords
            ## @return a string
            ## 
            def previous_passwords
                return @previous_passwords
            end
            ## 
            ## Sets the previousPasswords property value. List of previous device passwords
            ## @param value Value to set for the previousPasswords property.
            ## @return a void
            ## 
            def previous_passwords=(value)
                @previous_passwords = value
            end
            ## 
            ## Gets the serialNumber property value. Device serial number
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. Device serial number
            ## @param value Value to set for the serialNumber property.
            ## @return a void
            ## 
            def serial_number=(value)
                @serial_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("currentPassword", @current_password)
                writer.write_collection_of_primitive_values("previousPasswords", @previous_passwords)
                writer.write_string_value("serialNumber", @serial_number)
            end
        end
    end
end
