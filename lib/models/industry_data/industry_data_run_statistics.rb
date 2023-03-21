require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './industry_data'

module MicrosoftGraphBeta
    module Models
        module IndustryData
            class IndustryDataRunStatistics
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # The collection of statistics for each activity included in this run.
                @activity_statistics
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The aggregate statistics for all inbound flows.
                @inbound_totals
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The ID of the underlying run for the statistics.
                @run_id
                ## 
                # The status property
                @status
                ## 
                ## Gets the activityStatistics property value. The collection of statistics for each activity included in this run.
                ## @return a industry_data_activity_statistics
                ## 
                def activity_statistics
                    return @activity_statistics
                end
                ## 
                ## Sets the activityStatistics property value. The collection of statistics for each activity included in this run.
                ## @param value Value to set for the activity_statistics property.
                ## @return a void
                ## 
                def activity_statistics=(value)
                    @activity_statistics = value
                end
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
                ## Instantiates a new industryDataRunStatistics and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a industry_data_run_statistics
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return IndustryDataRunStatistics.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "activityStatistics" => lambda {|n| @activity_statistics = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::IndustryDataActivityStatistics.create_from_discriminator_value(pn) }) },
                        "inboundTotals" => lambda {|n| @inbound_totals = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::AggregatedInboundStatistics.create_from_discriminator_value(pn) }) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "runId" => lambda {|n| @run_id = n.get_string_value() },
                        "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::IndustryData::IndustryDataRunStatus) },
                    }
                end
                ## 
                ## Gets the inboundTotals property value. The aggregate statistics for all inbound flows.
                ## @return a aggregated_inbound_statistics
                ## 
                def inbound_totals
                    return @inbound_totals
                end
                ## 
                ## Sets the inboundTotals property value. The aggregate statistics for all inbound flows.
                ## @param value Value to set for the inbound_totals property.
                ## @return a void
                ## 
                def inbound_totals=(value)
                    @inbound_totals = value
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
                ## Gets the runId property value. The ID of the underlying run for the statistics.
                ## @return a string
                ## 
                def run_id
                    return @run_id
                end
                ## 
                ## Sets the runId property value. The ID of the underlying run for the statistics.
                ## @param value Value to set for the run_id property.
                ## @return a void
                ## 
                def run_id=(value)
                    @run_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_enum_value("status", @status)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the status property value. The status property
                ## @return a industry_data_run_status
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
end
