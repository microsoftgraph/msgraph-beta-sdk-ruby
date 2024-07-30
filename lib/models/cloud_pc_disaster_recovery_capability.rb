require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcDisasterRecoveryCapability
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The disaster recovery action that can be performed for the Cloud PC. The possible values are: none, failover, failback, unknownFutureValue.
            @capability_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The primary and mainly used region where the Cloud PC is located.
            @primary_region
            ## 
            # The secondary region to which the Cloud PC can be failed over during a regional outage.
            @secondary_region
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
            ## Gets the capabilityType property value. The disaster recovery action that can be performed for the Cloud PC. The possible values are: none, failover, failback, unknownFutureValue.
            ## @return a cloud_pc_disaster_recovery_capability_type
            ## 
            def capability_type
                return @capability_type
            end
            ## 
            ## Sets the capabilityType property value. The disaster recovery action that can be performed for the Cloud PC. The possible values are: none, failover, failback, unknownFutureValue.
            ## @param value Value to set for the capabilityType property.
            ## @return a void
            ## 
            def capability_type=(value)
                @capability_type = value
            end
            ## 
            ## Instantiates a new CloudPcDisasterRecoveryCapability and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_disaster_recovery_capability
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcDisasterRecoveryCapability.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "capabilityType" => lambda {|n| @capability_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcDisasterRecoveryCapabilityType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "primaryRegion" => lambda {|n| @primary_region = n.get_string_value() },
                    "secondaryRegion" => lambda {|n| @secondary_region = n.get_string_value() },
                }
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
            ## Gets the primaryRegion property value. The primary and mainly used region where the Cloud PC is located.
            ## @return a string
            ## 
            def primary_region
                return @primary_region
            end
            ## 
            ## Sets the primaryRegion property value. The primary and mainly used region where the Cloud PC is located.
            ## @param value Value to set for the primaryRegion property.
            ## @return a void
            ## 
            def primary_region=(value)
                @primary_region = value
            end
            ## 
            ## Gets the secondaryRegion property value. The secondary region to which the Cloud PC can be failed over during a regional outage.
            ## @return a string
            ## 
            def secondary_region
                return @secondary_region
            end
            ## 
            ## Sets the secondaryRegion property value. The secondary region to which the Cloud PC can be failed over during a regional outage.
            ## @param value Value to set for the secondaryRegion property.
            ## @return a void
            ## 
            def secondary_region=(value)
                @secondary_region = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("capabilityType", @capability_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("primaryRegion", @primary_region)
                writer.write_string_value("secondaryRegion", @secondary_region)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
