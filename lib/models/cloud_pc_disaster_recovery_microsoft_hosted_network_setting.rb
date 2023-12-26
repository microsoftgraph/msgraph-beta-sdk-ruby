require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcDisasterRecoveryMicrosoftHostedNetworkSetting < MicrosoftGraphBeta::Models::CloudPcDisasterRecoveryNetworkSetting
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The regionGroup property
            @region_group
            ## 
            # The regionName property
            @region_name
            ## 
            ## Instantiates a new cloudPcDisasterRecoveryMicrosoftHostedNetworkSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.cloudPcDisasterRecoveryMicrosoftHostedNetworkSetting"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_disaster_recovery_microsoft_hosted_network_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcDisasterRecoveryMicrosoftHostedNetworkSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "regionGroup" => lambda {|n| @region_group = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcRegionGroup) },
                    "regionName" => lambda {|n| @region_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the regionGroup property value. The regionGroup property
            ## @return a cloud_pc_region_group
            ## 
            def region_group
                return @region_group
            end
            ## 
            ## Sets the regionGroup property value. The regionGroup property
            ## @param value Value to set for the regionGroup property.
            ## @return a void
            ## 
            def region_group=(value)
                @region_group = value
            end
            ## 
            ## Gets the regionName property value. The regionName property
            ## @return a string
            ## 
            def region_name
                return @region_name
            end
            ## 
            ## Sets the regionName property value. The regionName property
            ## @param value Value to set for the regionName property.
            ## @return a void
            ## 
            def region_name=(value)
                @region_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("regionGroup", @region_group)
                writer.write_string_value("regionName", @region_name)
            end
        end
    end
end
