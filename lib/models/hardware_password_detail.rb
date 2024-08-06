require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Device BIOS password information for devices with managed BIOS and firmware configuration, which provides device serial number, list of previous passwords, and current password.
        class HardwarePasswordDetail < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The current device's BIOS password. Supports: $filter, $select, $top, $OrderBy, $skip. This property is read-only.
            @current_password
            ## 
            # The list of all the previous device BIOS passwords. Supports: $filter, $select, $top, $skip. This property is read-only.
            @previous_passwords
            ## 
            # The device serial number as defined by the device manufacturer. Supports: $filter, $select, $top, $OrderBy, $skip. This property is read-only.
            @serial_number
            ## 
            ## Instantiates a new HardwarePasswordDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a hardware_password_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HardwarePasswordDetail.new
            end
            ## 
            ## Gets the currentPassword property value. The current device's BIOS password. Supports: $filter, $select, $top, $OrderBy, $skip. This property is read-only.
            ## @return a string
            ## 
            def current_password
                return @current_password
            end
            ## 
            ## Sets the currentPassword property value. The current device's BIOS password. Supports: $filter, $select, $top, $OrderBy, $skip. This property is read-only.
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
            ## Gets the previousPasswords property value. The list of all the previous device BIOS passwords. Supports: $filter, $select, $top, $skip. This property is read-only.
            ## @return a string
            ## 
            def previous_passwords
                return @previous_passwords
            end
            ## 
            ## Sets the previousPasswords property value. The list of all the previous device BIOS passwords. Supports: $filter, $select, $top, $skip. This property is read-only.
            ## @param value Value to set for the previousPasswords property.
            ## @return a void
            ## 
            def previous_passwords=(value)
                @previous_passwords = value
            end
            ## 
            ## Gets the serialNumber property value. The device serial number as defined by the device manufacturer. Supports: $filter, $select, $top, $OrderBy, $skip. This property is read-only.
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. The device serial number as defined by the device manufacturer. Supports: $filter, $select, $top, $OrderBy, $skip. This property is read-only.
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
                writer.write_string_value("serialNumber", @serial_number)
            end
        end
    end
end
