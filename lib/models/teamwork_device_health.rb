require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkDeviceHealth < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The connection property
            @connection
            ## 
            # Identity of the user who created the device health document.
            @created_by
            ## 
            # The UTC date and time when the device health document was created.
            @created_date_time
            ## 
            # Health details about the device hardware.
            @hardware_health
            ## 
            # Identity of the user who last modified the device health details.
            @last_modified_by
            ## 
            # The UTC date and time when the device health detail was last modified.
            @last_modified_date_time
            ## 
            # The login status of Microsoft Teams, Skype for Business, and Exchange.
            @login_status
            ## 
            # Health details about all peripherals (for example, speaker and microphone) attached to a device.
            @peripherals_health
            ## 
            # Software updates available for the device.
            @software_update_health
            ## 
            ## Gets the connection property value. The connection property
            ## @return a teamwork_connection
            ## 
            def connection
                return @connection
            end
            ## 
            ## Sets the connection property value. The connection property
            ## @param value Value to set for the connection property.
            ## @return a void
            ## 
            def connection=(value)
                @connection = value
            end
            ## 
            ## Instantiates a new TeamworkDeviceHealth and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. Identity of the user who created the device health document.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Identity of the user who created the device health document.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The UTC date and time when the device health document was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The UTC date and time when the device health document was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_device_health
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkDeviceHealth.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "connection" => lambda {|n| @connection = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkConnection.create_from_discriminator_value(pn) }) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "hardwareHealth" => lambda {|n| @hardware_health = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkHardwareHealth.create_from_discriminator_value(pn) }) },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "loginStatus" => lambda {|n| @login_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkLoginStatus.create_from_discriminator_value(pn) }) },
                    "peripheralsHealth" => lambda {|n| @peripherals_health = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheralsHealth.create_from_discriminator_value(pn) }) },
                    "softwareUpdateHealth" => lambda {|n| @software_update_health = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkSoftwareUpdateHealth.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the hardwareHealth property value. Health details about the device hardware.
            ## @return a teamwork_hardware_health
            ## 
            def hardware_health
                return @hardware_health
            end
            ## 
            ## Sets the hardwareHealth property value. Health details about the device hardware.
            ## @param value Value to set for the hardwareHealth property.
            ## @return a void
            ## 
            def hardware_health=(value)
                @hardware_health = value
            end
            ## 
            ## Gets the lastModifiedBy property value. Identity of the user who last modified the device health details.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Identity of the user who last modified the device health details.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The UTC date and time when the device health detail was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The UTC date and time when the device health detail was last modified.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the loginStatus property value. The login status of Microsoft Teams, Skype for Business, and Exchange.
            ## @return a teamwork_login_status
            ## 
            def login_status
                return @login_status
            end
            ## 
            ## Sets the loginStatus property value. The login status of Microsoft Teams, Skype for Business, and Exchange.
            ## @param value Value to set for the loginStatus property.
            ## @return a void
            ## 
            def login_status=(value)
                @login_status = value
            end
            ## 
            ## Gets the peripheralsHealth property value. Health details about all peripherals (for example, speaker and microphone) attached to a device.
            ## @return a teamwork_peripherals_health
            ## 
            def peripherals_health
                return @peripherals_health
            end
            ## 
            ## Sets the peripheralsHealth property value. Health details about all peripherals (for example, speaker and microphone) attached to a device.
            ## @param value Value to set for the peripheralsHealth property.
            ## @return a void
            ## 
            def peripherals_health=(value)
                @peripherals_health = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("connection", @connection)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("hardwareHealth", @hardware_health)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("loginStatus", @login_status)
                writer.write_object_value("peripheralsHealth", @peripherals_health)
                writer.write_object_value("softwareUpdateHealth", @software_update_health)
            end
            ## 
            ## Gets the softwareUpdateHealth property value. Software updates available for the device.
            ## @return a teamwork_software_update_health
            ## 
            def software_update_health
                return @software_update_health
            end
            ## 
            ## Sets the softwareUpdateHealth property value. Software updates available for the device.
            ## @param value Value to set for the softwareUpdateHealth property.
            ## @return a void
            ## 
            def software_update_health=(value)
                @software_update_health = value
            end
        end
    end
end
