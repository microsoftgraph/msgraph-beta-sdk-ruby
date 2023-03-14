require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsManagementAppHealthSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Healthy device count.
            @healthy_device_count
            ## 
            # Unhealthy device count.
            @unhealthy_device_count
            ## 
            # Unknown device count.
            @unknown_device_count
            ## 
            ## Instantiates a new WindowsManagementAppHealthSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_management_app_health_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsManagementAppHealthSummary.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "healthyDeviceCount" => lambda {|n| @healthy_device_count = n.get_number_value() },
                    "unhealthyDeviceCount" => lambda {|n| @unhealthy_device_count = n.get_number_value() },
                    "unknownDeviceCount" => lambda {|n| @unknown_device_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the healthyDeviceCount property value. Healthy device count.
            ## @return a integer
            ## 
            def healthy_device_count
                return @healthy_device_count
            end
            ## 
            ## Sets the healthyDeviceCount property value. Healthy device count.
            ## @param value Value to set for the healthy_device_count property.
            ## @return a void
            ## 
            def healthy_device_count=(value)
                @healthy_device_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("healthyDeviceCount", @healthy_device_count)
                writer.write_number_value("unhealthyDeviceCount", @unhealthy_device_count)
                writer.write_number_value("unknownDeviceCount", @unknown_device_count)
            end
            ## 
            ## Gets the unhealthyDeviceCount property value. Unhealthy device count.
            ## @return a integer
            ## 
            def unhealthy_device_count
                return @unhealthy_device_count
            end
            ## 
            ## Sets the unhealthyDeviceCount property value. Unhealthy device count.
            ## @param value Value to set for the unhealthy_device_count property.
            ## @return a void
            ## 
            def unhealthy_device_count=(value)
                @unhealthy_device_count = value
            end
            ## 
            ## Gets the unknownDeviceCount property value. Unknown device count.
            ## @return a integer
            ## 
            def unknown_device_count
                return @unknown_device_count
            end
            ## 
            ## Sets the unknownDeviceCount property value. Unknown device count.
            ## @param value Value to set for the unknown_device_count property.
            ## @return a void
            ## 
            def unknown_device_count=(value)
                @unknown_device_count = value
            end
        end
    end
end
