require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcCrossRegionDisasterRecoverySetting
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The crossRegionDisasterRecoveryEnabled property
            @cross_region_disaster_recovery_enabled
            ## 
            # The disasterRecoveryNetworkSetting property
            @disaster_recovery_network_setting
            ## 
            # The maintainCrossRegionRestorePointEnabled property
            @maintain_cross_region_restore_point_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new cloudPcCrossRegionDisasterRecoverySetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_cross_region_disaster_recovery_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcCrossRegionDisasterRecoverySetting.new
            end
            ## 
            ## Gets the crossRegionDisasterRecoveryEnabled property value. The crossRegionDisasterRecoveryEnabled property
            ## @return a boolean
            ## 
            def cross_region_disaster_recovery_enabled
                return @cross_region_disaster_recovery_enabled
            end
            ## 
            ## Sets the crossRegionDisasterRecoveryEnabled property value. The crossRegionDisasterRecoveryEnabled property
            ## @param value Value to set for the crossRegionDisasterRecoveryEnabled property.
            ## @return a void
            ## 
            def cross_region_disaster_recovery_enabled=(value)
                @cross_region_disaster_recovery_enabled = value
            end
            ## 
            ## Gets the disasterRecoveryNetworkSetting property value. The disasterRecoveryNetworkSetting property
            ## @return a cloud_pc_disaster_recovery_network_setting
            ## 
            def disaster_recovery_network_setting
                return @disaster_recovery_network_setting
            end
            ## 
            ## Sets the disasterRecoveryNetworkSetting property value. The disasterRecoveryNetworkSetting property
            ## @param value Value to set for the disasterRecoveryNetworkSetting property.
            ## @return a void
            ## 
            def disaster_recovery_network_setting=(value)
                @disaster_recovery_network_setting = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "crossRegionDisasterRecoveryEnabled" => lambda {|n| @cross_region_disaster_recovery_enabled = n.get_boolean_value() },
                    "disasterRecoveryNetworkSetting" => lambda {|n| @disaster_recovery_network_setting = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcDisasterRecoveryNetworkSetting.create_from_discriminator_value(pn) }) },
                    "maintainCrossRegionRestorePointEnabled" => lambda {|n| @maintain_cross_region_restore_point_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the maintainCrossRegionRestorePointEnabled property value. The maintainCrossRegionRestorePointEnabled property
            ## @return a boolean
            ## 
            def maintain_cross_region_restore_point_enabled
                return @maintain_cross_region_restore_point_enabled
            end
            ## 
            ## Sets the maintainCrossRegionRestorePointEnabled property value. The maintainCrossRegionRestorePointEnabled property
            ## @param value Value to set for the maintainCrossRegionRestorePointEnabled property.
            ## @return a void
            ## 
            def maintain_cross_region_restore_point_enabled=(value)
                @maintain_cross_region_restore_point_enabled = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("crossRegionDisasterRecoveryEnabled", @cross_region_disaster_recovery_enabled)
                writer.write_object_value("disasterRecoveryNetworkSetting", @disaster_recovery_network_setting)
                writer.write_boolean_value("maintainCrossRegionRestorePointEnabled", @maintain_cross_region_restore_point_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
