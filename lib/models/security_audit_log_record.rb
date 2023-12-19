require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityAuditLogRecord < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The administrativeUnits property
            @administrative_units
            ## 
            # The auditData property
            @audit_data
            ## 
            # The auditLogRecordType property
            @audit_log_record_type
            ## 
            # The clientIp property
            @client_ip
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The objectId property
            @object_id_escaped
            ## 
            # The operation property
            @operation
            ## 
            # The organizationId property
            @organization_id
            ## 
            # The service property
            @service
            ## 
            # The userId property
            @user_id
            ## 
            # The userPrincipalName property
            @user_principal_name
            ## 
            # The userType property
            @user_type
            ## 
            ## Gets the administrativeUnits property value. The administrativeUnits property
            ## @return a string
            ## 
            def administrative_units
                return @administrative_units
            end
            ## 
            ## Sets the administrativeUnits property value. The administrativeUnits property
            ## @param value Value to set for the administrativeUnits property.
            ## @return a void
            ## 
            def administrative_units=(value)
                @administrative_units = value
            end
            ## 
            ## Gets the auditData property value. The auditData property
            ## @return a security_audit_data
            ## 
            def audit_data
                return @audit_data
            end
            ## 
            ## Sets the auditData property value. The auditData property
            ## @param value Value to set for the auditData property.
            ## @return a void
            ## 
            def audit_data=(value)
                @audit_data = value
            end
            ## 
            ## Gets the auditLogRecordType property value. The auditLogRecordType property
            ## @return a security_audit_log_record_audit_log_record_type
            ## 
            def audit_log_record_type
                return @audit_log_record_type
            end
            ## 
            ## Sets the auditLogRecordType property value. The auditLogRecordType property
            ## @param value Value to set for the auditLogRecordType property.
            ## @return a void
            ## 
            def audit_log_record_type=(value)
                @audit_log_record_type = value
            end
            ## 
            ## Gets the clientIp property value. The clientIp property
            ## @return a string
            ## 
            def client_ip
                return @client_ip
            end
            ## 
            ## Sets the clientIp property value. The clientIp property
            ## @param value Value to set for the clientIp property.
            ## @return a void
            ## 
            def client_ip=(value)
                @client_ip = value
            end
            ## 
            ## Instantiates a new securityAuditLogRecord and sets the default values.
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
            ## @return a security_audit_log_record
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityAuditLogRecord.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "administrativeUnits" => lambda {|n| @administrative_units = n.get_collection_of_primitive_values(String) },
                    "auditData" => lambda {|n| @audit_data = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityAuditData.create_from_discriminator_value(pn) }) },
                    "auditLogRecordType" => lambda {|n| @audit_log_record_type = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityAuditLogRecordAuditLogRecordType) },
                    "clientIp" => lambda {|n| @client_ip = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "objectId" => lambda {|n| @object_id_escaped = n.get_string_value() },
                    "operation" => lambda {|n| @operation = n.get_string_value() },
                    "organizationId" => lambda {|n| @organization_id = n.get_string_value() },
                    "service" => lambda {|n| @service = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    "userType" => lambda {|n| @user_type = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityAuditLogRecordUserType) },
                })
            end
            ## 
            ## Gets the objectId property value. The objectId property
            ## @return a string
            ## 
            def object_id_escaped
                return @object_id_escaped
            end
            ## 
            ## Sets the objectId property value. The objectId property
            ## @param value Value to set for the objectId property.
            ## @return a void
            ## 
            def object_id_escaped=(value)
                @object_id_escaped = value
            end
            ## 
            ## Gets the operation property value. The operation property
            ## @return a string
            ## 
            def operation
                return @operation
            end
            ## 
            ## Sets the operation property value. The operation property
            ## @param value Value to set for the operation property.
            ## @return a void
            ## 
            def operation=(value)
                @operation = value
            end
            ## 
            ## Gets the organizationId property value. The organizationId property
            ## @return a string
            ## 
            def organization_id
                return @organization_id
            end
            ## 
            ## Sets the organizationId property value. The organizationId property
            ## @param value Value to set for the organizationId property.
            ## @return a void
            ## 
            def organization_id=(value)
                @organization_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("administrativeUnits", @administrative_units)
                writer.write_object_value("auditData", @audit_data)
                writer.write_enum_value("auditLogRecordType", @audit_log_record_type)
                writer.write_string_value("clientIp", @client_ip)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("objectId", @object_id_escaped)
                writer.write_string_value("operation", @operation)
                writer.write_string_value("organizationId", @organization_id)
                writer.write_string_value("service", @service)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_enum_value("userType", @user_type)
            end
            ## 
            ## Gets the service property value. The service property
            ## @return a string
            ## 
            def service
                return @service
            end
            ## 
            ## Sets the service property value. The service property
            ## @param value Value to set for the service property.
            ## @return a void
            ## 
            def service=(value)
                @service = value
            end
            ## 
            ## Gets the userId property value. The userId property
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The userId property
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPrincipalName property value. The userPrincipalName property
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The userPrincipalName property
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
            ## 
            ## Gets the userType property value. The userType property
            ## @return a security_audit_log_record_user_type
            ## 
            def user_type
                return @user_type
            end
            ## 
            ## Sets the userType property value. The userType property
            ## @param value Value to set for the userType property.
            ## @return a void
            ## 
            def user_type=(value)
                @user_type = value
            end
        end
    end
end
