require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityAuditLogQuery < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The administrative units tagged to an audit log record.
            @administrative_unit_id_filters
            ## 
            # The display name of the saved audit log query.
            @display_name
            ## 
            # The end date of the date range in the query.
            @filter_end_date_time
            ## 
            # The start date of the date range in the query.
            @filter_start_date_time
            ## 
            # The IP address of the device that was used when the activity was logged.
            @ip_address_filters
            ## 
            # Free text field to search non-indexed properties of the audit log.
            @keyword_filter
            ## 
            # For SharePoint and OneDrive for Business activity, the full path name of the file or folder accessed by the user. For Exchange admin audit logging, the name of the object that was modified by the cmdlet.
            @object_id_filters
            ## 
            # The name of the user or admin activity. For a description of the most common operations/activities, see Search the audit log in the Office 365 Protection Center.
            @operation_filters
            ## 
            # The recordTypeFilters property
            @record_type_filters
            ## 
            # An individual audit log record.
            @records
            ## 
            # The serviceFilters property
            @service_filters
            ## 
            # Describes the current status of the query. The possible values are: notStarted, running, succeeded, failed, cancelled, unknownFutureValue.
            @status
            ## 
            # The UPN (user principal name) of the user who performed the action (specified in the operation property) that resulted in the record being logged; for example, myname@mydomain_name.
            @user_principal_name_filters
            ## 
            ## Gets the administrativeUnitIdFilters property value. The administrative units tagged to an audit log record.
            ## @return a string
            ## 
            def administrative_unit_id_filters
                return @administrative_unit_id_filters
            end
            ## 
            ## Sets the administrativeUnitIdFilters property value. The administrative units tagged to an audit log record.
            ## @param value Value to set for the administrativeUnitIdFilters property.
            ## @return a void
            ## 
            def administrative_unit_id_filters=(value)
                @administrative_unit_id_filters = value
            end
            ## 
            ## Instantiates a new securityAuditLogQuery and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_audit_log_query
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityAuditLogQuery.new
            end
            ## 
            ## Gets the displayName property value. The display name of the saved audit log query.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the saved audit log query.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the filterEndDateTime property value. The end date of the date range in the query.
            ## @return a date_time
            ## 
            def filter_end_date_time
                return @filter_end_date_time
            end
            ## 
            ## Sets the filterEndDateTime property value. The end date of the date range in the query.
            ## @param value Value to set for the filterEndDateTime property.
            ## @return a void
            ## 
            def filter_end_date_time=(value)
                @filter_end_date_time = value
            end
            ## 
            ## Gets the filterStartDateTime property value. The start date of the date range in the query.
            ## @return a date_time
            ## 
            def filter_start_date_time
                return @filter_start_date_time
            end
            ## 
            ## Sets the filterStartDateTime property value. The start date of the date range in the query.
            ## @param value Value to set for the filterStartDateTime property.
            ## @return a void
            ## 
            def filter_start_date_time=(value)
                @filter_start_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "administrativeUnitIdFilters" => lambda {|n| @administrative_unit_id_filters = n.get_collection_of_primitive_values(String) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "filterEndDateTime" => lambda {|n| @filter_end_date_time = n.get_date_time_value() },
                    "filterStartDateTime" => lambda {|n| @filter_start_date_time = n.get_date_time_value() },
                    "ipAddressFilters" => lambda {|n| @ip_address_filters = n.get_collection_of_primitive_values(String) },
                    "keywordFilter" => lambda {|n| @keyword_filter = n.get_string_value() },
                    "objectIdFilters" => lambda {|n| @object_id_filters = n.get_collection_of_primitive_values(String) },
                    "operationFilters" => lambda {|n| @operation_filters = n.get_collection_of_primitive_values(String) },
                    "recordTypeFilters" => lambda {|n| @record_type_filters = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityAuditLogRecordType.create_from_discriminator_value(pn) }) },
                    "records" => lambda {|n| @records = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityAuditLogRecord.create_from_discriminator_value(pn) }) },
                    "serviceFilters" => lambda {|n| @service_filters = n.get_collection_of_primitive_values(String) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityAuditLogQueryStatus) },
                    "userPrincipalNameFilters" => lambda {|n| @user_principal_name_filters = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the ipAddressFilters property value. The IP address of the device that was used when the activity was logged.
            ## @return a string
            ## 
            def ip_address_filters
                return @ip_address_filters
            end
            ## 
            ## Sets the ipAddressFilters property value. The IP address of the device that was used when the activity was logged.
            ## @param value Value to set for the ipAddressFilters property.
            ## @return a void
            ## 
            def ip_address_filters=(value)
                @ip_address_filters = value
            end
            ## 
            ## Gets the keywordFilter property value. Free text field to search non-indexed properties of the audit log.
            ## @return a string
            ## 
            def keyword_filter
                return @keyword_filter
            end
            ## 
            ## Sets the keywordFilter property value. Free text field to search non-indexed properties of the audit log.
            ## @param value Value to set for the keywordFilter property.
            ## @return a void
            ## 
            def keyword_filter=(value)
                @keyword_filter = value
            end
            ## 
            ## Gets the objectIdFilters property value. For SharePoint and OneDrive for Business activity, the full path name of the file or folder accessed by the user. For Exchange admin audit logging, the name of the object that was modified by the cmdlet.
            ## @return a string
            ## 
            def object_id_filters
                return @object_id_filters
            end
            ## 
            ## Sets the objectIdFilters property value. For SharePoint and OneDrive for Business activity, the full path name of the file or folder accessed by the user. For Exchange admin audit logging, the name of the object that was modified by the cmdlet.
            ## @param value Value to set for the objectIdFilters property.
            ## @return a void
            ## 
            def object_id_filters=(value)
                @object_id_filters = value
            end
            ## 
            ## Gets the operationFilters property value. The name of the user or admin activity. For a description of the most common operations/activities, see Search the audit log in the Office 365 Protection Center.
            ## @return a string
            ## 
            def operation_filters
                return @operation_filters
            end
            ## 
            ## Sets the operationFilters property value. The name of the user or admin activity. For a description of the most common operations/activities, see Search the audit log in the Office 365 Protection Center.
            ## @param value Value to set for the operationFilters property.
            ## @return a void
            ## 
            def operation_filters=(value)
                @operation_filters = value
            end
            ## 
            ## Gets the recordTypeFilters property value. The recordTypeFilters property
            ## @return a security_audit_log_record_type
            ## 
            def record_type_filters
                return @record_type_filters
            end
            ## 
            ## Sets the recordTypeFilters property value. The recordTypeFilters property
            ## @param value Value to set for the recordTypeFilters property.
            ## @return a void
            ## 
            def record_type_filters=(value)
                @record_type_filters = value
            end
            ## 
            ## Gets the records property value. An individual audit log record.
            ## @return a security_audit_log_record
            ## 
            def records
                return @records
            end
            ## 
            ## Sets the records property value. An individual audit log record.
            ## @param value Value to set for the records property.
            ## @return a void
            ## 
            def records=(value)
                @records = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("administrativeUnitIdFilters", @administrative_unit_id_filters)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("filterEndDateTime", @filter_end_date_time)
                writer.write_date_time_value("filterStartDateTime", @filter_start_date_time)
                writer.write_collection_of_primitive_values("ipAddressFilters", @ip_address_filters)
                writer.write_string_value("keywordFilter", @keyword_filter)
                writer.write_collection_of_primitive_values("objectIdFilters", @object_id_filters)
                writer.write_collection_of_primitive_values("operationFilters", @operation_filters)
                writer.write_collection_of_object_values("recordTypeFilters", @record_type_filters)
                writer.write_collection_of_object_values("records", @records)
                writer.write_collection_of_primitive_values("serviceFilters", @service_filters)
                writer.write_enum_value("status", @status)
                writer.write_collection_of_primitive_values("userPrincipalNameFilters", @user_principal_name_filters)
            end
            ## 
            ## Gets the serviceFilters property value. The serviceFilters property
            ## @return a string
            ## 
            def service_filters
                return @service_filters
            end
            ## 
            ## Sets the serviceFilters property value. The serviceFilters property
            ## @param value Value to set for the serviceFilters property.
            ## @return a void
            ## 
            def service_filters=(value)
                @service_filters = value
            end
            ## 
            ## Gets the status property value. Describes the current status of the query. The possible values are: notStarted, running, succeeded, failed, cancelled, unknownFutureValue.
            ## @return a security_audit_log_query_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Describes the current status of the query. The possible values are: notStarted, running, succeeded, failed, cancelled, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the userPrincipalNameFilters property value. The UPN (user principal name) of the user who performed the action (specified in the operation property) that resulted in the record being logged; for example, myname@mydomain_name.
            ## @return a string
            ## 
            def user_principal_name_filters
                return @user_principal_name_filters
            end
            ## 
            ## Sets the userPrincipalNameFilters property value. The UPN (user principal name) of the user who performed the action (specified in the operation property) that resulted in the record being logged; for example, myname@mydomain_name.
            ## @param value Value to set for the userPrincipalNameFilters property.
            ## @return a void
            ## 
            def user_principal_name_filters=(value)
                @user_principal_name_filters = value
            end
        end
    end
end
