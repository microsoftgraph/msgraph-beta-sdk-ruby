require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UnifiedRoleManagementAlert < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The configuration of the alert in PIM for Microsoft Entra roles. Alert configurations are pre-defined and cannot be created or deleted, but some configurations can be modified. Supports $filter for the isEnabled property and $expand.
            @alert_configuration
            ## 
            # Contains the description, impact, and measures to mitigate or prevent the security alert from being triggered in your tenant. Supports $expand.
            @alert_definition
            ## 
            # The identifier of an alert definition. Supports $filter (eq, ne).
            @alert_definition_id
            ## 
            # Represents the incidents of this type of alert that have been triggered in Privileged Identity Management (PIM) for Microsoft Entra roles in the tenant. Supports $expand.
            @alert_incidents
            ## 
            # The number of incidents triggered in the tenant and relating to the alert. Can only be a positive integer.
            @incident_count
            ## 
            # false by default. true if the alert is active.
            @is_active
            ## 
            # The date time when the alert configuration was updated or new incidents generated.
            @last_modified_date_time
            ## 
            # The date time when the tenant was last scanned for incidents that trigger this alert.
            @last_scanned_date_time
            ## 
            # The identifier of the scope where the alert is related. / is the only supported one for the tenant. Supports $filter (eq, ne).
            @scope_id
            ## 
            # The type of scope where the alert is created. DirectoryRole is the only currently supported scope type for Microsoft Entra roles.
            @scope_type
            ## 
            ## Gets the alertConfiguration property value. The configuration of the alert in PIM for Microsoft Entra roles. Alert configurations are pre-defined and cannot be created or deleted, but some configurations can be modified. Supports $filter for the isEnabled property and $expand.
            ## @return a unified_role_management_alert_configuration
            ## 
            def alert_configuration
                return @alert_configuration
            end
            ## 
            ## Sets the alertConfiguration property value. The configuration of the alert in PIM for Microsoft Entra roles. Alert configurations are pre-defined and cannot be created or deleted, but some configurations can be modified. Supports $filter for the isEnabled property and $expand.
            ## @param value Value to set for the alertConfiguration property.
            ## @return a void
            ## 
            def alert_configuration=(value)
                @alert_configuration = value
            end
            ## 
            ## Gets the alertDefinition property value. Contains the description, impact, and measures to mitigate or prevent the security alert from being triggered in your tenant. Supports $expand.
            ## @return a unified_role_management_alert_definition
            ## 
            def alert_definition
                return @alert_definition
            end
            ## 
            ## Sets the alertDefinition property value. Contains the description, impact, and measures to mitigate or prevent the security alert from being triggered in your tenant. Supports $expand.
            ## @param value Value to set for the alertDefinition property.
            ## @return a void
            ## 
            def alert_definition=(value)
                @alert_definition = value
            end
            ## 
            ## Gets the alertDefinitionId property value. The identifier of an alert definition. Supports $filter (eq, ne).
            ## @return a string
            ## 
            def alert_definition_id
                return @alert_definition_id
            end
            ## 
            ## Sets the alertDefinitionId property value. The identifier of an alert definition. Supports $filter (eq, ne).
            ## @param value Value to set for the alertDefinitionId property.
            ## @return a void
            ## 
            def alert_definition_id=(value)
                @alert_definition_id = value
            end
            ## 
            ## Gets the alertIncidents property value. Represents the incidents of this type of alert that have been triggered in Privileged Identity Management (PIM) for Microsoft Entra roles in the tenant. Supports $expand.
            ## @return a unified_role_management_alert_incident
            ## 
            def alert_incidents
                return @alert_incidents
            end
            ## 
            ## Sets the alertIncidents property value. Represents the incidents of this type of alert that have been triggered in Privileged Identity Management (PIM) for Microsoft Entra roles in the tenant. Supports $expand.
            ## @param value Value to set for the alertIncidents property.
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
            ## Gets the incidentCount property value. The number of incidents triggered in the tenant and relating to the alert. Can only be a positive integer.
            ## @return a integer
            ## 
            def incident_count
                return @incident_count
            end
            ## 
            ## Sets the incidentCount property value. The number of incidents triggered in the tenant and relating to the alert. Can only be a positive integer.
            ## @param value Value to set for the incidentCount property.
            ## @return a void
            ## 
            def incident_count=(value)
                @incident_count = value
            end
            ## 
            ## Gets the isActive property value. false by default. true if the alert is active.
            ## @return a boolean
            ## 
            def is_active
                return @is_active
            end
            ## 
            ## Sets the isActive property value. false by default. true if the alert is active.
            ## @param value Value to set for the isActive property.
            ## @return a void
            ## 
            def is_active=(value)
                @is_active = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date time when the alert configuration was updated or new incidents generated.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date time when the alert configuration was updated or new incidents generated.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the lastScannedDateTime property value. The date time when the tenant was last scanned for incidents that trigger this alert.
            ## @return a date_time
            ## 
            def last_scanned_date_time
                return @last_scanned_date_time
            end
            ## 
            ## Sets the lastScannedDateTime property value. The date time when the tenant was last scanned for incidents that trigger this alert.
            ## @param value Value to set for the lastScannedDateTime property.
            ## @return a void
            ## 
            def last_scanned_date_time=(value)
                @last_scanned_date_time = value
            end
            ## 
            ## Gets the scopeId property value. The identifier of the scope where the alert is related. / is the only supported one for the tenant. Supports $filter (eq, ne).
            ## @return a string
            ## 
            def scope_id
                return @scope_id
            end
            ## 
            ## Sets the scopeId property value. The identifier of the scope where the alert is related. / is the only supported one for the tenant. Supports $filter (eq, ne).
            ## @param value Value to set for the scopeId property.
            ## @return a void
            ## 
            def scope_id=(value)
                @scope_id = value
            end
            ## 
            ## Gets the scopeType property value. The type of scope where the alert is created. DirectoryRole is the only currently supported scope type for Microsoft Entra roles.
            ## @return a string
            ## 
            def scope_type
                return @scope_type
            end
            ## 
            ## Sets the scopeType property value. The type of scope where the alert is created. DirectoryRole is the only currently supported scope type for Microsoft Entra roles.
            ## @param value Value to set for the scopeType property.
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
