require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A Domain Join Connector is a connector that is responsible to allocate (and delete) machine account blobs
        class DeviceManagementDomainJoinConnector < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The connector display name.
            @display_name
            ## 
            # Last time connector contacted Intune.
            @last_connection_date_time
            ## 
            # The ODJ request states.
            @state
            ## 
            # The version of the connector.
            @version
            ## 
            ## Instantiates a new deviceManagementDomainJoinConnector and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_domain_join_connector
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementDomainJoinConnector.new
            end
            ## 
            ## Gets the displayName property value. The connector display name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The connector display name.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastConnectionDateTime" => lambda {|n| @last_connection_date_time = n.get_date_time_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementDomainJoinConnectorState) },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastConnectionDateTime property value. Last time connector contacted Intune.
            ## @return a date_time
            ## 
            def last_connection_date_time
                return @last_connection_date_time
            end
            ## 
            ## Sets the lastConnectionDateTime property value. Last time connector contacted Intune.
            ## @param value Value to set for the last_connection_date_time property.
            ## @return a void
            ## 
            def last_connection_date_time=(value)
                @last_connection_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastConnectionDateTime", @last_connection_date_time)
                writer.write_enum_value("state", @state)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the state property value. The ODJ request states.
            ## @return a device_management_domain_join_connector_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The ODJ request states.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the version property value. The version of the connector.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version of the connector.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
