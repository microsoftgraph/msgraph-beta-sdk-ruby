require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # These are elevation approval requests for EPM support arbitrated scenario initiated by IW user that admins can take action on.
        class PrivilegeManagementElevationRequest < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Details of the application which is being requested to elevate, allowing the admin to understand the identity of the application. It includes file info such as FilePath, FileHash, FilePublisher, and etc. Returned by default. Read-only.
            @application_detail
            ## 
            # The device name used to initiate the elevation request. For example: 'cotonso-laptop'. Returned by default. Read-only.
            @device_name
            ## 
            # The date and time when the elevation request was submitted/created. The value cannot be modified and is automatically populated when the elevation request is submitted/created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.
            @request_created_date_time
            ## 
            # Expiration set for the request when it was created, regardless of approved or denied status. For example: '2023-08-03T14:24:22Z'. Returned by default. Returned by default. Read-only.
            @request_expiry_date_time
            ## 
            # Justification provided by the end user for the elevation request. For example :'Need to elevate to install microsoft word'. Read-only.
            @request_justification
            ## 
            # The date and time when the elevation request was either submitted/created or approved/denied. The value cannot be modified and is automatically populated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.
            @request_last_modified_date_time
            ## 
            # The Azure Active Directory (AAD) identifier of the end user who is requesting this elevation. For example: 'F1A57311-B9EB-45B7-9415-8555E68EDC9E'. Returned by default. Read-only.
            @requested_by_user_id
            ## 
            # The User Principal Name (UPN) of the end user who requested this elevation. For example: 'user1@contoso.com'. Returned by default. Read-only.
            @requested_by_user_principal_name
            ## 
            # The Intune Device Identifier of the managed device used to initiate the elevation request. For example: '90F5F6E8-CA09-4811-97F6-4D0DD532D916'. Returned by default. Read-only.
            @requested_on_device_id
            ## 
            # This is the Azure Active Directory (AAD) user id of the administrator who approved or denied the request. For example: 'F1A57311-B9EB-45B7-9415-8555E68EDC9E'. This field would be String.Empty before the request is either approved or denied. Read-only.
            @review_completed_by_user_id
            ## 
            # This is the User Principal Name (UPN) of the administrator who approved or denied the request. For example: 'admin@contoso.com'. This field would be String.Empty before the request is either approved or denied. Read-only.
            @review_completed_by_user_principal_name
            ## 
            # The DateTime for which the request was approved or denied. For example, midnight UTC on August 3rd, 2023 would look like this: '2023-08-03T00:00:00Z'. Read-only.
            @review_completed_date_time
            ## 
            # An optional justification provided by approver at approval or denied time. This field will be String.Empty if approver decides to not provide a justification. For example: 'Run this installer today'
            @reviewer_justification
            ## 
            # Indicates state of elevation request
            @status
            ## 
            ## Gets the applicationDetail property value. Details of the application which is being requested to elevate, allowing the admin to understand the identity of the application. It includes file info such as FilePath, FileHash, FilePublisher, and etc. Returned by default. Read-only.
            ## @return a elevation_request_application_detail
            ## 
            def application_detail
                return @application_detail
            end
            ## 
            ## Sets the applicationDetail property value. Details of the application which is being requested to elevate, allowing the admin to understand the identity of the application. It includes file info such as FilePath, FileHash, FilePublisher, and etc. Returned by default. Read-only.
            ## @param value Value to set for the applicationDetail property.
            ## @return a void
            ## 
            def application_detail=(value)
                @application_detail = value
            end
            ## 
            ## Instantiates a new PrivilegeManagementElevationRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a privilege_management_elevation_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrivilegeManagementElevationRequest.new
            end
            ## 
            ## Gets the deviceName property value. The device name used to initiate the elevation request. For example: 'cotonso-laptop'. Returned by default. Read-only.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The device name used to initiate the elevation request. For example: 'cotonso-laptop'. Returned by default. Read-only.
            ## @param value Value to set for the deviceName property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicationDetail" => lambda {|n| @application_detail = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ElevationRequestApplicationDetail.create_from_discriminator_value(pn) }) },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "requestCreatedDateTime" => lambda {|n| @request_created_date_time = n.get_date_time_value() },
                    "requestExpiryDateTime" => lambda {|n| @request_expiry_date_time = n.get_date_time_value() },
                    "requestJustification" => lambda {|n| @request_justification = n.get_string_value() },
                    "requestLastModifiedDateTime" => lambda {|n| @request_last_modified_date_time = n.get_date_time_value() },
                    "requestedByUserId" => lambda {|n| @requested_by_user_id = n.get_string_value() },
                    "requestedByUserPrincipalName" => lambda {|n| @requested_by_user_principal_name = n.get_string_value() },
                    "requestedOnDeviceId" => lambda {|n| @requested_on_device_id = n.get_string_value() },
                    "reviewCompletedByUserId" => lambda {|n| @review_completed_by_user_id = n.get_string_value() },
                    "reviewCompletedByUserPrincipalName" => lambda {|n| @review_completed_by_user_principal_name = n.get_string_value() },
                    "reviewCompletedDateTime" => lambda {|n| @review_completed_date_time = n.get_date_time_value() },
                    "reviewerJustification" => lambda {|n| @reviewer_justification = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::ElevationRequestState) },
                })
            end
            ## 
            ## Gets the requestCreatedDateTime property value. The date and time when the elevation request was submitted/created. The value cannot be modified and is automatically populated when the elevation request is submitted/created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.
            ## @return a date_time
            ## 
            def request_created_date_time
                return @request_created_date_time
            end
            ## 
            ## Sets the requestCreatedDateTime property value. The date and time when the elevation request was submitted/created. The value cannot be modified and is automatically populated when the elevation request is submitted/created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.
            ## @param value Value to set for the requestCreatedDateTime property.
            ## @return a void
            ## 
            def request_created_date_time=(value)
                @request_created_date_time = value
            end
            ## 
            ## Gets the requestExpiryDateTime property value. Expiration set for the request when it was created, regardless of approved or denied status. For example: '2023-08-03T14:24:22Z'. Returned by default. Returned by default. Read-only.
            ## @return a date_time
            ## 
            def request_expiry_date_time
                return @request_expiry_date_time
            end
            ## 
            ## Sets the requestExpiryDateTime property value. Expiration set for the request when it was created, regardless of approved or denied status. For example: '2023-08-03T14:24:22Z'. Returned by default. Returned by default. Read-only.
            ## @param value Value to set for the requestExpiryDateTime property.
            ## @return a void
            ## 
            def request_expiry_date_time=(value)
                @request_expiry_date_time = value
            end
            ## 
            ## Gets the requestJustification property value. Justification provided by the end user for the elevation request. For example :'Need to elevate to install microsoft word'. Read-only.
            ## @return a string
            ## 
            def request_justification
                return @request_justification
            end
            ## 
            ## Sets the requestJustification property value. Justification provided by the end user for the elevation request. For example :'Need to elevate to install microsoft word'. Read-only.
            ## @param value Value to set for the requestJustification property.
            ## @return a void
            ## 
            def request_justification=(value)
                @request_justification = value
            end
            ## 
            ## Gets the requestLastModifiedDateTime property value. The date and time when the elevation request was either submitted/created or approved/denied. The value cannot be modified and is automatically populated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.
            ## @return a date_time
            ## 
            def request_last_modified_date_time
                return @request_last_modified_date_time
            end
            ## 
            ## Sets the requestLastModifiedDateTime property value. The date and time when the elevation request was either submitted/created or approved/denied. The value cannot be modified and is automatically populated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only.
            ## @param value Value to set for the requestLastModifiedDateTime property.
            ## @return a void
            ## 
            def request_last_modified_date_time=(value)
                @request_last_modified_date_time = value
            end
            ## 
            ## Gets the requestedByUserId property value. The Azure Active Directory (AAD) identifier of the end user who is requesting this elevation. For example: 'F1A57311-B9EB-45B7-9415-8555E68EDC9E'. Returned by default. Read-only.
            ## @return a string
            ## 
            def requested_by_user_id
                return @requested_by_user_id
            end
            ## 
            ## Sets the requestedByUserId property value. The Azure Active Directory (AAD) identifier of the end user who is requesting this elevation. For example: 'F1A57311-B9EB-45B7-9415-8555E68EDC9E'. Returned by default. Read-only.
            ## @param value Value to set for the requestedByUserId property.
            ## @return a void
            ## 
            def requested_by_user_id=(value)
                @requested_by_user_id = value
            end
            ## 
            ## Gets the requestedByUserPrincipalName property value. The User Principal Name (UPN) of the end user who requested this elevation. For example: 'user1@contoso.com'. Returned by default. Read-only.
            ## @return a string
            ## 
            def requested_by_user_principal_name
                return @requested_by_user_principal_name
            end
            ## 
            ## Sets the requestedByUserPrincipalName property value. The User Principal Name (UPN) of the end user who requested this elevation. For example: 'user1@contoso.com'. Returned by default. Read-only.
            ## @param value Value to set for the requestedByUserPrincipalName property.
            ## @return a void
            ## 
            def requested_by_user_principal_name=(value)
                @requested_by_user_principal_name = value
            end
            ## 
            ## Gets the requestedOnDeviceId property value. The Intune Device Identifier of the managed device used to initiate the elevation request. For example: '90F5F6E8-CA09-4811-97F6-4D0DD532D916'. Returned by default. Read-only.
            ## @return a string
            ## 
            def requested_on_device_id
                return @requested_on_device_id
            end
            ## 
            ## Sets the requestedOnDeviceId property value. The Intune Device Identifier of the managed device used to initiate the elevation request. For example: '90F5F6E8-CA09-4811-97F6-4D0DD532D916'. Returned by default. Read-only.
            ## @param value Value to set for the requestedOnDeviceId property.
            ## @return a void
            ## 
            def requested_on_device_id=(value)
                @requested_on_device_id = value
            end
            ## 
            ## Gets the reviewCompletedByUserId property value. This is the Azure Active Directory (AAD) user id of the administrator who approved or denied the request. For example: 'F1A57311-B9EB-45B7-9415-8555E68EDC9E'. This field would be String.Empty before the request is either approved or denied. Read-only.
            ## @return a string
            ## 
            def review_completed_by_user_id
                return @review_completed_by_user_id
            end
            ## 
            ## Sets the reviewCompletedByUserId property value. This is the Azure Active Directory (AAD) user id of the administrator who approved or denied the request. For example: 'F1A57311-B9EB-45B7-9415-8555E68EDC9E'. This field would be String.Empty before the request is either approved or denied. Read-only.
            ## @param value Value to set for the reviewCompletedByUserId property.
            ## @return a void
            ## 
            def review_completed_by_user_id=(value)
                @review_completed_by_user_id = value
            end
            ## 
            ## Gets the reviewCompletedByUserPrincipalName property value. This is the User Principal Name (UPN) of the administrator who approved or denied the request. For example: 'admin@contoso.com'. This field would be String.Empty before the request is either approved or denied. Read-only.
            ## @return a string
            ## 
            def review_completed_by_user_principal_name
                return @review_completed_by_user_principal_name
            end
            ## 
            ## Sets the reviewCompletedByUserPrincipalName property value. This is the User Principal Name (UPN) of the administrator who approved or denied the request. For example: 'admin@contoso.com'. This field would be String.Empty before the request is either approved or denied. Read-only.
            ## @param value Value to set for the reviewCompletedByUserPrincipalName property.
            ## @return a void
            ## 
            def review_completed_by_user_principal_name=(value)
                @review_completed_by_user_principal_name = value
            end
            ## 
            ## Gets the reviewCompletedDateTime property value. The DateTime for which the request was approved or denied. For example, midnight UTC on August 3rd, 2023 would look like this: '2023-08-03T00:00:00Z'. Read-only.
            ## @return a date_time
            ## 
            def review_completed_date_time
                return @review_completed_date_time
            end
            ## 
            ## Sets the reviewCompletedDateTime property value. The DateTime for which the request was approved or denied. For example, midnight UTC on August 3rd, 2023 would look like this: '2023-08-03T00:00:00Z'. Read-only.
            ## @param value Value to set for the reviewCompletedDateTime property.
            ## @return a void
            ## 
            def review_completed_date_time=(value)
                @review_completed_date_time = value
            end
            ## 
            ## Gets the reviewerJustification property value. An optional justification provided by approver at approval or denied time. This field will be String.Empty if approver decides to not provide a justification. For example: 'Run this installer today'
            ## @return a string
            ## 
            def reviewer_justification
                return @reviewer_justification
            end
            ## 
            ## Sets the reviewerJustification property value. An optional justification provided by approver at approval or denied time. This field will be String.Empty if approver decides to not provide a justification. For example: 'Run this installer today'
            ## @param value Value to set for the reviewerJustification property.
            ## @return a void
            ## 
            def reviewer_justification=(value)
                @reviewer_justification = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("applicationDetail", @application_detail)
                writer.write_string_value("deviceName", @device_name)
                writer.write_date_time_value("requestCreatedDateTime", @request_created_date_time)
                writer.write_date_time_value("requestExpiryDateTime", @request_expiry_date_time)
                writer.write_string_value("requestJustification", @request_justification)
                writer.write_date_time_value("requestLastModifiedDateTime", @request_last_modified_date_time)
                writer.write_string_value("requestedByUserId", @requested_by_user_id)
                writer.write_string_value("requestedByUserPrincipalName", @requested_by_user_principal_name)
                writer.write_string_value("requestedOnDeviceId", @requested_on_device_id)
                writer.write_string_value("reviewCompletedByUserId", @review_completed_by_user_id)
                writer.write_string_value("reviewCompletedByUserPrincipalName", @review_completed_by_user_principal_name)
                writer.write_date_time_value("reviewCompletedDateTime", @review_completed_date_time)
                writer.write_string_value("reviewerJustification", @reviewer_justification)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. Indicates state of elevation request
            ## @return a elevation_request_state
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Indicates state of elevation request
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
