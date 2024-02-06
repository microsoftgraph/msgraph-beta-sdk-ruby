require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityRuleSchedule
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Timestamp of the custom detection rule's next scheduled run.
            @next_run_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # How often the detection rule is set to run. The allowed values are: 0, 1H, 3H, 12H, or 24H. '0' signifies the rule is run continuously.
            @period
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
            ## Instantiates a new securityRuleSchedule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_rule_schedule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityRuleSchedule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "nextRunDateTime" => lambda {|n| @next_run_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "period" => lambda {|n| @period = n.get_string_value() },
                }
            end
            ## 
            ## Gets the nextRunDateTime property value. Timestamp of the custom detection rule's next scheduled run.
            ## @return a date_time
            ## 
            def next_run_date_time
                return @next_run_date_time
            end
            ## 
            ## Sets the nextRunDateTime property value. Timestamp of the custom detection rule's next scheduled run.
            ## @param value Value to set for the nextRunDateTime property.
            ## @return a void
            ## 
            def next_run_date_time=(value)
                @next_run_date_time = value
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
            ## Gets the period property value. How often the detection rule is set to run. The allowed values are: 0, 1H, 3H, 12H, or 24H. '0' signifies the rule is run continuously.
            ## @return a string
            ## 
            def period
                return @period
            end
            ## 
            ## Sets the period property value. How often the detection rule is set to run. The allowed values are: 0, 1H, 3H, 12H, or 24H. '0' signifies the rule is run continuously.
            ## @param value Value to set for the period property.
            ## @return a void
            ## 
            def period=(value)
                @period = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_time_value("nextRunDateTime", @next_run_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("period", @period)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
