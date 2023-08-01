require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows device health monitoring configuration
        class WindowsHealthMonitoringConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible values of a property
            @allow_device_health_monitoring
            ## 
            # Specifies custom set of events collected from the device where health monitoring is enabled
            @config_device_health_monitoring_custom_scope
            ## 
            # Device health monitoring scope
            @config_device_health_monitoring_scope
            ## 
            ## Gets the allowDeviceHealthMonitoring property value. Possible values of a property
            ## @return a enablement
            ## 
            def allow_device_health_monitoring
                return @allow_device_health_monitoring
            end
            ## 
            ## Sets the allowDeviceHealthMonitoring property value. Possible values of a property
            ## @param value Value to set for the allowDeviceHealthMonitoring property.
            ## @return a void
            ## 
            def allow_device_health_monitoring=(value)
                @allow_device_health_monitoring = value
            end
            ## 
            ## Gets the configDeviceHealthMonitoringCustomScope property value. Specifies custom set of events collected from the device where health monitoring is enabled
            ## @return a string
            ## 
            def config_device_health_monitoring_custom_scope
                return @config_device_health_monitoring_custom_scope
            end
            ## 
            ## Sets the configDeviceHealthMonitoringCustomScope property value. Specifies custom set of events collected from the device where health monitoring is enabled
            ## @param value Value to set for the configDeviceHealthMonitoringCustomScope property.
            ## @return a void
            ## 
            def config_device_health_monitoring_custom_scope=(value)
                @config_device_health_monitoring_custom_scope = value
            end
            ## 
            ## Gets the configDeviceHealthMonitoringScope property value. Device health monitoring scope
            ## @return a windows_health_monitoring_scope
            ## 
            def config_device_health_monitoring_scope
                return @config_device_health_monitoring_scope
            end
            ## 
            ## Sets the configDeviceHealthMonitoringScope property value. Device health monitoring scope
            ## @param value Value to set for the configDeviceHealthMonitoringScope property.
            ## @return a void
            ## 
            def config_device_health_monitoring_scope=(value)
                @config_device_health_monitoring_scope = value
            end
            ## 
            ## Instantiates a new windowsHealthMonitoringConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsHealthMonitoringConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_health_monitoring_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsHealthMonitoringConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowDeviceHealthMonitoring" => lambda {|n| @allow_device_health_monitoring = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "configDeviceHealthMonitoringCustomScope" => lambda {|n| @config_device_health_monitoring_custom_scope = n.get_string_value() },
                    "configDeviceHealthMonitoringScope" => lambda {|n| @config_device_health_monitoring_scope = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsHealthMonitoringScope) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("allowDeviceHealthMonitoring", @allow_device_health_monitoring)
                writer.write_string_value("configDeviceHealthMonitoringCustomScope", @config_device_health_monitoring_custom_scope)
                writer.write_enum_value("configDeviceHealthMonitoringScope", @config_device_health_monitoring_scope)
            end
        end
    end
end
