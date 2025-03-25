require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsDeviceHealthStatus < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The blueScreenCount property
            @blue_screen_count
            ## 
            # The bootTotalDurationInSeconds property
            @boot_total_duration_in_seconds
            ## 
            # The deviceId property
            @device_id
            ## 
            # The deviceMake property
            @device_make
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
            # The lastUpdatedDateTime property
            @last_updated_date_time
            ## 
            # The osVersion property
            @os_version
            ## 
            # The primaryDiskType property
            @primary_disk_type
            ## 
            # The restartCount property
            @restart_count
            ## 
            # The startupPerformanceScore property
            @startup_performance_score
            ## 
            # The tenantDisplayName property
            @tenant_display_name
            ## 
            # The tenantId property
            @tenant_id
            ## 
            # The topProcesses property
            @top_processes
            ## 
            ## Gets the blueScreenCount property value. The blueScreenCount property
            ## @return a integer
            ## 
            def blue_screen_count
                return @blue_screen_count
            end
            ## 
            ## Sets the blueScreenCount property value. The blueScreenCount property
            ## @param value Value to set for the blueScreenCount property.
            ## @return a void
            ## 
            def blue_screen_count=(value)
                @blue_screen_count = value
            end
            ## 
            ## Gets the bootTotalDurationInSeconds property value. The bootTotalDurationInSeconds property
            ## @return a double
            ## 
            def boot_total_duration_in_seconds
                return @boot_total_duration_in_seconds
            end
            ## 
            ## Sets the bootTotalDurationInSeconds property value. The bootTotalDurationInSeconds property
            ## @param value Value to set for the bootTotalDurationInSeconds property.
            ## @return a void
            ## 
            def boot_total_duration_in_seconds=(value)
                @boot_total_duration_in_seconds = value
            end
            ## 
            ## Instantiates a new ManagedTenantsDeviceHealthStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_device_health_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsDeviceHealthStatus.new
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
            ## Gets the deviceMake property value. The deviceMake property
            ## @return a string
            ## 
            def device_make
                return @device_make
            end
            ## 
            ## Sets the deviceMake property value. The deviceMake property
            ## @param value Value to set for the deviceMake property.
            ## @return a void
            ## 
            def device_make=(value)
                @device_make = value
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
                    "blueScreenCount" => lambda {|n| @blue_screen_count = n.get_number_value() },
                    "bootTotalDurationInSeconds" => lambda {|n| @boot_total_duration_in_seconds = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceMake" => lambda {|n| @device_make = n.get_string_value() },
                    "deviceModel" => lambda {|n| @device_model = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "healthStatus" => lambda {|n| @health_status = n.get_string_value() },
                    "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                    "primaryDiskType" => lambda {|n| @primary_disk_type = n.get_string_value() },
                    "restartCount" => lambda {|n| @restart_count = n.get_number_value() },
                    "startupPerformanceScore" => lambda {|n| @startup_performance_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "tenantDisplayName" => lambda {|n| @tenant_display_name = n.get_string_value() },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "topProcesses" => lambda {|n| @top_processes = n.get_string_value() },
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
            ## Gets the osVersion property value. The osVersion property
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. The osVersion property
            ## @param value Value to set for the osVersion property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Gets the primaryDiskType property value. The primaryDiskType property
            ## @return a string
            ## 
            def primary_disk_type
                return @primary_disk_type
            end
            ## 
            ## Sets the primaryDiskType property value. The primaryDiskType property
            ## @param value Value to set for the primaryDiskType property.
            ## @return a void
            ## 
            def primary_disk_type=(value)
                @primary_disk_type = value
            end
            ## 
            ## Gets the restartCount property value. The restartCount property
            ## @return a integer
            ## 
            def restart_count
                return @restart_count
            end
            ## 
            ## Sets the restartCount property value. The restartCount property
            ## @param value Value to set for the restartCount property.
            ## @return a void
            ## 
            def restart_count=(value)
                @restart_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("blueScreenCount", @blue_screen_count)
                writer.write_object_value("bootTotalDurationInSeconds", @boot_total_duration_in_seconds)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceMake", @device_make)
                writer.write_string_value("deviceModel", @device_model)
                writer.write_string_value("deviceName", @device_name)
                writer.write_string_value("healthStatus", @health_status)
                writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                writer.write_string_value("osVersion", @os_version)
                writer.write_string_value("primaryDiskType", @primary_disk_type)
                writer.write_number_value("restartCount", @restart_count)
                writer.write_object_value("startupPerformanceScore", @startup_performance_score)
                writer.write_string_value("tenantDisplayName", @tenant_display_name)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_string_value("topProcesses", @top_processes)
            end
            ## 
            ## Gets the startupPerformanceScore property value. The startupPerformanceScore property
            ## @return a double
            ## 
            def startup_performance_score
                return @startup_performance_score
            end
            ## 
            ## Sets the startupPerformanceScore property value. The startupPerformanceScore property
            ## @param value Value to set for the startupPerformanceScore property.
            ## @return a void
            ## 
            def startup_performance_score=(value)
                @startup_performance_score = value
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
            ## Gets the topProcesses property value. The topProcesses property
            ## @return a string
            ## 
            def top_processes
                return @top_processes
            end
            ## 
            ## Sets the topProcesses property value. The topProcesses property
            ## @param value Value to set for the topProcesses property.
            ## @return a void
            ## 
            def top_processes=(value)
                @top_processes = value
            end
        end
    end
end
