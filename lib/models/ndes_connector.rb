require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity which represents an OnPrem Ndes connector.
        class NdesConnector < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The build version of the Ndes Connector.
            @connector_version
            ## 
            # The friendly name of the Ndes Connector.
            @display_name
            ## 
            # Timestamp when on-prem certificate connector was enrolled in Intune.
            @enrolled_date_time
            ## 
            # Last connection time for the Ndes Connector
            @last_connection_date_time
            ## 
            # Name of the machine running on-prem certificate connector service.
            @machine_name
            ## 
            # List of Scope Tags for this Entity instance.
            @role_scope_tag_ids
            ## 
            # The current status of the Ndes Connector.
            @state
            ## 
            ## Gets the connectorVersion property value. The build version of the Ndes Connector.
            ## @return a string
            ## 
            def connector_version
                return @connector_version
            end
            ## 
            ## Sets the connectorVersion property value. The build version of the Ndes Connector.
            ## @param value Value to set for the connector_version property.
            ## @return a void
            ## 
            def connector_version=(value)
                @connector_version = value
            end
            ## 
            ## Instantiates a new ndesConnector and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ndes_connector
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NdesConnector.new
            end
            ## 
            ## Gets the displayName property value. The friendly name of the Ndes Connector.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The friendly name of the Ndes Connector.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the enrolledDateTime property value. Timestamp when on-prem certificate connector was enrolled in Intune.
            ## @return a date_time
            ## 
            def enrolled_date_time
                return @enrolled_date_time
            end
            ## 
            ## Sets the enrolledDateTime property value. Timestamp when on-prem certificate connector was enrolled in Intune.
            ## @param value Value to set for the enrolled_date_time property.
            ## @return a void
            ## 
            def enrolled_date_time=(value)
                @enrolled_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "connectorVersion" => lambda {|n| @connector_version = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "enrolledDateTime" => lambda {|n| @enrolled_date_time = n.get_date_time_value() },
                    "lastConnectionDateTime" => lambda {|n| @last_connection_date_time = n.get_date_time_value() },
                    "machineName" => lambda {|n| @machine_name = n.get_string_value() },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::NdesConnectorState) },
                })
            end
            ## 
            ## Gets the lastConnectionDateTime property value. Last connection time for the Ndes Connector
            ## @return a date_time
            ## 
            def last_connection_date_time
                return @last_connection_date_time
            end
            ## 
            ## Sets the lastConnectionDateTime property value. Last connection time for the Ndes Connector
            ## @param value Value to set for the last_connection_date_time property.
            ## @return a void
            ## 
            def last_connection_date_time=(value)
                @last_connection_date_time = value
            end
            ## 
            ## Gets the machineName property value. Name of the machine running on-prem certificate connector service.
            ## @return a string
            ## 
            def machine_name
                return @machine_name
            end
            ## 
            ## Sets the machineName property value. Name of the machine running on-prem certificate connector service.
            ## @param value Value to set for the machine_name property.
            ## @return a void
            ## 
            def machine_name=(value)
                @machine_name = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. List of Scope Tags for this Entity instance.
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. List of Scope Tags for this Entity instance.
            ## @param value Value to set for the role_scope_tag_ids property.
            ## @return a void
            ## 
            def role_scope_tag_ids=(value)
                @role_scope_tag_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("connectorVersion", @connector_version)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("enrolledDateTime", @enrolled_date_time)
                writer.write_date_time_value("lastConnectionDateTime", @last_connection_date_time)
                writer.write_string_value("machineName", @machine_name)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_enum_value("state", @state)
            end
            ## 
            ## Gets the state property value. The current status of the Ndes Connector.
            ## @return a ndes_connector_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The current status of the Ndes Connector.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
