require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics resource performance entity.
        class UserExperienceAnalyticsResourcePerformance < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # AverageSpikeTimeScore of a device or a model type. Valid values 0 to 100
            @average_spike_time_score
            ## 
            # The clock speed of the processor, in MHz. Valid values 0 to 1000000
            @cpu_clock_speed_in_m_hz
            ## 
            # The name of the processor on the device, For example, 11th Gen Intel(R) Core(TM) i7.
            @cpu_display_name
            ## 
            # CPU spike time in percentage. Valid values 0 to 100
            @cpu_spike_time_percentage
            ## 
            # Threshold of cpuSpikeTimeScore. Valid values 0 to 100
            @cpu_spike_time_percentage_threshold
            ## 
            # The user experience analytics device CPU spike time score. Valid values 0 to 100
            @cpu_spike_time_score
            ## 
            # User experience analytics summarized device count.
            @device_count
            ## 
            # The id of the device.
            @device_id
            ## 
            # The name of the device.
            @device_name
            ## 
            # Resource performance score of a specific device. Valid values 0 to 100
            @device_resource_performance_score
            ## 
            # The diskType property
            @disk_type
            ## 
            # The healthStatus property
            @health_status
            ## 
            # Indicates if machine is physical or virtual. Possible values are: physical or virtual
            @machine_type
            ## 
            # The user experience analytics device manufacturer.
            @manufacturer
            ## 
            # The user experience analytics device model.
            @model
            ## 
            # RAM spike time in percentage. Valid values 0 to 100
            @ram_spike_time_percentage
            ## 
            # Threshold of ramSpikeTimeScore. Valid values 0 to 100
            @ram_spike_time_percentage_threshold
            ## 
            # The user experience analytics device RAM spike time score. Valid values 0 to 100
            @ram_spike_time_score
            ## 
            # The count of cores of the processor of device. Valid values 0 to 512
            @total_processor_core_count
            ## 
            # The total RAM of the device, in MB. Valid values 0 to 1000000
            @total_ram_in_m_b
            ## 
            ## Gets the averageSpikeTimeScore property value. AverageSpikeTimeScore of a device or a model type. Valid values 0 to 100
            ## @return a integer
            ## 
            def average_spike_time_score
                return @average_spike_time_score
            end
            ## 
            ## Sets the averageSpikeTimeScore property value. AverageSpikeTimeScore of a device or a model type. Valid values 0 to 100
            ## @param value Value to set for the averageSpikeTimeScore property.
            ## @return a void
            ## 
            def average_spike_time_score=(value)
                @average_spike_time_score = value
            end
            ## 
            ## Instantiates a new UserExperienceAnalyticsResourcePerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the cpuClockSpeedInMHz property value. The clock speed of the processor, in MHz. Valid values 0 to 1000000
            ## @return a double
            ## 
            def cpu_clock_speed_in_m_hz
                return @cpu_clock_speed_in_m_hz
            end
            ## 
            ## Sets the cpuClockSpeedInMHz property value. The clock speed of the processor, in MHz. Valid values 0 to 1000000
            ## @param value Value to set for the cpuClockSpeedInMHz property.
            ## @return a void
            ## 
            def cpu_clock_speed_in_m_hz=(value)
                @cpu_clock_speed_in_m_hz = value
            end
            ## 
            ## Gets the cpuDisplayName property value. The name of the processor on the device, For example, 11th Gen Intel(R) Core(TM) i7.
            ## @return a string
            ## 
            def cpu_display_name
                return @cpu_display_name
            end
            ## 
            ## Sets the cpuDisplayName property value. The name of the processor on the device, For example, 11th Gen Intel(R) Core(TM) i7.
            ## @param value Value to set for the cpuDisplayName property.
            ## @return a void
            ## 
            def cpu_display_name=(value)
                @cpu_display_name = value
            end
            ## 
            ## Gets the cpuSpikeTimePercentage property value. CPU spike time in percentage. Valid values 0 to 100
            ## @return a double
            ## 
            def cpu_spike_time_percentage
                return @cpu_spike_time_percentage
            end
            ## 
            ## Sets the cpuSpikeTimePercentage property value. CPU spike time in percentage. Valid values 0 to 100
            ## @param value Value to set for the cpuSpikeTimePercentage property.
            ## @return a void
            ## 
            def cpu_spike_time_percentage=(value)
                @cpu_spike_time_percentage = value
            end
            ## 
            ## Gets the cpuSpikeTimePercentageThreshold property value. Threshold of cpuSpikeTimeScore. Valid values 0 to 100
            ## @return a double
            ## 
            def cpu_spike_time_percentage_threshold
                return @cpu_spike_time_percentage_threshold
            end
            ## 
            ## Sets the cpuSpikeTimePercentageThreshold property value. Threshold of cpuSpikeTimeScore. Valid values 0 to 100
            ## @param value Value to set for the cpuSpikeTimePercentageThreshold property.
            ## @return a void
            ## 
            def cpu_spike_time_percentage_threshold=(value)
                @cpu_spike_time_percentage_threshold = value
            end
            ## 
            ## Gets the cpuSpikeTimeScore property value. The user experience analytics device CPU spike time score. Valid values 0 to 100
            ## @return a integer
            ## 
            def cpu_spike_time_score
                return @cpu_spike_time_score
            end
            ## 
            ## Sets the cpuSpikeTimeScore property value. The user experience analytics device CPU spike time score. Valid values 0 to 100
            ## @param value Value to set for the cpuSpikeTimeScore property.
            ## @return a void
            ## 
            def cpu_spike_time_score=(value)
                @cpu_spike_time_score = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_resource_performance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsResourcePerformance.new
            end
            ## 
            ## Gets the deviceCount property value. User experience analytics summarized device count.
            ## @return a int64
            ## 
            def device_count
                return @device_count
            end
            ## 
            ## Sets the deviceCount property value. User experience analytics summarized device count.
            ## @param value Value to set for the deviceCount property.
            ## @return a void
            ## 
            def device_count=(value)
                @device_count = value
            end
            ## 
            ## Gets the deviceId property value. The id of the device.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The id of the device.
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceName property value. The name of the device.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The name of the device.
            ## @param value Value to set for the deviceName property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the deviceResourcePerformanceScore property value. Resource performance score of a specific device. Valid values 0 to 100
            ## @return a integer
            ## 
            def device_resource_performance_score
                return @device_resource_performance_score
            end
            ## 
            ## Sets the deviceResourcePerformanceScore property value. Resource performance score of a specific device. Valid values 0 to 100
            ## @param value Value to set for the deviceResourcePerformanceScore property.
            ## @return a void
            ## 
            def device_resource_performance_score=(value)
                @device_resource_performance_score = value
            end
            ## 
            ## Gets the diskType property value. The diskType property
            ## @return a disk_type
            ## 
            def disk_type
                return @disk_type
            end
            ## 
            ## Sets the diskType property value. The diskType property
            ## @param value Value to set for the diskType property.
            ## @return a void
            ## 
            def disk_type=(value)
                @disk_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "averageSpikeTimeScore" => lambda {|n| @average_spike_time_score = n.get_number_value() },
                    "cpuClockSpeedInMHz" => lambda {|n| @cpu_clock_speed_in_m_hz = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "cpuDisplayName" => lambda {|n| @cpu_display_name = n.get_string_value() },
                    "cpuSpikeTimePercentage" => lambda {|n| @cpu_spike_time_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "cpuSpikeTimePercentageThreshold" => lambda {|n| @cpu_spike_time_percentage_threshold = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "cpuSpikeTimeScore" => lambda {|n| @cpu_spike_time_score = n.get_number_value() },
                    "deviceCount" => lambda {|n| @device_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "deviceResourcePerformanceScore" => lambda {|n| @device_resource_performance_score = n.get_number_value() },
                    "diskType" => lambda {|n| @disk_type = n.get_enum_value(MicrosoftGraphBeta::Models::DiskType) },
                    "healthStatus" => lambda {|n| @health_status = n.get_enum_value(MicrosoftGraphBeta::Models::UserExperienceAnalyticsHealthState) },
                    "machineType" => lambda {|n| @machine_type = n.get_enum_value(MicrosoftGraphBeta::Models::UserExperienceAnalyticsMachineType) },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "ramSpikeTimePercentage" => lambda {|n| @ram_spike_time_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "ramSpikeTimePercentageThreshold" => lambda {|n| @ram_spike_time_percentage_threshold = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "ramSpikeTimeScore" => lambda {|n| @ram_spike_time_score = n.get_number_value() },
                    "totalProcessorCoreCount" => lambda {|n| @total_processor_core_count = n.get_number_value() },
                    "totalRamInMB" => lambda {|n| @total_ram_in_m_b = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the healthStatus property value. The healthStatus property
            ## @return a user_experience_analytics_health_state
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
            ## Gets the machineType property value. Indicates if machine is physical or virtual. Possible values are: physical or virtual
            ## @return a user_experience_analytics_machine_type
            ## 
            def machine_type
                return @machine_type
            end
            ## 
            ## Sets the machineType property value. Indicates if machine is physical or virtual. Possible values are: physical or virtual
            ## @param value Value to set for the machineType property.
            ## @return a void
            ## 
            def machine_type=(value)
                @machine_type = value
            end
            ## 
            ## Gets the manufacturer property value. The user experience analytics device manufacturer.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. The user experience analytics device manufacturer.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. The user experience analytics device model.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. The user experience analytics device model.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the ramSpikeTimePercentage property value. RAM spike time in percentage. Valid values 0 to 100
            ## @return a double
            ## 
            def ram_spike_time_percentage
                return @ram_spike_time_percentage
            end
            ## 
            ## Sets the ramSpikeTimePercentage property value. RAM spike time in percentage. Valid values 0 to 100
            ## @param value Value to set for the ramSpikeTimePercentage property.
            ## @return a void
            ## 
            def ram_spike_time_percentage=(value)
                @ram_spike_time_percentage = value
            end
            ## 
            ## Gets the ramSpikeTimePercentageThreshold property value. Threshold of ramSpikeTimeScore. Valid values 0 to 100
            ## @return a double
            ## 
            def ram_spike_time_percentage_threshold
                return @ram_spike_time_percentage_threshold
            end
            ## 
            ## Sets the ramSpikeTimePercentageThreshold property value. Threshold of ramSpikeTimeScore. Valid values 0 to 100
            ## @param value Value to set for the ramSpikeTimePercentageThreshold property.
            ## @return a void
            ## 
            def ram_spike_time_percentage_threshold=(value)
                @ram_spike_time_percentage_threshold = value
            end
            ## 
            ## Gets the ramSpikeTimeScore property value. The user experience analytics device RAM spike time score. Valid values 0 to 100
            ## @return a integer
            ## 
            def ram_spike_time_score
                return @ram_spike_time_score
            end
            ## 
            ## Sets the ramSpikeTimeScore property value. The user experience analytics device RAM spike time score. Valid values 0 to 100
            ## @param value Value to set for the ramSpikeTimeScore property.
            ## @return a void
            ## 
            def ram_spike_time_score=(value)
                @ram_spike_time_score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("averageSpikeTimeScore", @average_spike_time_score)
                writer.write_object_value("cpuClockSpeedInMHz", @cpu_clock_speed_in_m_hz)
                writer.write_string_value("cpuDisplayName", @cpu_display_name)
                writer.write_object_value("cpuSpikeTimePercentage", @cpu_spike_time_percentage)
                writer.write_object_value("cpuSpikeTimePercentageThreshold", @cpu_spike_time_percentage_threshold)
                writer.write_number_value("cpuSpikeTimeScore", @cpu_spike_time_score)
                writer.write_object_value("deviceCount", @device_count)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceName", @device_name)
                writer.write_number_value("deviceResourcePerformanceScore", @device_resource_performance_score)
                writer.write_enum_value("diskType", @disk_type)
                writer.write_enum_value("healthStatus", @health_status)
                writer.write_enum_value("machineType", @machine_type)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_object_value("ramSpikeTimePercentage", @ram_spike_time_percentage)
                writer.write_object_value("ramSpikeTimePercentageThreshold", @ram_spike_time_percentage_threshold)
                writer.write_number_value("ramSpikeTimeScore", @ram_spike_time_score)
                writer.write_number_value("totalProcessorCoreCount", @total_processor_core_count)
                writer.write_object_value("totalRamInMB", @total_ram_in_m_b)
            end
            ## 
            ## Gets the totalProcessorCoreCount property value. The count of cores of the processor of device. Valid values 0 to 512
            ## @return a integer
            ## 
            def total_processor_core_count
                return @total_processor_core_count
            end
            ## 
            ## Sets the totalProcessorCoreCount property value. The count of cores of the processor of device. Valid values 0 to 512
            ## @param value Value to set for the totalProcessorCoreCount property.
            ## @return a void
            ## 
            def total_processor_core_count=(value)
                @total_processor_core_count = value
            end
            ## 
            ## Gets the totalRamInMB property value. The total RAM of the device, in MB. Valid values 0 to 1000000
            ## @return a double
            ## 
            def total_ram_in_m_b
                return @total_ram_in_m_b
            end
            ## 
            ## Sets the totalRamInMB property value. The total RAM of the device, in MB. Valid values 0 to 1000000
            ## @param value Value to set for the totalRamInMB property.
            ## @return a void
            ## 
            def total_ram_in_m_b=(value)
                @total_ram_in_m_b = value
            end
        end
    end
end
