require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A new entity to represent driver inventories.
        class WindowsDriverUpdateInventory < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of devices for which this driver is applicable.
            @applicable_device_count
            ## 
            # An enum type to represent approval status of a driver.
            @approval_status
            ## 
            # An enum type to represent which category a driver belongs to.
            @category
            ## 
            # The date time when a driver should be deployed if approvalStatus is approved.
            @deploy_date_time
            ## 
            # The class of the driver.
            @driver_class
            ## 
            # The manufacturer of the driver.
            @manufacturer
            ## 
            # The name of the driver.
            @name
            ## 
            # The release date time of the driver.
            @release_date_time
            ## 
            # The version of the driver.
            @version
            ## 
            ## Gets the applicableDeviceCount property value. The number of devices for which this driver is applicable.
            ## @return a integer
            ## 
            def applicable_device_count
                return @applicable_device_count
            end
            ## 
            ## Sets the applicableDeviceCount property value. The number of devices for which this driver is applicable.
            ## @param value Value to set for the applicable_device_count property.
            ## @return a void
            ## 
            def applicable_device_count=(value)
                @applicable_device_count = value
            end
            ## 
            ## Gets the approvalStatus property value. An enum type to represent approval status of a driver.
            ## @return a driver_approval_status
            ## 
            def approval_status
                return @approval_status
            end
            ## 
            ## Sets the approvalStatus property value. An enum type to represent approval status of a driver.
            ## @param value Value to set for the approval_status property.
            ## @return a void
            ## 
            def approval_status=(value)
                @approval_status = value
            end
            ## 
            ## Gets the category property value. An enum type to represent which category a driver belongs to.
            ## @return a driver_category
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. An enum type to represent which category a driver belongs to.
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new windowsDriverUpdateInventory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_driver_update_inventory
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsDriverUpdateInventory.new
            end
            ## 
            ## Gets the deployDateTime property value. The date time when a driver should be deployed if approvalStatus is approved.
            ## @return a date_time
            ## 
            def deploy_date_time
                return @deploy_date_time
            end
            ## 
            ## Sets the deployDateTime property value. The date time when a driver should be deployed if approvalStatus is approved.
            ## @param value Value to set for the deploy_date_time property.
            ## @return a void
            ## 
            def deploy_date_time=(value)
                @deploy_date_time = value
            end
            ## 
            ## Gets the driverClass property value. The class of the driver.
            ## @return a string
            ## 
            def driver_class
                return @driver_class
            end
            ## 
            ## Sets the driverClass property value. The class of the driver.
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
                    "applicableDeviceCount" => lambda {|n| @applicable_device_count = n.get_number_value() },
                    "approvalStatus" => lambda {|n| @approval_status = n.get_enum_value(MicrosoftGraphBeta::Models::DriverApprovalStatus) },
                    "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraphBeta::Models::DriverCategory) },
                    "deployDateTime" => lambda {|n| @deploy_date_time = n.get_date_time_value() },
                    "driverClass" => lambda {|n| @driver_class = n.get_string_value() },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "releaseDateTime" => lambda {|n| @release_date_time = n.get_date_time_value() },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the manufacturer property value. The manufacturer of the driver.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. The manufacturer of the driver.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the name property value. The name of the driver.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name of the driver.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the releaseDateTime property value. The release date time of the driver.
            ## @return a date_time
            ## 
            def release_date_time
                return @release_date_time
            end
            ## 
            ## Sets the releaseDateTime property value. The release date time of the driver.
            ## @param value Value to set for the release_date_time property.
            ## @return a void
            ## 
            def release_date_time=(value)
                @release_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("applicableDeviceCount", @applicable_device_count)
                writer.write_enum_value("approvalStatus", @approval_status)
                writer.write_enum_value("category", @category)
                writer.write_date_time_value("deployDateTime", @deploy_date_time)
                writer.write_string_value("driverClass", @driver_class)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("name", @name)
                writer.write_date_time_value("releaseDateTime", @release_date_time)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the version property value. The version of the driver.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version of the driver.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
