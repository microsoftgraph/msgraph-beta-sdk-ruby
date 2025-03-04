require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/base_collection_pagination_count_response'
require_relative '../../../models/networkaccess_usage_profiling_point'
require_relative '../../network_access'
require_relative '../reports'
require_relative './ic845ee52259285810e08f8cec6bf96e4ac20df67baf08fb5e049906d5526e2f4'

module MicrosoftGraphBeta
    module NetworkAccess
        module Reports
            module Ic845ee52259285810e08f8cec6bf96e4ac20df67baf08fb5e049906d5526e2f4
                class UsageProfilingWithStartDateTimeWithEndDateTimeWithAggregatedBydiscoveredApplicationSegmentIdDiscoveredApplicationSegmentIdApplicationIdApplicationIdGetResponse < MicrosoftGraphBeta::Models::BaseCollectionPaginationCountResponse
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # The value property
                    @value
                    ## 
                    ## Instantiates a new UsageProfilingWithStartDateTimeWithEndDateTimeWithAggregatedBydiscoveredApplicationSegmentIdDiscoveredApplicationSegmentIdApplicationIdApplicationIdGetResponse and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        super
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a usage_profiling_with_start_date_time_with_end_date_time_with_aggregated_bydiscovered_application_segment_id_discovered_application_segment_id_application_id_application_id_get_response
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return UsageProfilingWithStartDateTimeWithEndDateTimeWithAggregatedBydiscoveredApplicationSegmentIdDiscoveredApplicationSegmentIdApplicationIdApplicationIdGetResponse.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return super.merge({
                            "value" => lambda {|n| @value = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessUsageProfilingPoint.create_from_discriminator_value(pn) }) },
                        })
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        super
                        writer.write_collection_of_object_values("value", @value)
                    end
                    ## 
                    ## Gets the value property value. The value property
                    ## @return a networkaccess_usage_profiling_point
                    ## 
                    def value
                        return @value
                    end
                    ## 
                    ## Sets the value property value. The value property
                    ## @param value Value to set for the value property.
                    ## @return a void
                    ## 
                    def value=(value)
                        @value = value
                    end
                end
            end
        end
    end
end
