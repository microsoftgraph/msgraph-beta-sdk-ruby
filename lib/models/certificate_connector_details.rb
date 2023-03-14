require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity used to retrieve information about Intune Certificate Connectors.
        class CertificateConnectorDetails < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Connector name (set during enrollment).
            @connector_name
            ## 
            # Version of the connector installed.
            @connector_version
            ## 
            # Date/time when this connector was enrolled.
            @enrollment_date_time
            ## 
            # Date/time when this connector last connected to the service.
            @last_checkin_date_time
            ## 
            # Name of the machine hosting this connector service.
            @machine_name
            ## 
            ## Gets the connectorName property value. Connector name (set during enrollment).
            ## @return a string
            ## 
            def connector_name
                return @connector_name
            end
            ## 
            ## Sets the connectorName property value. Connector name (set during enrollment).
            ## @param value Value to set for the connector_name property.
            ## @return a void
            ## 
            def connector_name=(value)
                @connector_name = value
            end
            ## 
            ## Gets the connectorVersion property value. Version of the connector installed.
            ## @return a string
            ## 
            def connector_version
                return @connector_version
            end
            ## 
            ## Sets the connectorVersion property value. Version of the connector installed.
            ## @param value Value to set for the connector_version property.
            ## @return a void
            ## 
            def connector_version=(value)
                @connector_version = value
            end
            ## 
            ## Instantiates a new certificateConnectorDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a certificate_connector_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CertificateConnectorDetails.new
            end
            ## 
            ## Gets the enrollmentDateTime property value. Date/time when this connector was enrolled.
            ## @return a date_time
            ## 
            def enrollment_date_time
                return @enrollment_date_time
            end
            ## 
            ## Sets the enrollmentDateTime property value. Date/time when this connector was enrolled.
            ## @param value Value to set for the enrollment_date_time property.
            ## @return a void
            ## 
            def enrollment_date_time=(value)
                @enrollment_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "connectorName" => lambda {|n| @connector_name = n.get_string_value() },
                    "connectorVersion" => lambda {|n| @connector_version = n.get_string_value() },
                    "enrollmentDateTime" => lambda {|n| @enrollment_date_time = n.get_date_time_value() },
                    "lastCheckinDateTime" => lambda {|n| @last_checkin_date_time = n.get_date_time_value() },
                    "machineName" => lambda {|n| @machine_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastCheckinDateTime property value. Date/time when this connector last connected to the service.
            ## @return a date_time
            ## 
            def last_checkin_date_time
                return @last_checkin_date_time
            end
            ## 
            ## Sets the lastCheckinDateTime property value. Date/time when this connector last connected to the service.
            ## @param value Value to set for the last_checkin_date_time property.
            ## @return a void
            ## 
            def last_checkin_date_time=(value)
                @last_checkin_date_time = value
            end
            ## 
            ## Gets the machineName property value. Name of the machine hosting this connector service.
            ## @return a string
            ## 
            def machine_name
                return @machine_name
            end
            ## 
            ## Sets the machineName property value. Name of the machine hosting this connector service.
            ## @param value Value to set for the machine_name property.
            ## @return a void
            ## 
            def machine_name=(value)
                @machine_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("connectorName", @connector_name)
                writer.write_string_value("connectorVersion", @connector_version)
                writer.write_date_time_value("enrollmentDateTime", @enrollment_date_time)
                writer.write_date_time_value("lastCheckinDateTime", @last_checkin_date_time)
                writer.write_string_value("machineName", @machine_name)
            end
        end
    end
end
