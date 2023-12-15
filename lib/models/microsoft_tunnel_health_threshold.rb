require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity that represents the health thresholds of a health metric
        class MicrosoftTunnelHealthThreshold < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The threshold for being healthy based on default health status metrics: CPU usage healthy < 50%, Memory usage healthy < 50%, Disk space healthy > 5GB, Latency healthy < 10ms, health metrics can be customized. Read-only.
            @default_healthy_threshold
            ## 
            # The threshold for being unhealthy based on default health status metrics: CPU usage unhealthy > 75%, Memory usage unhealthy > 75%, Disk space < 3GB, Latency unhealthy > 20ms, health metrics can be customized. Read-only.
            @default_unhealthy_threshold
            ## 
            # The threshold for being healthy based on default health status metrics: CPU usage healthy < 50%, Memory usage healthy < 50%, Disk space healthy > 5GB, Latency healthy < 10ms, health metrics can be customized.
            @healthy_threshold
            ## 
            # The threshold for being unhealthy based on default health status metrics: CPU usage unhealthy > 75%, Memory usage unhealthy > 75%, Disk space < 3GB, Latency Unhealthy > 20ms, health metrics can be customized.
            @unhealthy_threshold
            ## 
            ## Instantiates a new microsoftTunnelHealthThreshold and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a microsoft_tunnel_health_threshold
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MicrosoftTunnelHealthThreshold.new
            end
            ## 
            ## Gets the defaultHealthyThreshold property value. The threshold for being healthy based on default health status metrics: CPU usage healthy < 50%, Memory usage healthy < 50%, Disk space healthy > 5GB, Latency healthy < 10ms, health metrics can be customized. Read-only.
            ## @return a int64
            ## 
            def default_healthy_threshold
                return @default_healthy_threshold
            end
            ## 
            ## Sets the defaultHealthyThreshold property value. The threshold for being healthy based on default health status metrics: CPU usage healthy < 50%, Memory usage healthy < 50%, Disk space healthy > 5GB, Latency healthy < 10ms, health metrics can be customized. Read-only.
            ## @param value Value to set for the defaultHealthyThreshold property.
            ## @return a void
            ## 
            def default_healthy_threshold=(value)
                @default_healthy_threshold = value
            end
            ## 
            ## Gets the defaultUnhealthyThreshold property value. The threshold for being unhealthy based on default health status metrics: CPU usage unhealthy > 75%, Memory usage unhealthy > 75%, Disk space < 3GB, Latency unhealthy > 20ms, health metrics can be customized. Read-only.
            ## @return a int64
            ## 
            def default_unhealthy_threshold
                return @default_unhealthy_threshold
            end
            ## 
            ## Sets the defaultUnhealthyThreshold property value. The threshold for being unhealthy based on default health status metrics: CPU usage unhealthy > 75%, Memory usage unhealthy > 75%, Disk space < 3GB, Latency unhealthy > 20ms, health metrics can be customized. Read-only.
            ## @param value Value to set for the defaultUnhealthyThreshold property.
            ## @return a void
            ## 
            def default_unhealthy_threshold=(value)
                @default_unhealthy_threshold = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "defaultHealthyThreshold" => lambda {|n| @default_healthy_threshold = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "defaultUnhealthyThreshold" => lambda {|n| @default_unhealthy_threshold = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "healthyThreshold" => lambda {|n| @healthy_threshold = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "unhealthyThreshold" => lambda {|n| @unhealthy_threshold = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the healthyThreshold property value. The threshold for being healthy based on default health status metrics: CPU usage healthy < 50%, Memory usage healthy < 50%, Disk space healthy > 5GB, Latency healthy < 10ms, health metrics can be customized.
            ## @return a int64
            ## 
            def healthy_threshold
                return @healthy_threshold
            end
            ## 
            ## Sets the healthyThreshold property value. The threshold for being healthy based on default health status metrics: CPU usage healthy < 50%, Memory usage healthy < 50%, Disk space healthy > 5GB, Latency healthy < 10ms, health metrics can be customized.
            ## @param value Value to set for the healthyThreshold property.
            ## @return a void
            ## 
            def healthy_threshold=(value)
                @healthy_threshold = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("defaultHealthyThreshold", @default_healthy_threshold)
                writer.write_object_value("defaultUnhealthyThreshold", @default_unhealthy_threshold)
                writer.write_object_value("healthyThreshold", @healthy_threshold)
                writer.write_object_value("unhealthyThreshold", @unhealthy_threshold)
            end
            ## 
            ## Gets the unhealthyThreshold property value. The threshold for being unhealthy based on default health status metrics: CPU usage unhealthy > 75%, Memory usage unhealthy > 75%, Disk space < 3GB, Latency Unhealthy > 20ms, health metrics can be customized.
            ## @return a int64
            ## 
            def unhealthy_threshold
                return @unhealthy_threshold
            end
            ## 
            ## Sets the unhealthyThreshold property value. The threshold for being unhealthy based on default health status metrics: CPU usage unhealthy > 75%, Memory usage unhealthy > 75%, Disk space < 3GB, Latency Unhealthy > 20ms, health metrics can be customized.
            ## @param value Value to set for the unhealthyThreshold property.
            ## @return a void
            ## 
            def unhealthy_threshold=(value)
                @unhealthy_threshold = value
            end
        end
    end
end
