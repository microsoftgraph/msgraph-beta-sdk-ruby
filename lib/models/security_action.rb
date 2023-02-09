require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityAction < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Reason for invoking this action.
            @action_reason
            ## 
            # The Application ID of the calling application that submitted (POST) the action. The appId should be extracted from the auth token and not entered manually by the calling application.
            @app_id
            ## 
            # Azure tenant ID of the entity to determine which tenant the entity belongs to (multi-tenancy support). The azureTenantId should be extracted from the auth token and not entered manually by the calling application.
            @azure_tenant_id
            ## 
            # The clientContext property
            @client_context
            ## 
            # Timestamp when the action was completed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @completed_date_time
            ## 
            # Timestamp when the action is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # Error info when the action fails.
            @error_info
            ## 
            # Timestamp when this action was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_action_date_time
            ## 
            # Action name.
            @name
            ## 
            # Collection of parameters (key-value pairs) necessary to invoke the action, for example, URL or fileHash to block.). Required.
            @parameters
            ## 
            # Collection of securityActionState to keep the history of an action.
            @states
            ## 
            # Status of the action. Possible values are: NotStarted, Running, Completed, Failed.
            @status
            ## 
            # The user principal name of the signed-in user that submitted  (POST) the action. The user should be extracted from the auth token and not entered manually by the calling application.
            @user
            ## 
            # Complex Type containing details about the Security product/service vendor, provider, and sub-provider (for example, vendor=Microsoft; provider=Windows Defender ATP; sub-provider=AppLocker).
            @vendor_information
            ## 
            ## Gets the actionReason property value. Reason for invoking this action.
            ## @return a string
            ## 
            def action_reason
                return @action_reason
            end
            ## 
            ## Sets the actionReason property value. Reason for invoking this action.
            ## @param value Value to set for the action_reason property.
            ## @return a void
            ## 
            def action_reason=(value)
                @action_reason = value
            end
            ## 
            ## Gets the appId property value. The Application ID of the calling application that submitted (POST) the action. The appId should be extracted from the auth token and not entered manually by the calling application.
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The Application ID of the calling application that submitted (POST) the action. The appId should be extracted from the auth token and not entered manually by the calling application.
            ## @param value Value to set for the app_id property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Gets the azureTenantId property value. Azure tenant ID of the entity to determine which tenant the entity belongs to (multi-tenancy support). The azureTenantId should be extracted from the auth token and not entered manually by the calling application.
            ## @return a string
            ## 
            def azure_tenant_id
                return @azure_tenant_id
            end
            ## 
            ## Sets the azureTenantId property value. Azure tenant ID of the entity to determine which tenant the entity belongs to (multi-tenancy support). The azureTenantId should be extracted from the auth token and not entered manually by the calling application.
            ## @param value Value to set for the azure_tenant_id property.
            ## @return a void
            ## 
            def azure_tenant_id=(value)
                @azure_tenant_id = value
            end
            ## 
            ## Gets the clientContext property value. The clientContext property
            ## @return a string
            ## 
            def client_context
                return @client_context
            end
            ## 
            ## Sets the clientContext property value. The clientContext property
            ## @param value Value to set for the client_context property.
            ## @return a void
            ## 
            def client_context=(value)
                @client_context = value
            end
            ## 
            ## Gets the completedDateTime property value. Timestamp when the action was completed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def completed_date_time
                return @completed_date_time
            end
            ## 
            ## Sets the completedDateTime property value. Timestamp when the action was completed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the completed_date_time property.
            ## @return a void
            ## 
            def completed_date_time=(value)
                @completed_date_time = value
            end
            ## 
            ## Instantiates a new securityAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Timestamp when the action is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Timestamp when the action is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a security_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityAction.new
            end
            ## 
            ## Gets the errorInfo property value. Error info when the action fails.
            ## @return a result_info
            ## 
            def error_info
                return @error_info
            end
            ## 
            ## Sets the errorInfo property value. Error info when the action fails.
            ## @param value Value to set for the error_info property.
            ## @return a void
            ## 
            def error_info=(value)
                @error_info = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionReason" => lambda {|n| @action_reason = n.get_string_value() },
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "azureTenantId" => lambda {|n| @azure_tenant_id = n.get_string_value() },
                    "clientContext" => lambda {|n| @client_context = n.get_string_value() },
                    "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "errorInfo" => lambda {|n| @error_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ResultInfo.create_from_discriminator_value(pn) }) },
                    "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "parameters" => lambda {|n| @parameters = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "states" => lambda {|n| @states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityActionState.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::OperationStatus) },
                    "user" => lambda {|n| @user = n.get_string_value() },
                    "vendorInformation" => lambda {|n| @vendor_information = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityVendorInformation.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastActionDateTime property value. Timestamp when this action was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_action_date_time
                return @last_action_date_time
            end
            ## 
            ## Sets the lastActionDateTime property value. Timestamp when this action was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the last_action_date_time property.
            ## @return a void
            ## 
            def last_action_date_time=(value)
                @last_action_date_time = value
            end
            ## 
            ## Gets the name property value. Action name.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Action name.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the parameters property value. Collection of parameters (key-value pairs) necessary to invoke the action, for example, URL or fileHash to block.). Required.
            ## @return a key_value_pair
            ## 
            def parameters
                return @parameters
            end
            ## 
            ## Sets the parameters property value. Collection of parameters (key-value pairs) necessary to invoke the action, for example, URL or fileHash to block.). Required.
            ## @param value Value to set for the parameters property.
            ## @return a void
            ## 
            def parameters=(value)
                @parameters = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("actionReason", @action_reason)
                writer.write_string_value("appId", @app_id)
                writer.write_string_value("azureTenantId", @azure_tenant_id)
                writer.write_string_value("clientContext", @client_context)
                writer.write_date_time_value("completedDateTime", @completed_date_time)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("errorInfo", @error_info)
                writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
                writer.write_string_value("name", @name)
                writer.write_collection_of_object_values("parameters", @parameters)
                writer.write_collection_of_object_values("states", @states)
                writer.write_enum_value("status", @status)
                writer.write_string_value("user", @user)
                writer.write_object_value("vendorInformation", @vendor_information)
            end
            ## 
            ## Gets the states property value. Collection of securityActionState to keep the history of an action.
            ## @return a security_action_state
            ## 
            def states
                return @states
            end
            ## 
            ## Sets the states property value. Collection of securityActionState to keep the history of an action.
            ## @param value Value to set for the states property.
            ## @return a void
            ## 
            def states=(value)
                @states = value
            end
            ## 
            ## Gets the status property value. Status of the action. Possible values are: NotStarted, Running, Completed, Failed.
            ## @return a operation_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Status of the action. Possible values are: NotStarted, Running, Completed, Failed.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the user property value. The user principal name of the signed-in user that submitted  (POST) the action. The user should be extracted from the auth token and not entered manually by the calling application.
            ## @return a string
            ## 
            def user
                return @user
            end
            ## 
            ## Sets the user property value. The user principal name of the signed-in user that submitted  (POST) the action. The user should be extracted from the auth token and not entered manually by the calling application.
            ## @param value Value to set for the user property.
            ## @return a void
            ## 
            def user=(value)
                @user = value
            end
            ## 
            ## Gets the vendorInformation property value. Complex Type containing details about the Security product/service vendor, provider, and sub-provider (for example, vendor=Microsoft; provider=Windows Defender ATP; sub-provider=AppLocker).
            ## @return a security_vendor_information
            ## 
            def vendor_information
                return @vendor_information
            end
            ## 
            ## Sets the vendorInformation property value. Complex Type containing details about the Security product/service vendor, provider, and sub-provider (for example, vendor=Microsoft; provider=Windows Defender ATP; sub-provider=AppLocker).
            ## @param value Value to set for the vendor_information property.
            ## @return a void
            ## 
            def vendor_information=(value)
                @vendor_information = value
            end
        end
    end
end
