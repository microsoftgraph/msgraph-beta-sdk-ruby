require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcHealthCheckItem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Additional message for this health check.
            @additional_details
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The connectivity health check item name.
            @display_name
            ## 
            # Timestamp when the last check occurs. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as 2014-01-01T00:00:00Z.
            @last_health_check_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The result property
            @result
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
            ## Gets the additionalDetails property value. Additional message for this health check.
            ## @return a string
            ## 
            def additional_details
                return @additional_details
            end
            ## 
            ## Sets the additionalDetails property value. Additional message for this health check.
            ## @param value Value to set for the additional_details property.
            ## @return a void
            ## 
            def additional_details=(value)
                @additional_details = value
            end
            ## 
            ## Instantiates a new cloudPcHealthCheckItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_health_check_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcHealthCheckItem.new
            end
            ## 
            ## Gets the displayName property value. The connectivity health check item name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The connectivity health check item name.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "additionalDetails" => lambda {|n| @additional_details = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastHealthCheckDateTime" => lambda {|n| @last_health_check_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "result" => lambda {|n| @result = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcConnectivityEventResult) },
                }
            end
            ## 
            ## Gets the lastHealthCheckDateTime property value. Timestamp when the last check occurs. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_health_check_date_time
                return @last_health_check_date_time
            end
            ## 
            ## Sets the lastHealthCheckDateTime property value. Timestamp when the last check occurs. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as 2014-01-01T00:00:00Z.
            ## @param value Value to set for the last_health_check_date_time property.
            ## @return a void
            ## 
            def last_health_check_date_time=(value)
                @last_health_check_date_time = value
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the result property value. The result property
            ## @return a cloud_pc_connectivity_event_result
            ## 
            def result
                return @result
            end
            ## 
            ## Sets the result property value. The result property
            ## @param value Value to set for the result property.
            ## @return a void
            ## 
            def result=(value)
                @result = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("additionalDetails", @additional_details)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastHealthCheckDateTime", @last_health_check_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("result", @result)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
