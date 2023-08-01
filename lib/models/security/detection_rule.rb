require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class DetectionRule < MicrosoftGraphBeta::Models::Security::ProtectionRule
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The detectionAction property
                @detection_action
                ## 
                # The lastRunDetails property
                @last_run_details
                ## 
                # The queryCondition property
                @query_condition
                ## 
                # The schedule property
                @schedule
                ## 
                ## Instantiates a new detectionRule and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.detectionRule"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a detection_rule
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return DetectionRule.new
                end
                ## 
                ## Gets the detectionAction property value. The detectionAction property
                ## @return a detection_action
                ## 
                def detection_action
                    return @detection_action
                end
                ## 
                ## Sets the detectionAction property value. The detectionAction property
                ## @param value Value to set for the detectionAction property.
                ## @return a void
                ## 
                def detection_action=(value)
                    @detection_action = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "detectionAction" => lambda {|n| @detection_action = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::DetectionAction.create_from_discriminator_value(pn) }) },
                        "lastRunDetails" => lambda {|n| @last_run_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::RunDetails.create_from_discriminator_value(pn) }) },
                        "queryCondition" => lambda {|n| @query_condition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::QueryCondition.create_from_discriminator_value(pn) }) },
                        "schedule" => lambda {|n| @schedule = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::RuleSchedule.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the lastRunDetails property value. The lastRunDetails property
                ## @return a run_details
                ## 
                def last_run_details
                    return @last_run_details
                end
                ## 
                ## Sets the lastRunDetails property value. The lastRunDetails property
                ## @param value Value to set for the lastRunDetails property.
                ## @return a void
                ## 
                def last_run_details=(value)
                    @last_run_details = value
                end
                ## 
                ## Gets the queryCondition property value. The queryCondition property
                ## @return a query_condition
                ## 
                def query_condition
                    return @query_condition
                end
                ## 
                ## Sets the queryCondition property value. The queryCondition property
                ## @param value Value to set for the queryCondition property.
                ## @return a void
                ## 
                def query_condition=(value)
                    @query_condition = value
                end
                ## 
                ## Gets the schedule property value. The schedule property
                ## @return a rule_schedule
                ## 
                def schedule
                    return @schedule
                end
                ## 
                ## Sets the schedule property value. The schedule property
                ## @param value Value to set for the schedule property.
                ## @return a void
                ## 
                def schedule=(value)
                    @schedule = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("detectionAction", @detection_action)
                    writer.write_object_value("lastRunDetails", @last_run_details)
                    writer.write_object_value("queryCondition", @query_condition)
                    writer.write_object_value("schedule", @schedule)
                end
            end
        end
    end
end
