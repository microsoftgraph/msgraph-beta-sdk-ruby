require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UnifiedRoleManagementAlert < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The alertConfiguration property
            @alert_configuration
            ## 
            # The alertDefinition property
            @alert_definition
            ## 
            # The alertDefinitionId property
            @alert_definition_id
            ## 
            # The alertIncidents property
            @alert_incidents
            ## 
            # The incidentCount property
            @incident_count
            ## 
            # The isActive property
            @is_active
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The lastScannedDateTime property
            @last_scanned_date_time
            ## 
            # The scopeId property
            @scope_id
            ## 
            # The scopeType property
            @scope_type
            ## 
            ## Gets the alertConfiguration property value. The alertConfiguration property
            ## @return a unified_role_management_alert_configuration
            ## 
            def alert_configuration
                return @alert_configuration
            end
            ## 
            ## Sets the alertConfiguration property value. The alertConfiguration property
            ## @param value Value to set for the alert_configuration property.
            ## @return a void
            ## 
            def alert_configuration=(value)
                @alert_configuration = value
            end
            ## 
            ## Gets the alertDefinition property value. The alertDefinition property
            ## @return a unified_role_management_alert_definition
            ## 
            def alert_definition
                return @alert_definition
            end
            ## 
            ## Sets the alertDefinition property value. The alertDefinition property
            ## @param value Value to set for the alert_definition property.
            ## @return a void
            ## 
            def alert_definition=(value)
                @alert_definition = value
            end
            ## 
            ## Gets the alertDefinitionId property value. The alertDefinitionId property
            ## @return a string
            ## 
            def alert_definition_id
                return @alert_definition_id
            end
            ## 
            ## Sets the alertDefinitionId property value. The alertDefinitionId property
            ## @param value Value to set for the alert_definition_id property.
            ## @return a void
            ## 
            def alert_definition_id=(value)
                @alert_definition_id = value
            end
            ## 
            ## Gets the alertIncidents property value. The alertIncidents property
            ## @return a unified_role_management_alert_incident
            ## 
            def alert_incidents
                return @alert_incidents
            end
            ## 
            ## Sets the alertIncidents property value. The alertIncidents property
            ## @param value Value to set for the alert_incidents property.
            ## @return a void
            ## 
            def alert_incidents=(value)
                @alert_incidents = value
            end
            ## 
            ## Instantiates a new unifiedRoleManagementAlert and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_management_alert
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRoleManagementAlert.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alertConfiguration" => lambda {|n| @alert_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleManagementAlertConfiguration.create_from_discriminator_value(pn) }) },
                    "alertDefinition" => lambda {|n| @alert_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleManagementAlertDefinition.create_from_discriminator_value(pn) }) },
                    "alertDefinitionId" => lambda {|n| @alert_definition_id = n.get_string_value() },
                    "alertIncidents" => lambda {|n| @alert_incidents = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleManagementAlertIncident.create_from_discriminator_value(pn) }) },
                    "incidentCount" => lambda {|n| @incident_count = n.get_number_value() },
                    "isActive" => lambda {|n| @is_active = n.get_boolean_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "lastScannedDateTime" => lambda {|n| @last_scanned_date_time = n.get_date_time_value() },
                    "scopeId" => lambda {|n| @scope_id = n.get_string_value() },
                    "scopeType" => lambda {|n| @scope_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the incidentCount property value. The incidentCount property
            ## @return a integer
            ## 
            def incident_count
                return @incident_count
            end
            ## 
            ## Sets the incidentCount property value. The incidentCount property
            ## @param value Value to set for the incident_count property.
            ## @return a void
            ## 
            def incident_count=(value)
                @incident_count = value
            end
            ## 
            ## Gets the isActive property value. The isActive property
            ## @return a boolean
            ## 
            def is_active
                return @is_active
            end
            ## 
            ## Sets the isActive property value. The isActive property
            ## @param value Value to set for the is_active property.
            ## @return a void
            ## 
            def is_active=(value)
                @is_active = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the lastScannedDateTime property value. The lastScannedDateTime property
            ## @return a date_time
            ## 
            def last_scanned_date_time
                return @last_scanned_date_time
            end
            ## 
            ## Sets the lastScannedDateTime property value. The lastScannedDateTime property
            ## @param value Value to set for the last_scanned_date_time property.
            ## @return a void
            ## 
            def last_scanned_date_time=(value)
                @last_scanned_date_time = value
            end
            ## 
            ## Gets the scopeId property value. The scopeId property
            ## @return a string
            ## 
            def scope_id
                return @scope_id
            end
            ## 
            ## Sets the scopeId property value. The scopeId property
            ## @param value Value to set for the scope_id property.
            ## @return a void
            ## 
            def scope_id=(value)
                @scope_id = value
            end
            ## 
            ## Gets the scopeType property value. The scopeType property
            ## @return a string
            ## 
            def scope_type
                return @scope_type
            end
            ## 
            ## Sets the scopeType property value. The scopeType property
            ## @param value Value to set for the scope_type property.
            ## @return a void
            ## 
            def scope_type=(value)
                @scope_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("alertConfiguration", @alert_configuration)
                writer.write_object_value("alertDefinition", @alert_definition)
                writer.write_string_value("alertDefinitionId", @alert_definition_id)
                writer.write_collection_of_object_values("alertIncidents", @alert_incidents)
                writer.write_number_value("incidentCount", @incident_count)
                writer.write_boolean_value("isActive", @is_active)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_date_time_value("lastScannedDateTime", @last_scanned_date_time)
                writer.write_string_value("scopeId", @scope_id)
                writer.write_string_value("scopeType", @scope_type)
            end
        end
    end
end
