require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The number of device health scripts deployed and the number of devices the scripts remediated.
    class DeviceHealthScriptRemediationSummary
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The number of devices remediated by device health scripts.
        @remediated_device_count
        ## 
        # The number of device health scripts deployed.
        @script_count
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
        ## Instantiates a new deviceHealthScriptRemediationSummary and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_health_script_remediation_summary
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceHealthScriptRemediationSummary.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "remediatedDeviceCount" => lambda {|n| @remediated_device_count = n.get_number_value() },
                "scriptCount" => lambda {|n| @script_count = n.get_number_value() },
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the remediatedDeviceCount property value. The number of devices remediated by device health scripts.
        ## @return a integer
        ## 
        def remediated_device_count
            return @remediated_device_count
        end
        ## 
        ## Sets the remediatedDeviceCount property value. The number of devices remediated by device health scripts.
        ## @param value Value to set for the remediatedDeviceCount property.
        ## @return a void
        ## 
        def remediated_device_count=(value)
            @remediated_device_count = value
        end
        ## 
        ## Gets the scriptCount property value. The number of device health scripts deployed.
        ## @return a integer
        ## 
        def script_count
            return @script_count
        end
        ## 
        ## Sets the scriptCount property value. The number of device health scripts deployed.
        ## @param value Value to set for the scriptCount property.
        ## @return a void
        ## 
        def script_count=(value)
            @script_count = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_number_value("remediatedDeviceCount", @remediated_device_count)
            writer.write_number_value("scriptCount", @script_count)
            writer.write_additional_data(@additional_data)
        end
    end
end
