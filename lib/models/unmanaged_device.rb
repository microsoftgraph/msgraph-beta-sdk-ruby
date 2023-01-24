require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Unmanaged device discovered in the network.
    class UnmanagedDevice
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Device name.
        @device_name
        ## 
        # Domain.
        @domain
        ## 
        # IP address.
        @ip_address
        ## 
        # Last logged on user.
        @last_logged_on_user
        ## 
        # Last seen date and time.
        @last_seen_date_time
        ## 
        # Location.
        @location
        ## 
        # MAC address.
        @mac_address
        ## 
        # Manufacturer.
        @manufacturer
        ## 
        # Model.
        @model
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Operating system.
        @os
        ## 
        # Operating system version.
        @os_version
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
        ## Instantiates a new unmanagedDevice and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a unmanaged_device
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UnmanagedDevice.new
        end
        ## 
        ## Gets the deviceName property value. Device name.
        ## @return a string
        ## 
        def device_name
            return @device_name
        end
        ## 
        ## Sets the deviceName property value. Device name.
        ## @param value Value to set for the deviceName property.
        ## @return a void
        ## 
        def device_name=(value)
            @device_name = value
        end
        ## 
        ## Gets the domain property value. Domain.
        ## @return a string
        ## 
        def domain
            return @domain
        end
        ## 
        ## Sets the domain property value. Domain.
        ## @param value Value to set for the domain property.
        ## @return a void
        ## 
        def domain=(value)
            @domain = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                "domain" => lambda {|n| @domain = n.get_string_value() },
                "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                "lastLoggedOnUser" => lambda {|n| @last_logged_on_user = n.get_string_value() },
                "lastSeenDateTime" => lambda {|n| @last_seen_date_time = n.get_date_time_value() },
                "location" => lambda {|n| @location = n.get_string_value() },
                "macAddress" => lambda {|n| @mac_address = n.get_string_value() },
                "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                "model" => lambda {|n| @model = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "os" => lambda {|n| @os = n.get_string_value() },
                "osVersion" => lambda {|n| @os_version = n.get_string_value() },
            }
        end
        ## 
        ## Gets the ipAddress property value. IP address.
        ## @return a string
        ## 
        def ip_address
            return @ip_address
        end
        ## 
        ## Sets the ipAddress property value. IP address.
        ## @param value Value to set for the ipAddress property.
        ## @return a void
        ## 
        def ip_address=(value)
            @ip_address = value
        end
        ## 
        ## Gets the lastLoggedOnUser property value. Last logged on user.
        ## @return a string
        ## 
        def last_logged_on_user
            return @last_logged_on_user
        end
        ## 
        ## Sets the lastLoggedOnUser property value. Last logged on user.
        ## @param value Value to set for the lastLoggedOnUser property.
        ## @return a void
        ## 
        def last_logged_on_user=(value)
            @last_logged_on_user = value
        end
        ## 
        ## Gets the lastSeenDateTime property value. Last seen date and time.
        ## @return a date_time
        ## 
        def last_seen_date_time
            return @last_seen_date_time
        end
        ## 
        ## Sets the lastSeenDateTime property value. Last seen date and time.
        ## @param value Value to set for the lastSeenDateTime property.
        ## @return a void
        ## 
        def last_seen_date_time=(value)
            @last_seen_date_time = value
        end
        ## 
        ## Gets the location property value. Location.
        ## @return a string
        ## 
        def location
            return @location
        end
        ## 
        ## Sets the location property value. Location.
        ## @param value Value to set for the location property.
        ## @return a void
        ## 
        def location=(value)
            @location = value
        end
        ## 
        ## Gets the macAddress property value. MAC address.
        ## @return a string
        ## 
        def mac_address
            return @mac_address
        end
        ## 
        ## Sets the macAddress property value. MAC address.
        ## @param value Value to set for the macAddress property.
        ## @return a void
        ## 
        def mac_address=(value)
            @mac_address = value
        end
        ## 
        ## Gets the manufacturer property value. Manufacturer.
        ## @return a string
        ## 
        def manufacturer
            return @manufacturer
        end
        ## 
        ## Sets the manufacturer property value. Manufacturer.
        ## @param value Value to set for the manufacturer property.
        ## @return a void
        ## 
        def manufacturer=(value)
            @manufacturer = value
        end
        ## 
        ## Gets the model property value. Model.
        ## @return a string
        ## 
        def model
            return @model
        end
        ## 
        ## Sets the model property value. Model.
        ## @param value Value to set for the model property.
        ## @return a void
        ## 
        def model=(value)
            @model = value
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the os property value. Operating system.
        ## @return a string
        ## 
        def os
            return @os
        end
        ## 
        ## Sets the os property value. Operating system.
        ## @param value Value to set for the os property.
        ## @return a void
        ## 
        def os=(value)
            @os = value
        end
        ## 
        ## Gets the osVersion property value. Operating system version.
        ## @return a string
        ## 
        def os_version
            return @os_version
        end
        ## 
        ## Sets the osVersion property value. Operating system version.
        ## @param value Value to set for the osVersion property.
        ## @return a void
        ## 
        def os_version=(value)
            @os_version = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("deviceName", @device_name)
            writer.write_string_value("domain", @domain)
            writer.write_string_value("ipAddress", @ip_address)
            writer.write_string_value("lastLoggedOnUser", @last_logged_on_user)
            writer.write_date_time_value("lastSeenDateTime", @last_seen_date_time)
            writer.write_string_value("location", @location)
            writer.write_string_value("macAddress", @mac_address)
            writer.write_string_value("manufacturer", @manufacturer)
            writer.write_string_value("model", @model)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("os", @os)
            writer.write_string_value("osVersion", @os_version)
            writer.write_additional_data(@additional_data)
        end
    end
end
