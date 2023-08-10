require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementMonitoring < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection of records of alert events.
            @alert_records
            ## 
            # The collection of alert rules.
            @alert_rules
            ## 
            ## Gets the alertRecords property value. The collection of records of alert events.
            ## @return a device_management_alert_record
            ## 
            def alert_records
                return @alert_records
            end
            ## 
            ## Sets the alertRecords property value. The collection of records of alert events.
            ## @param value Value to set for the alertRecords property.
            ## @return a void
            ## 
            def alert_records=(value)
                @alert_records = value
            end
            ## 
            ## Gets the alertRules property value. The collection of alert rules.
            ## @return a device_management_alert_rule
            ## 
            def alert_rules
                return @alert_rules
            end
            ## 
            ## Sets the alertRules property value. The collection of alert rules.
            ## @param value Value to set for the alertRules property.
            ## @return a void
            ## 
            def alert_rules=(value)
                @alert_rules = value
            end
            ## 
            ## Instantiates a new deviceManagementMonitoring and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_monitoring
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementMonitoring.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alertRecords" => lambda {|n| @alert_records = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementAlertRecord.create_from_discriminator_value(pn) }) },
                    "alertRules" => lambda {|n| @alert_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementAlertRule.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("alertRecords", @alert_records)
                writer.write_collection_of_object_values("alertRules", @alert_rules)
            end
        end
    end
end
