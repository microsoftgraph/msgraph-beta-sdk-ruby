require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Models.partner.securityActivityLog
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The statusFrom property
            @status_from
            ## 
            # The statusTo property
            @status_to
            ## 
            # The UPN of the partner user who did the status update activity. This attribute is set by the system.
            @updated_by
            ## 
            # The date and time for the status update activity. This attribute is set by the system. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @updated_date_time
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
            ## Instantiates a new Models.partner.securityActivityLog and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a models.partner.security_activity_log
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Models.partner.securityActivityLog.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "statusFrom" => lambda {|n| @status_from = n.get_enum_value(MicrosoftGraphBeta::Models::Models.partner.securitySecurityAlertStatus) },
                    "statusTo" => lambda {|n| @status_to = n.get_enum_value(MicrosoftGraphBeta::Models::Models.partner.securitySecurityAlertStatus) },
                    "updatedBy" => lambda {|n| @updated_by = n.get_string_value() },
                    "updatedDateTime" => lambda {|n| @updated_date_time = n.get_date_time_value() },
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("statusFrom", @status_from)
                writer.write_enum_value("statusTo", @status_to)
                writer.write_string_value("updatedBy", @updated_by)
                writer.write_date_time_value("updatedDateTime", @updated_date_time)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the statusFrom property value. The statusFrom property
            ## @return a models.partner.security_security_alert_status
            ## 
            def status_from
                return @status_from
            end
            ## 
            ## Sets the statusFrom property value. The statusFrom property
            ## @param value Value to set for the statusFrom property.
            ## @return a void
            ## 
            def status_from=(value)
                @status_from = value
            end
            ## 
            ## Gets the statusTo property value. The statusTo property
            ## @return a models.partner.security_security_alert_status
            ## 
            def status_to
                return @status_to
            end
            ## 
            ## Sets the statusTo property value. The statusTo property
            ## @param value Value to set for the statusTo property.
            ## @return a void
            ## 
            def status_to=(value)
                @status_to = value
            end
            ## 
            ## Gets the updatedBy property value. The UPN of the partner user who did the status update activity. This attribute is set by the system.
            ## @return a string
            ## 
            def updated_by
                return @updated_by
            end
            ## 
            ## Sets the updatedBy property value. The UPN of the partner user who did the status update activity. This attribute is set by the system.
            ## @param value Value to set for the updatedBy property.
            ## @return a void
            ## 
            def updated_by=(value)
                @updated_by = value
            end
            ## 
            ## Gets the updatedDateTime property value. The date and time for the status update activity. This attribute is set by the system. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def updated_date_time
                return @updated_date_time
            end
            ## 
            ## Sets the updatedDateTime property value. The date and time for the status update activity. This attribute is set by the system. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the updatedDateTime property.
            ## @return a void
            ## 
            def updated_date_time=(value)
                @updated_date_time = value
            end
        end
    end
end
