require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class HealthMonitoringEnrichment
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A collection of resource impact summaries that gives a high level view of the kind of resources that were impacted and to what degree.
            @impacts
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The state property
            @state
            ## 
            # A collection of supportingData locations that can be queried for debugging the alert.
            @supporting_data
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
            ## Instantiates a new HealthMonitoringEnrichment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a health_monitoring_enrichment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HealthMonitoringEnrichment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "impacts" => lambda {|n| @impacts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HealthMonitoringResourceImpactSummary.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::HealthMonitoringEnrichmentState) },
                    "supportingData" => lambda {|n| @supporting_data = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::HealthMonitoringSupportingData.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the impacts property value. A collection of resource impact summaries that gives a high level view of the kind of resources that were impacted and to what degree.
            ## @return a health_monitoring_resource_impact_summary
            ## 
            def impacts
                return @impacts
            end
            ## 
            ## Sets the impacts property value. A collection of resource impact summaries that gives a high level view of the kind of resources that were impacted and to what degree.
            ## @param value Value to set for the impacts property.
            ## @return a void
            ## 
            def impacts=(value)
                @impacts = value
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
                writer.write_collection_of_object_values("impacts", @impacts)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("state", @state)
                writer.write_object_value("supportingData", @supporting_data)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a health_monitoring_enrichment_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the supportingData property value. A collection of supportingData locations that can be queried for debugging the alert.
            ## @return a health_monitoring_supporting_data
            ## 
            def supporting_data
                return @supporting_data
            end
            ## 
            ## Sets the supportingData property value. A collection of supportingData locations that can be queried for debugging the alert.
            ## @param value Value to set for the supportingData property.
            ## @return a void
            ## 
            def supporting_data=(value)
                @supporting_data = value
            end
        end
    end
end
