require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DlpPoliciesJobResult
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The auditCorrelationId property
        @audit_correlation_id
        ## 
        # The evaluationDateTime property
        @evaluation_date_time
        ## 
        # The matchingRules property
        @matching_rules
        ## 
        # The OdataType property
        @odata_type
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
        ## Gets the auditCorrelationId property value. The auditCorrelationId property
        ## @return a string
        ## 
        def audit_correlation_id
            return @audit_correlation_id
        end
        ## 
        ## Sets the auditCorrelationId property value. The auditCorrelationId property
        ## @param value Value to set for the auditCorrelationId property.
        ## @return a void
        ## 
        def audit_correlation_id=(value)
            @audit_correlation_id = value
        end
        ## 
        ## Instantiates a new dlpPoliciesJobResult and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a dlp_policies_job_result
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DlpPoliciesJobResult.new
        end
        ## 
        ## Gets the evaluationDateTime property value. The evaluationDateTime property
        ## @return a date_time
        ## 
        def evaluation_date_time
            return @evaluation_date_time
        end
        ## 
        ## Sets the evaluationDateTime property value. The evaluationDateTime property
        ## @param value Value to set for the evaluationDateTime property.
        ## @return a void
        ## 
        def evaluation_date_time=(value)
            @evaluation_date_time = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "auditCorrelationId" => lambda {|n| @audit_correlation_id = n.get_string_value() },
                "evaluationDateTime" => lambda {|n| @evaluation_date_time = n.get_date_time_value() },
                "matchingRules" => lambda {|n| @matching_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MatchingDlpRule.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the matchingRules property value. The matchingRules property
        ## @return a matching_dlp_rule
        ## 
        def matching_rules
            return @matching_rules
        end
        ## 
        ## Sets the matchingRules property value. The matchingRules property
        ## @param value Value to set for the matchingRules property.
        ## @return a void
        ## 
        def matching_rules=(value)
            @matching_rules = value
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
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("auditCorrelationId", @audit_correlation_id)
            writer.write_date_time_value("evaluationDateTime", @evaluation_date_time)
            writer.write_collection_of_object_values("matchingRules", @matching_rules)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
