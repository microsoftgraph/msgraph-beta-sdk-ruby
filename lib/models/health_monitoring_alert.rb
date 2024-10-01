require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class HealthMonitoringAlert < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The alertType property
            @alert_type
            ## 
            # The category property
            @category
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The documentation property
            @documentation
            ## 
            # The enrichment property
            @enrichment
            ## 
            # The scenario property
            @scenario
            ## 
            # The signals property
            @signals
            ## 
            # The state property
            @state
            ## 
            ## Gets the alertType property value. The alertType property
            ## @return a health_monitoring_alert_type
            ## 
            def alert_type
                return @alert_type
            end
            ## 
            ## Sets the alertType property value. The alertType property
            ## @param value Value to set for the alertType property.
            ## @return a void
            ## 
            def alert_type=(value)
                @alert_type = value
            end
            ## 
            ## Gets the category property value. The category property
            ## @return a health_monitoring_category
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The category property
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new HealthMonitoringAlert and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a health_monitoring_alert
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HealthMonitoringAlert.new
            end
            ## 
            ## Gets the documentation property value. The documentation property
            ## @return a health_monitoring_documentation
            ## 
            def documentation
                return @documentation
            end
            ## 
            ## Sets the documentation property value. The documentation property
            ## @param value Value to set for the documentation property.
            ## @return a void
            ## 
            def documentation=(value)
                @documentation = value
            end
            ## 
            ## Gets the enrichment property value. The enrichment property
            ## @return a health_monitoring_enrichment
            ## 
            def enrichment
                return @enrichment
            end
            ## 
            ## Sets the enrichment property value. The enrichment property
            ## @param value Value to set for the enrichment property.
            ## @return a void
            ## 
            def enrichment=(value)
                @enrichment = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alertType" => lambda {|n| @alert_type = n.get_enum_value(MicrosoftGraphBeta::Models::HealthMonitoringAlertType) },
                    "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraphBeta::Models::HealthMonitoringCategory) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "documentation" => lambda {|n| @documentation = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::HealthMonitoringDocumentation.create_from_discriminator_value(pn) }) },
                    "enrichment" => lambda {|n| @enrichment = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::HealthMonitoringEnrichment.create_from_discriminator_value(pn) }) },
                    "scenario" => lambda {|n| @scenario = n.get_enum_value(MicrosoftGraphBeta::Models::HealthMonitoringScenario) },
                    "signals" => lambda {|n| @signals = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::HealthMonitoringSignals.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::HealthMonitoringAlertState) },
                })
            end
            ## 
            ## Gets the scenario property value. The scenario property
            ## @return a health_monitoring_scenario
            ## 
            def scenario
                return @scenario
            end
            ## 
            ## Sets the scenario property value. The scenario property
            ## @param value Value to set for the scenario property.
            ## @return a void
            ## 
            def scenario=(value)
                @scenario = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("alertType", @alert_type)
                writer.write_enum_value("category", @category)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("documentation", @documentation)
                writer.write_object_value("enrichment", @enrichment)
                writer.write_enum_value("scenario", @scenario)
                writer.write_object_value("signals", @signals)
                writer.write_enum_value("state", @state)
            end
            ## 
            ## Gets the signals property value. The signals property
            ## @return a health_monitoring_signals
            ## 
            def signals
                return @signals
            end
            ## 
            ## Sets the signals property value. The signals property
            ## @param value Value to set for the signals property.
            ## @return a void
            ## 
            def signals=(value)
                @signals = value
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a health_monitoring_alert_state
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
        end
    end
end
