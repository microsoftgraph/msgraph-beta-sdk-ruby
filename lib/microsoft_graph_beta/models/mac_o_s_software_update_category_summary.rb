require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # MacOS software update category summary report for a device and user
    class MacOSSoftwareUpdateCategorySummary < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The device ID.
        @device_id
        ## 
        # The name of the report
        @display_name
        ## 
        # Number of failed updates on the device
        @failed_update_count
        ## 
        # Last date time the report for this device was updated.
        @last_updated_date_time
        ## 
        # Number of successful updates on the device
        @successful_update_count
        ## 
        # Number of total updates on the device
        @total_update_count
        ## 
        # MacOS Software Update Category
        @update_category
        ## 
        # Summary of the update states.
        @update_state_summaries
        ## 
        # The user ID.
        @user_id
        ## 
        ## Instantiates a new macOSSoftwareUpdateCategorySummary and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a mac_o_s_software_update_category_summary
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MacOSSoftwareUpdateCategorySummary.new
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
        ## @param value Value to set for the deviceId property.
        ## @return a void
        ## 
        def device_id=(value)
            @device_id = value
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
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the failedUpdateCount property value. Number of failed updates on the device
        ## @return a integer
        ## 
        def failed_update_count
            return @failed_update_count
        end
        ## 
        ## Sets the failedUpdateCount property value. Number of failed updates on the device
        ## @param value Value to set for the failedUpdateCount property.
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
                "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "failedUpdateCount" => lambda {|n| @failed_update_count = n.get_number_value() },
                "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                "successfulUpdateCount" => lambda {|n| @successful_update_count = n.get_number_value() },
                "totalUpdateCount" => lambda {|n| @total_update_count = n.get_number_value() },
                "updateCategory" => lambda {|n| @update_category = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSSoftwareUpdateCategory) },
                "updateStateSummaries" => lambda {|n| @update_state_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MacOSSoftwareUpdateStateSummary.create_from_discriminator_value(pn) }) },
                "userId" => lambda {|n| @user_id = n.get_string_value() },
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
        ## @param value Value to set for the lastUpdatedDateTime property.
        ## @return a void
        ## 
        def last_updated_date_time=(value)
            @last_updated_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("deviceId", @device_id)
            writer.write_string_value("displayName", @display_name)
            writer.write_number_value("failedUpdateCount", @failed_update_count)
            writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
            writer.write_number_value("successfulUpdateCount", @successful_update_count)
            writer.write_number_value("totalUpdateCount", @total_update_count)
            writer.write_enum_value("updateCategory", @update_category)
            writer.write_collection_of_object_values("updateStateSummaries", @update_state_summaries)
            writer.write_string_value("userId", @user_id)
        end
        ## 
        ## Gets the successfulUpdateCount property value. Number of successful updates on the device
        ## @return a integer
        ## 
        def successful_update_count
            return @successful_update_count
        end
        ## 
        ## Sets the successfulUpdateCount property value. Number of successful updates on the device
        ## @param value Value to set for the successfulUpdateCount property.
        ## @return a void
        ## 
        def successful_update_count=(value)
            @successful_update_count = value
        end
        ## 
        ## Gets the totalUpdateCount property value. Number of total updates on the device
        ## @return a integer
        ## 
        def total_update_count
            return @total_update_count
        end
        ## 
        ## Sets the totalUpdateCount property value. Number of total updates on the device
        ## @param value Value to set for the totalUpdateCount property.
        ## @return a void
        ## 
        def total_update_count=(value)
            @total_update_count = value
        end
        ## 
        ## Gets the updateCategory property value. MacOS Software Update Category
        ## @return a mac_o_s_software_update_category
        ## 
        def update_category
            return @update_category
        end
        ## 
        ## Sets the updateCategory property value. MacOS Software Update Category
        ## @param value Value to set for the updateCategory property.
        ## @return a void
        ## 
        def update_category=(value)
            @update_category = value
        end
        ## 
        ## Gets the updateStateSummaries property value. Summary of the update states.
        ## @return a mac_o_s_software_update_state_summary
        ## 
        def update_state_summaries
            return @update_state_summaries
        end
        ## 
        ## Sets the updateStateSummaries property value. Summary of the update states.
        ## @param value Value to set for the updateStateSummaries property.
        ## @return a void
        ## 
        def update_state_summaries=(value)
            @update_state_summaries = value
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
        ## @param value Value to set for the userId property.
        ## @return a void
        ## 
        def user_id=(value)
            @user_id = value
        end
    end
end
