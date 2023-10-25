require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcLaunchInfo
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The unique identifier of the Cloud PC.
            @cloud_pc_id
            ## 
            # The connect URL of the Cloud PC.
            @cloud_pc_launch_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates whether the Cloud PC supports switch functionality. If the value is true, it supports switch functionality; otherwise,  false.
            @windows365_switch_compatible
            ## 
            # Indicates the reason the Cloud PC doesn't support switch. CPCOsVersionNotMeetRequirement indicates that the user needs to update their Cloud PC operation system version. CPCHardwareNotMeetRequirement indicates that the Cloud PC needs more CPU or RAM to support the functionality.
            @windows365_switch_not_compatible_reason
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
            ## Gets the cloudPcId property value. The unique identifier of the Cloud PC.
            ## @return a string
            ## 
            def cloud_pc_id
                return @cloud_pc_id
            end
            ## 
            ## Sets the cloudPcId property value. The unique identifier of the Cloud PC.
            ## @param value Value to set for the cloudPcId property.
            ## @return a void
            ## 
            def cloud_pc_id=(value)
                @cloud_pc_id = value
            end
            ## 
            ## Gets the cloudPcLaunchUrl property value. The connect URL of the Cloud PC.
            ## @return a string
            ## 
            def cloud_pc_launch_url
                return @cloud_pc_launch_url
            end
            ## 
            ## Sets the cloudPcLaunchUrl property value. The connect URL of the Cloud PC.
            ## @param value Value to set for the cloudPcLaunchUrl property.
            ## @return a void
            ## 
            def cloud_pc_launch_url=(value)
                @cloud_pc_launch_url = value
            end
            ## 
            ## Instantiates a new cloudPcLaunchInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_launch_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcLaunchInfo.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "cloudPcId" => lambda {|n| @cloud_pc_id = n.get_string_value() },
                    "cloudPcLaunchUrl" => lambda {|n| @cloud_pc_launch_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "windows365SwitchCompatible" => lambda {|n| @windows365_switch_compatible = n.get_boolean_value() },
                    "windows365SwitchNotCompatibleReason" => lambda {|n| @windows365_switch_not_compatible_reason = n.get_string_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("cloudPcId", @cloud_pc_id)
                writer.write_string_value("cloudPcLaunchUrl", @cloud_pc_launch_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("windows365SwitchCompatible", @windows365_switch_compatible)
                writer.write_string_value("windows365SwitchNotCompatibleReason", @windows365_switch_not_compatible_reason)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the windows365SwitchCompatible property value. Indicates whether the Cloud PC supports switch functionality. If the value is true, it supports switch functionality; otherwise,  false.
            ## @return a boolean
            ## 
            def windows365_switch_compatible
                return @windows365_switch_compatible
            end
            ## 
            ## Sets the windows365SwitchCompatible property value. Indicates whether the Cloud PC supports switch functionality. If the value is true, it supports switch functionality; otherwise,  false.
            ## @param value Value to set for the windows365SwitchCompatible property.
            ## @return a void
            ## 
            def windows365_switch_compatible=(value)
                @windows365_switch_compatible = value
            end
            ## 
            ## Gets the windows365SwitchNotCompatibleReason property value. Indicates the reason the Cloud PC doesn't support switch. CPCOsVersionNotMeetRequirement indicates that the user needs to update their Cloud PC operation system version. CPCHardwareNotMeetRequirement indicates that the Cloud PC needs more CPU or RAM to support the functionality.
            ## @return a string
            ## 
            def windows365_switch_not_compatible_reason
                return @windows365_switch_not_compatible_reason
            end
            ## 
            ## Sets the windows365SwitchNotCompatibleReason property value. Indicates the reason the Cloud PC doesn't support switch. CPCOsVersionNotMeetRequirement indicates that the user needs to update their Cloud PC operation system version. CPCHardwareNotMeetRequirement indicates that the Cloud PC needs more CPU or RAM to support the functionality.
            ## @param value Value to set for the windows365SwitchNotCompatibleReason property.
            ## @return a void
            ## 
            def windows365_switch_not_compatible_reason=(value)
                @windows365_switch_not_compatible_reason = value
            end
        end
    end
end
