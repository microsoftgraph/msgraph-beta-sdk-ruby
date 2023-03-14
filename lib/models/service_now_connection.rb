require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ServiceNowConnection < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the method used by Intune to authenticate with ServiceNow. Currently supports only web authentication with ServiceNow using the specified app id.
            @authentication_method
            ## 
            # Date Time when connection properties were created. The value cannot be modified and is automatically populated when the connection properties were entered.
            @created_date_time
            ## 
            # Indicates the ServiceNow incident API URL that Intune will use the fetch incidents. Saved in the format of /api/now/table/incident
            @incident_api_url
            ## 
            # Indicates the ServiceNow instance URL that Intune will connect to. Saved in the format of https://<instance>.service-now.com
            @instance_url
            ## 
            # Date Time when connection properties were last updated. The value cannot be modified and is automatically populated when the connection properties were updated.
            @last_modified_date_time
            ## 
            # Date Time when incidents from ServiceNow were last queried
            @last_queried_date_time
            ## 
            # Status of ServiceNow Connection
            @service_now_connection_status
            ## 
            ## Gets the authenticationMethod property value. Indicates the method used by Intune to authenticate with ServiceNow. Currently supports only web authentication with ServiceNow using the specified app id.
            ## @return a service_now_authentication_method
            ## 
            def authentication_method
                return @authentication_method
            end
            ## 
            ## Sets the authenticationMethod property value. Indicates the method used by Intune to authenticate with ServiceNow. Currently supports only web authentication with ServiceNow using the specified app id.
            ## @param value Value to set for the authentication_method property.
            ## @return a void
            ## 
            def authentication_method=(value)
                @authentication_method = value
            end
            ## 
            ## Instantiates a new ServiceNowConnection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Date Time when connection properties were created. The value cannot be modified and is automatically populated when the connection properties were entered.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date Time when connection properties were created. The value cannot be modified and is automatically populated when the connection properties were entered.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a service_now_connection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceNowConnection.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authenticationMethod" => lambda {|n| @authentication_method = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ServiceNowAuthenticationMethod.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "incidentApiUrl" => lambda {|n| @incident_api_url = n.get_string_value() },
                    "instanceUrl" => lambda {|n| @instance_url = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "lastQueriedDateTime" => lambda {|n| @last_queried_date_time = n.get_date_time_value() },
                    "serviceNowConnectionStatus" => lambda {|n| @service_now_connection_status = n.get_enum_value(MicrosoftGraphBeta::Models::ServiceNowConnectionStatus) },
                })
            end
            ## 
            ## Gets the incidentApiUrl property value. Indicates the ServiceNow incident API URL that Intune will use the fetch incidents. Saved in the format of /api/now/table/incident
            ## @return a string
            ## 
            def incident_api_url
                return @incident_api_url
            end
            ## 
            ## Sets the incidentApiUrl property value. Indicates the ServiceNow incident API URL that Intune will use the fetch incidents. Saved in the format of /api/now/table/incident
            ## @param value Value to set for the incident_api_url property.
            ## @return a void
            ## 
            def incident_api_url=(value)
                @incident_api_url = value
            end
            ## 
            ## Gets the instanceUrl property value. Indicates the ServiceNow instance URL that Intune will connect to. Saved in the format of https://<instance>.service-now.com
            ## @return a string
            ## 
            def instance_url
                return @instance_url
            end
            ## 
            ## Sets the instanceUrl property value. Indicates the ServiceNow instance URL that Intune will connect to. Saved in the format of https://<instance>.service-now.com
            ## @param value Value to set for the instance_url property.
            ## @return a void
            ## 
            def instance_url=(value)
                @instance_url = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date Time when connection properties were last updated. The value cannot be modified and is automatically populated when the connection properties were updated.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date Time when connection properties were last updated. The value cannot be modified and is automatically populated when the connection properties were updated.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the lastQueriedDateTime property value. Date Time when incidents from ServiceNow were last queried
            ## @return a date_time
            ## 
            def last_queried_date_time
                return @last_queried_date_time
            end
            ## 
            ## Sets the lastQueriedDateTime property value. Date Time when incidents from ServiceNow were last queried
            ## @param value Value to set for the last_queried_date_time property.
            ## @return a void
            ## 
            def last_queried_date_time=(value)
                @last_queried_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("authenticationMethod", @authentication_method)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("incidentApiUrl", @incident_api_url)
                writer.write_string_value("instanceUrl", @instance_url)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_date_time_value("lastQueriedDateTime", @last_queried_date_time)
                writer.write_enum_value("serviceNowConnectionStatus", @service_now_connection_status)
            end
            ## 
            ## Gets the serviceNowConnectionStatus property value. Status of ServiceNow Connection
            ## @return a service_now_connection_status
            ## 
            def service_now_connection_status
                return @service_now_connection_status
            end
            ## 
            ## Sets the serviceNowConnectionStatus property value. Status of ServiceNow Connection
            ## @param value Value to set for the service_now_connection_status property.
            ## @return a void
            ## 
            def service_now_connection_status=(value)
                @service_now_connection_status = value
            end
        end
    end
end
