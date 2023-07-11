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
            ## Gets the averageSpikeTimeScore property value. AverageSpikeTimeScore of a device or a model type. Valid values 0 to 100
            ## @return a integer
            ## 
            def average_spike_time_score
                return @average_spike_time_score
            end
            ## 
            ## Sets the averageSpikeTimeScore property value. AverageSpikeTimeScore of a device or a model type. Valid values 0 to 100
            ## @param value Value to set for the average_spike_time_score property.
            ## @return a void
            ## 
            def average_spike_time_score=(value)
                @average_spike_time_score = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsResourcePerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
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
            ## @param value Value to set for the cpu_spike_time_percentage property.
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
            ## @param value Value to set for the cpu_spike_time_percentage_threshold property.
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
            ## @param value Value to set for the cpu_spike_time_score property.
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
            ## @param value Value to set for the device_count property.
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
            ## @param value Value to set for the device_id property.
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
            ## @param value Value to set for the device_name property.
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
            ## @param value Value to set for the device_resource_performance_score property.
            ## @return a void
            ## 
            def device_resource_performance_score=(value)
                @device_resource_performance_score = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "averageSpikeTimeScore" => lambda {|n| @average_spike_time_score = n.get_number_value() },
                    "cpuSpikeTimePercentage" => lambda {|n| @cpu_spike_time_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "cpuSpikeTimePercentageThreshold" => lambda {|n| @cpu_spike_time_percentage_threshold = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "cpuSpikeTimeScore" => lambda {|n| @cpu_spike_time_score = n.get_number_value() },
                    "deviceCount" => lambda {|n| @device_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "deviceResourcePerformanceScore" => lambda {|n| @device_resource_performance_score = n.get_number_value() },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "ramSpikeTimePercentage" => lambda {|n| @ram_spike_time_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "ramSpikeTimePercentageThreshold" => lambda {|n| @ram_spike_time_percentage_threshold = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "ramSpikeTimeScore" => lambda {|n| @ram_spike_time_score = n.get_number_value() },
                })
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
            ## @param value Value to set for the ram_spike_time_percentage property.
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
            ## @param value Value to set for the ram_spike_time_percentage_threshold property.
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
            ## @param value Value to set for the ram_spike_time_score property.
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
                writer.write_object_value("cpuSpikeTimePercentage", @cpu_spike_time_percentage)
                writer.write_object_value("cpuSpikeTimePercentageThreshold", @cpu_spike_time_percentage_threshold)
                writer.write_number_value("cpuSpikeTimeScore", @cpu_spike_time_score)
                writer.write_object_value("deviceCount", @device_count)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceName", @device_name)
                writer.write_number_value("deviceResourcePerformanceScore", @device_resource_performance_score)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_object_value("ramSpikeTimePercentage", @ram_spike_time_percentage)
                writer.write_object_value("ramSpikeTimePercentageThreshold", @ram_spike_time_percentage_threshold)
                writer.write_number_value("ramSpikeTimeScore", @ram_spike_time_score)
            end
        end
    end
end
