require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsDeviceAppPerformance < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The appFriendlyName property
            @app_friendly_name
            ## 
            # The appName property
            @app_name
            ## 
            # The appPublisher property
            @app_publisher
            ## 
            # The appVersion property
            @app_version
            ## 
            # The deviceId property
            @device_id
            ## 
            # The deviceManufacturer property
            @device_manufacturer
            ## 
            # The deviceModel property
            @device_model
            ## 
            # The deviceName property
            @device_name
            ## 
            # The healthStatus property
            @health_status
            ## 
            # The isLatestUsedVersion property
            @is_latest_used_version
            ## 
            # The isMostUsedVersion property
            @is_most_used_version
            ## 
            # The lastUpdatedDateTime property
            @last_updated_date_time
            ## 
            # The tenantDisplayName property
            @tenant_display_name
            ## 
            # The tenantId property
            @tenant_id
            ## 
            # The totalAppCrashCount property
            @total_app_crash_count
            ## 
            # The totalAppFreezeCount property
            @total_app_freeze_count
            ## 
            ## Gets the appFriendlyName property value. The appFriendlyName property
            ## @return a string
            ## 
            def app_friendly_name
                return @app_friendly_name
            end
            ## 
            ## Sets the appFriendlyName property value. The appFriendlyName property
            ## @param value Value to set for the appFriendlyName property.
            ## @return a void
            ## 
            def app_friendly_name=(value)
                @app_friendly_name = value
            end
            ## 
            ## Gets the appName property value. The appName property
            ## @return a string
            ## 
            def app_name
                return @app_name
            end
            ## 
            ## Sets the appName property value. The appName property
            ## @param value Value to set for the appName property.
            ## @return a void
            ## 
            def app_name=(value)
                @app_name = value
            end
            ## 
            ## Gets the appPublisher property value. The appPublisher property
            ## @return a string
            ## 
            def app_publisher
                return @app_publisher
            end
            ## 
            ## Sets the appPublisher property value. The appPublisher property
            ## @param value Value to set for the appPublisher property.
            ## @return a void
            ## 
            def app_publisher=(value)
                @app_publisher = value
            end
            ## 
            ## Gets the appVersion property value. The appVersion property
            ## @return a string
            ## 
            def app_version
                return @app_version
            end
            ## 
            ## Sets the appVersion property value. The appVersion property
            ## @param value Value to set for the appVersion property.
            ## @return a void
            ## 
            def app_version=(value)
                @app_version = value
            end
            ## 
            ## Instantiates a new ManagedTenantsDeviceAppPerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_device_app_performance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsDeviceAppPerformance.new
            end
            ## 
            ## Gets the deviceId property value. The deviceId property
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The deviceId property
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceManufacturer property value. The deviceManufacturer property
            ## @return a string
            ## 
            def device_manufacturer
                return @device_manufacturer
            end
            ## 
            ## Sets the deviceManufacturer property value. The deviceManufacturer property
            ## @param value Value to set for the deviceManufacturer property.
            ## @return a void
            ## 
            def device_manufacturer=(value)
                @device_manufacturer = value
            end
            ## 
            ## Gets the deviceModel property value. The deviceModel property
            ## @return a string
            ## 
            def device_model
                return @device_model
            end
            ## 
            ## Sets the deviceModel property value. The deviceModel property
            ## @param value Value to set for the deviceModel property.
            ## @return a void
            ## 
            def device_model=(value)
                @device_model = value
            end
            ## 
            ## Gets the deviceName property value. The deviceName property
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The deviceName property
            ## @param value Value to set for the deviceName property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appFriendlyName" => lambda {|n| @app_friendly_name = n.get_string_value() },
                    "appName" => lambda {|n| @app_name = n.get_string_value() },
                    "appPublisher" => lambda {|n| @app_publisher = n.get_string_value() },
                    "appVersion" => lambda {|n| @app_version = n.get_string_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceManufacturer" => lambda {|n| @device_manufacturer = n.get_string_value() },
                    "deviceModel" => lambda {|n| @device_model = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "healthStatus" => lambda {|n| @health_status = n.get_string_value() },
                    "isLatestUsedVersion" => lambda {|n| @is_latest_used_version = n.get_number_value() },
                    "isMostUsedVersion" => lambda {|n| @is_most_used_version = n.get_number_value() },
                    "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                    "tenantDisplayName" => lambda {|n| @tenant_display_name = n.get_string_value() },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "totalAppCrashCount" => lambda {|n| @total_app_crash_count = n.get_number_value() },
                    "totalAppFreezeCount" => lambda {|n| @total_app_freeze_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the healthStatus property value. The healthStatus property
            ## @return a string
            ## 
            def health_status
                return @health_status
            end
            ## 
            ## Sets the healthStatus property value. The healthStatus property
            ## @param value Value to set for the healthStatus property.
            ## @return a void
            ## 
            def health_status=(value)
                @health_status = value
            end
            ## 
            ## Gets the isLatestUsedVersion property value. The isLatestUsedVersion property
            ## @return a integer
            ## 
            def is_latest_used_version
                return @is_latest_used_version
            end
            ## 
            ## Sets the isLatestUsedVersion property value. The isLatestUsedVersion property
            ## @param value Value to set for the isLatestUsedVersion property.
            ## @return a void
            ## 
            def is_latest_used_version=(value)
                @is_latest_used_version = value
            end
            ## 
            ## Gets the isMostUsedVersion property value. The isMostUsedVersion property
            ## @return a integer
            ## 
            def is_most_used_version
                return @is_most_used_version
            end
            ## 
            ## Sets the isMostUsedVersion property value. The isMostUsedVersion property
            ## @param value Value to set for the isMostUsedVersion property.
            ## @return a void
            ## 
            def is_most_used_version=(value)
                @is_most_used_version = value
            end
            ## 
            ## Gets the lastUpdatedDateTime property value. The lastUpdatedDateTime property
            ## @return a date_time
            ## 
            def last_updated_date_time
                return @last_updated_date_time
            end
            ## 
            ## Sets the lastUpdatedDateTime property value. The lastUpdatedDateTime property
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
                writer.write_string_value("appFriendlyName", @app_friendly_name)
                writer.write_string_value("appName", @app_name)
                writer.write_string_value("appPublisher", @app_publisher)
                writer.write_string_value("appVersion", @app_version)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceManufacturer", @device_manufacturer)
                writer.write_string_value("deviceModel", @device_model)
                writer.write_string_value("deviceName", @device_name)
                writer.write_string_value("healthStatus", @health_status)
                writer.write_number_value("isLatestUsedVersion", @is_latest_used_version)
                writer.write_number_value("isMostUsedVersion", @is_most_used_version)
                writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                writer.write_string_value("tenantDisplayName", @tenant_display_name)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_number_value("totalAppCrashCount", @total_app_crash_count)
                writer.write_number_value("totalAppFreezeCount", @total_app_freeze_count)
            end
            ## 
            ## Gets the tenantDisplayName property value. The tenantDisplayName property
            ## @return a string
            ## 
            def tenant_display_name
                return @tenant_display_name
            end
            ## 
            ## Sets the tenantDisplayName property value. The tenantDisplayName property
            ## @param value Value to set for the tenantDisplayName property.
            ## @return a void
            ## 
            def tenant_display_name=(value)
                @tenant_display_name = value
            end
            ## 
            ## Gets the tenantId property value. The tenantId property
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The tenantId property
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the totalAppCrashCount property value. The totalAppCrashCount property
            ## @return a integer
            ## 
            def total_app_crash_count
                return @total_app_crash_count
            end
            ## 
            ## Sets the totalAppCrashCount property value. The totalAppCrashCount property
            ## @param value Value to set for the totalAppCrashCount property.
            ## @return a void
            ## 
            def total_app_crash_count=(value)
                @total_app_crash_count = value
            end
            ## 
            ## Gets the totalAppFreezeCount property value. The totalAppFreezeCount property
            ## @return a integer
            ## 
            def total_app_freeze_count
                return @total_app_freeze_count
            end
            ## 
            ## Sets the totalAppFreezeCount property value. The totalAppFreezeCount property
            ## @param value Value to set for the totalAppFreezeCount property.
            ## @return a void
            ## 
            def total_app_freeze_count=(value)
                @total_app_freeze_count = value
            end
        end
    end
end
