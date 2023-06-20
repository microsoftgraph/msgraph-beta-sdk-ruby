require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # MacOS software update account summary report for a device and user
        class MacOSSoftwareUpdateAccountSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Summary of the updates by category.
            @category_summaries
            ## 
            # The device ID.
            @device_id
            ## 
            # The device name.
            @device_name
            ## 
            # The name of the report
            @display_name
            ## 
            # Number of failed updates on the device.
            @failed_update_count
            ## 
            # Last date time the report for this device was updated.
            @last_updated_date_time
            ## 
            # The OS version.
            @os_version
            ## 
            # Number of successful updates on the device.
            @successful_update_count
            ## 
            # Number of total updates on the device.
            @total_update_count
            ## 
            # The user ID.
            @user_id
            ## 
            # The user principal name
            @user_principal_name
            ## 
            ## Gets the categorySummaries property value. Summary of the updates by category.
            ## @return a mac_o_s_software_update_category_summary
            ## 
            def category_summaries
                return @category_summaries
            end
            ## 
            ## Sets the categorySummaries property value. Summary of the updates by category.
            ## @param value Value to set for the category_summaries property.
            ## @return a void
            ## 
            def category_summaries=(value)
                @category_summaries = value
            end
            ## 
            ## Instantiates a new macOSSoftwareUpdateAccountSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_software_update_account_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSSoftwareUpdateAccountSummary.new
            end
            ## 
            ## Gets the deviceId property value. The device ID.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The device ID.
            ## @param value Value to set for the device_id property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceName property value. The device name.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The device name.
            ## @param value Value to set for the device_name property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the displayName property value. The name of the report
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the report
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the failedUpdateCount property value. Number of failed updates on the device.
            ## @return a integer
            ## 
            def failed_update_count
                return @failed_update_count
            end
            ## 
            ## Sets the failedUpdateCount property value. Number of failed updates on the device.
            ## @param value Value to set for the failed_update_count property.
            ## @return a void
            ## 
            def failed_update_count=(value)
                @failed_update_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "categorySummaries" => lambda {|n| @category_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MacOSSoftwareUpdateCategorySummary.create_from_discriminator_value(pn) }) },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "failedUpdateCount" => lambda {|n| @failed_update_count = n.get_number_value() },
                    "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                    "successfulUpdateCount" => lambda {|n| @successful_update_count = n.get_number_value() },
                    "totalUpdateCount" => lambda {|n| @total_update_count = n.get_number_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastUpdatedDateTime property value. Last date time the report for this device was updated.
            ## @return a date_time
            ## 
            def last_updated_date_time
                return @last_updated_date_time
            end
            ## 
            ## Sets the lastUpdatedDateTime property value. Last date time the report for this device was updated.
            ## @param value Value to set for the last_updated_date_time property.
            ## @return a void
            ## 
            def last_updated_date_time=(value)
                @last_updated_date_time = value
            end
            ## 
            ## Gets the osVersion property value. The OS version.
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. The OS version.
            ## @param value Value to set for the os_version property.
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
                super
                writer.write_collection_of_object_values("categorySummaries", @category_summaries)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceName", @device_name)
                writer.write_string_value("displayName", @display_name)
                writer.write_number_value("failedUpdateCount", @failed_update_count)
                writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                writer.write_string_value("osVersion", @os_version)
                writer.write_number_value("successfulUpdateCount", @successful_update_count)
                writer.write_number_value("totalUpdateCount", @total_update_count)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the successfulUpdateCount property value. Number of successful updates on the device.
            ## @return a integer
            ## 
            def successful_update_count
                return @successful_update_count
            end
            ## 
            ## Sets the successfulUpdateCount property value. Number of successful updates on the device.
            ## @param value Value to set for the successful_update_count property.
            ## @return a void
            ## 
            def successful_update_count=(value)
                @successful_update_count = value
            end
            ## 
            ## Gets the totalUpdateCount property value. Number of total updates on the device.
            ## @return a integer
            ## 
            def total_update_count
                return @total_update_count
            end
            ## 
            ## Sets the totalUpdateCount property value. Number of total updates on the device.
            ## @param value Value to set for the total_update_count property.
            ## @return a void
            ## 
            def total_update_count=(value)
                @total_update_count = value
            end
            ## 
            ## Gets the userId property value. The user ID.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The user ID.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPrincipalName property value. The user principal name
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The user principal name
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
