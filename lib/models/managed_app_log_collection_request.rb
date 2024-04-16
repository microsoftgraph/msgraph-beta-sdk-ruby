require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The Managed App log collection response
        class ManagedAppLogCollectionRequest < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # DateTime of when the log upload request was completed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.
            @completed_date_time
            ## 
            # The unique identifier of the app instance for which diagnostic was collected.
            @managed_app_registration_id
            ## 
            # The user principal name associated with the request for the managed application log collection.
            @requested_by
            ## 
            # The user principal name associated with the request for the managed application log collection. Read-only.
            @requested_by_user_principal_name
            ## 
            # DateTime of when the log upload request was received. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.
            @requested_date_time
            ## 
            # Indicates the status for the app log collection request - pending, completed or failed. Default is pending.
            @status
            ## 
            # The collection of log upload results as reported by each component on the device. Such components can be the application itself, the Mobile Application Management (MAM) SDK, and other on-device components that are requested to upload diagnostic logs.
            @uploaded_logs
            ## 
            # Represents the current consent status of the associated `managedAppLogCollectionRequest`.
            @user_log_upload_consent
            ## 
            # Version of the entity.
            @version
            ## 
            ## Gets the completedDateTime property value. DateTime of when the log upload request was completed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.
            ## @return a date_time
            ## 
            def completed_date_time
                return @completed_date_time
            end
            ## 
            ## Sets the completedDateTime property value. DateTime of when the log upload request was completed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.
            ## @param value Value to set for the completedDateTime property.
            ## @return a void
            ## 
            def completed_date_time=(value)
                @completed_date_time = value
            end
            ## 
            ## Instantiates a new ManagedAppLogCollectionRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_app_log_collection_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedAppLogCollectionRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                    "managedAppRegistrationId" => lambda {|n| @managed_app_registration_id = n.get_string_value() },
                    "requestedBy" => lambda {|n| @requested_by = n.get_string_value() },
                    "requestedByUserPrincipalName" => lambda {|n| @requested_by_user_principal_name = n.get_string_value() },
                    "requestedDateTime" => lambda {|n| @requested_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
                    "uploadedLogs" => lambda {|n| @uploaded_logs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedAppLogUpload.create_from_discriminator_value(pn) }) },
                    "userLogUploadConsent" => lambda {|n| @user_log_upload_consent = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppLogUploadConsent) },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the managedAppRegistrationId property value. The unique identifier of the app instance for which diagnostic was collected.
            ## @return a string
            ## 
            def managed_app_registration_id
                return @managed_app_registration_id
            end
            ## 
            ## Sets the managedAppRegistrationId property value. The unique identifier of the app instance for which diagnostic was collected.
            ## @param value Value to set for the managedAppRegistrationId property.
            ## @return a void
            ## 
            def managed_app_registration_id=(value)
                @managed_app_registration_id = value
            end
            ## 
            ## Gets the requestedBy property value. The user principal name associated with the request for the managed application log collection.
            ## @return a string
            ## 
            def requested_by
                return @requested_by
            end
            ## 
            ## Sets the requestedBy property value. The user principal name associated with the request for the managed application log collection.
            ## @param value Value to set for the requestedBy property.
            ## @return a void
            ## 
            def requested_by=(value)
                @requested_by = value
            end
            ## 
            ## Gets the requestedByUserPrincipalName property value. The user principal name associated with the request for the managed application log collection. Read-only.
            ## @return a string
            ## 
            def requested_by_user_principal_name
                return @requested_by_user_principal_name
            end
            ## 
            ## Sets the requestedByUserPrincipalName property value. The user principal name associated with the request for the managed application log collection. Read-only.
            ## @param value Value to set for the requestedByUserPrincipalName property.
            ## @return a void
            ## 
            def requested_by_user_principal_name=(value)
                @requested_by_user_principal_name = value
            end
            ## 
            ## Gets the requestedDateTime property value. DateTime of when the log upload request was received. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.
            ## @return a date_time
            ## 
            def requested_date_time
                return @requested_date_time
            end
            ## 
            ## Sets the requestedDateTime property value. DateTime of when the log upload request was received. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.
            ## @param value Value to set for the requestedDateTime property.
            ## @return a void
            ## 
            def requested_date_time=(value)
                @requested_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("completedDateTime", @completed_date_time)
                writer.write_string_value("managedAppRegistrationId", @managed_app_registration_id)
                writer.write_string_value("requestedBy", @requested_by)
                writer.write_string_value("requestedByUserPrincipalName", @requested_by_user_principal_name)
                writer.write_date_time_value("requestedDateTime", @requested_date_time)
                writer.write_string_value("status", @status)
                writer.write_collection_of_object_values("uploadedLogs", @uploaded_logs)
                writer.write_enum_value("userLogUploadConsent", @user_log_upload_consent)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the status property value. Indicates the status for the app log collection request - pending, completed or failed. Default is pending.
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Indicates the status for the app log collection request - pending, completed or failed. Default is pending.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the uploadedLogs property value. The collection of log upload results as reported by each component on the device. Such components can be the application itself, the Mobile Application Management (MAM) SDK, and other on-device components that are requested to upload diagnostic logs.
            ## @return a managed_app_log_upload
            ## 
            def uploaded_logs
                return @uploaded_logs
            end
            ## 
            ## Sets the uploadedLogs property value. The collection of log upload results as reported by each component on the device. Such components can be the application itself, the Mobile Application Management (MAM) SDK, and other on-device components that are requested to upload diagnostic logs.
            ## @param value Value to set for the uploadedLogs property.
            ## @return a void
            ## 
            def uploaded_logs=(value)
                @uploaded_logs = value
            end
            ## 
            ## Gets the userLogUploadConsent property value. Represents the current consent status of the associated `managedAppLogCollectionRequest`.
            ## @return a managed_app_log_upload_consent
            ## 
            def user_log_upload_consent
                return @user_log_upload_consent
            end
            ## 
            ## Sets the userLogUploadConsent property value. Represents the current consent status of the associated `managedAppLogCollectionRequest`.
            ## @param value Value to set for the userLogUploadConsent property.
            ## @return a void
            ## 
            def user_log_upload_consent=(value)
                @user_log_upload_consent = value
            end
            ## 
            ## Gets the version property value. Version of the entity.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Version of the entity.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
