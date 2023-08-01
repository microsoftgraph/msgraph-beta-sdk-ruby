require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class AppPerformance < MicrosoftGraphBeta::Models::Entity
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
                # The lastUpdatedDateTime property
                @last_updated_date_time
                ## 
                # The meanTimeToFailureInMinutes property
                @mean_time_to_failure_in_minutes
                ## 
                # The tenantDisplayName property
                @tenant_display_name
                ## 
                # The tenantId property
                @tenant_id
                ## 
                # The totalActiveDeviceCount property
                @total_active_device_count
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
                ## Instantiates a new appPerformance and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a app_performance
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return AppPerformance.new
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
                        "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                        "meanTimeToFailureInMinutes" => lambda {|n| @mean_time_to_failure_in_minutes = n.get_number_value() },
                        "tenantDisplayName" => lambda {|n| @tenant_display_name = n.get_string_value() },
                        "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                        "totalActiveDeviceCount" => lambda {|n| @total_active_device_count = n.get_number_value() },
                        "totalAppCrashCount" => lambda {|n| @total_app_crash_count = n.get_number_value() },
                        "totalAppFreezeCount" => lambda {|n| @total_app_freeze_count = n.get_number_value() },
                    })
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
                ## Gets the meanTimeToFailureInMinutes property value. The meanTimeToFailureInMinutes property
                ## @return a integer
                ## 
                def mean_time_to_failure_in_minutes
                    return @mean_time_to_failure_in_minutes
                end
                ## 
                ## Sets the meanTimeToFailureInMinutes property value. The meanTimeToFailureInMinutes property
                ## @param value Value to set for the meanTimeToFailureInMinutes property.
                ## @return a void
                ## 
                def mean_time_to_failure_in_minutes=(value)
                    @mean_time_to_failure_in_minutes = value
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
                    writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                    writer.write_number_value("meanTimeToFailureInMinutes", @mean_time_to_failure_in_minutes)
                    writer.write_string_value("tenantDisplayName", @tenant_display_name)
                    writer.write_string_value("tenantId", @tenant_id)
                    writer.write_number_value("totalActiveDeviceCount", @total_active_device_count)
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
                ## Gets the totalActiveDeviceCount property value. The totalActiveDeviceCount property
                ## @return a integer
                ## 
                def total_active_device_count
                    return @total_active_device_count
                end
                ## 
                ## Sets the totalActiveDeviceCount property value. The totalActiveDeviceCount property
                ## @param value Value to set for the totalActiveDeviceCount property.
                ## @return a void
                ## 
                def total_active_device_count=(value)
                    @total_active_device_count = value
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
end
