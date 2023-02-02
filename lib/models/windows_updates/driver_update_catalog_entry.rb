require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class DriverUpdateCatalogEntry < MicrosoftGraphBeta::Models::WindowsUpdates::SoftwareUpdateCatalogEntry
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The description property
        @description
        ## 
        # The driverClass property
        @driver_class
        ## 
        # The manufacturer property
        @manufacturer
        ## 
        # The provider property
        @provider
        ## 
        # The setupInformationFile property
        @setup_information_file
        ## 
        # The version property
        @version
        ## 
        # The versionDateTime property
        @version_date_time
        ## 
        ## Instantiates a new DriverUpdateCatalogEntry and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsUpdates.driverUpdateCatalogEntry"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a driver_update_catalog_entry
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DriverUpdateCatalogEntry.new
        end
        ## 
        ## Gets the description property value. The description property
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The description property
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the driverClass property value. The driverClass property
        ## @return a string
        ## 
        def driver_class
            return @driver_class
        end
        ## 
        ## Sets the driverClass property value. The driverClass property
        ## @param value Value to set for the driver_class property.
        ## @return a void
        ## 
        def driver_class=(value)
            @driver_class = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "description" => lambda {|n| @description = n.get_string_value() },
                "driverClass" => lambda {|n| @driver_class = n.get_string_value() },
                "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                "provider" => lambda {|n| @provider = n.get_string_value() },
                "setupInformationFile" => lambda {|n| @setup_information_file = n.get_string_value() },
                "version" => lambda {|n| @version = n.get_string_value() },
                "versionDateTime" => lambda {|n| @version_date_time = n.get_date_time_value() },
            })
        end
        ## 
        ## Gets the manufacturer property value. The manufacturer property
        ## @return a string
        ## 
        def manufacturer
            return @manufacturer
        end
        ## 
        ## Sets the manufacturer property value. The manufacturer property
        ## @param value Value to set for the manufacturer property.
        ## @return a void
        ## 
        def manufacturer=(value)
            @manufacturer = value
        end
        ## 
        ## Gets the provider property value. The provider property
        ## @return a string
        ## 
        def provider
            return @provider
        end
        ## 
        ## Sets the provider property value. The provider property
        ## @param value Value to set for the provider property.
        ## @return a void
        ## 
        def provider=(value)
            @provider = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("description", @description)
            writer.write_string_value("driverClass", @driver_class)
            writer.write_string_value("manufacturer", @manufacturer)
            writer.write_string_value("provider", @provider)
            writer.write_string_value("setupInformationFile", @setup_information_file)
            writer.write_string_value("version", @version)
            writer.write_date_time_value("versionDateTime", @version_date_time)
        end
        ## 
        ## Gets the setupInformationFile property value. The setupInformationFile property
        ## @return a string
        ## 
        def setup_information_file
            return @setup_information_file
        end
        ## 
        ## Sets the setupInformationFile property value. The setupInformationFile property
        ## @param value Value to set for the setup_information_file property.
        ## @return a void
        ## 
        def setup_information_file=(value)
            @setup_information_file = value
        end
        ## 
        ## Gets the version property value. The version property
        ## @return a string
        ## 
        def version
            return @version
        end
        ## 
        ## Sets the version property value. The version property
        ## @param value Value to set for the version property.
        ## @return a void
        ## 
        def version=(value)
            @version = value
        end
        ## 
        ## Gets the versionDateTime property value. The versionDateTime property
        ## @return a date_time
        ## 
        def version_date_time
            return @version_date_time
        end
        ## 
        ## Sets the versionDateTime property value. The versionDateTime property
        ## @param value Value to set for the version_date_time property.
        ## @return a void
        ## 
        def version_date_time=(value)
            @version_date_time = value
        end
    end
end
