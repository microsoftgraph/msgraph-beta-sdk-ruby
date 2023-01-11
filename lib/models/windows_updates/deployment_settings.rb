require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class DeploymentSettings
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Settings governing conditions to monitor and automated actions to take.
        @monitoring
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Settings governing how the content is rolled out.
        @rollout
        ## 
        # Settings governing safeguard holds on offering content.
        @safeguard
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new deploymentSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a deployment_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.windowsUpdates.windowsDeploymentSettings"
                        return WindowsDeploymentSettings.new
                end
            end
            return DeploymentSettings.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "monitoring" => lambda {|n| @monitoring = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::MonitoringSettings.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "rollout" => lambda {|n| @rollout = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::RolloutSettings.create_from_discriminator_value(pn) }) },
                "safeguard" => lambda {|n| @safeguard = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::SafeguardSettings.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the monitoring property value. Settings governing conditions to monitor and automated actions to take.
        ## @return a monitoring_settings
        ## 
        def monitoring
            return @monitoring
        end
        ## 
        ## Sets the monitoring property value. Settings governing conditions to monitor and automated actions to take.
        ## @param value Value to set for the monitoring property.
        ## @return a void
        ## 
        def monitoring=(value)
            @monitoring = value
        end
        ## 
        ## Gets the @odata.type property value. The OdataType property
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. The OdataType property
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the rollout property value. Settings governing how the content is rolled out.
        ## @return a rollout_settings
        ## 
        def rollout
            return @rollout
        end
        ## 
        ## Sets the rollout property value. Settings governing how the content is rolled out.
        ## @param value Value to set for the rollout property.
        ## @return a void
        ## 
        def rollout=(value)
            @rollout = value
        end
        ## 
        ## Gets the safeguard property value. Settings governing safeguard holds on offering content.
        ## @return a safeguard_settings
        ## 
        def safeguard
            return @safeguard
        end
        ## 
        ## Sets the safeguard property value. Settings governing safeguard holds on offering content.
        ## @param value Value to set for the safeguard property.
        ## @return a void
        ## 
        def safeguard=(value)
            @safeguard = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("monitoring", @monitoring)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_object_value("rollout", @rollout)
            writer.write_object_value("safeguard", @safeguard)
            writer.write_additional_data(@additional_data)
        end
    end
end
