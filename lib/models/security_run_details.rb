require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityRunDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The errorCode property
            @error_code
            ## 
            # The failureReason property
            @failure_reason
            ## 
            # The lastRunDateTime property
            @last_run_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The status property
            @status
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
            ## Instantiates a new securityRunDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_run_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityRunDetails.new
            end
            ## 
            ## Gets the errorCode property value. The errorCode property
            ## @return a security_hunting_rule_error_code
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. The errorCode property
            ## @param value Value to set for the errorCode property.
            ## @return a void
            ## 
            def error_code=(value)
                @error_code = value
            end
            ## 
            ## Gets the failureReason property value. The failureReason property
            ## @return a string
            ## 
            def failure_reason
                return @failure_reason
            end
            ## 
            ## Sets the failureReason property value. The failureReason property
            ## @param value Value to set for the failureReason property.
            ## @return a void
            ## 
            def failure_reason=(value)
                @failure_reason = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "errorCode" => lambda {|n| @error_code = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityHuntingRuleErrorCode) },
                    "failureReason" => lambda {|n| @failure_reason = n.get_string_value() },
                    "lastRunDateTime" => lambda {|n| @last_run_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityHuntingRuleRunStatus) },
                }
            end
            ## 
            ## Gets the lastRunDateTime property value. The lastRunDateTime property
            ## @return a date_time
            ## 
            def last_run_date_time
                return @last_run_date_time
            end
            ## 
            ## Sets the lastRunDateTime property value. The lastRunDateTime property
            ## @param value Value to set for the lastRunDateTime property.
            ## @return a void
            ## 
            def last_run_date_time=(value)
                @last_run_date_time = value
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
                writer.write_enum_value("errorCode", @error_code)
                writer.write_string_value("failureReason", @failure_reason)
                writer.write_date_time_value("lastRunDateTime", @last_run_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("status", @status)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a security_hunting_rule_run_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
