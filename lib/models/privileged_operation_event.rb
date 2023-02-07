require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PrivilegedOperationEvent < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Detailed human readable information for the event.
        @additional_information
        ## 
        # Indicates the time when the event is created.
        @creation_date_time
        ## 
        # This is only used when the requestType is Activate, and it indicates the expiration time for the role activation.
        @expiration_date_time
        ## 
        # Incident/Request ticket number during role activation. The value is presented only if the ticket number is provided during role activation.
        @reference_key
        ## 
        # Incident/Request ticketing system provided during tole activation. The value is presented only if the ticket system is provided during role activation.
        @reference_system
        ## 
        # The request operation type. The requestType value can be: Assign (role assignment), Activate (role activation), Unassign (remove role assignment), Deactivate (role deactivation), ScanAlertsNow (scan security alerts), DismissAlert (dismiss security alert), FixAlertItem (fix a security alert issue),  AccessReview_Review (review an Access Review), AccessReview_Create (create an Access Review) , AccessReview_Update (update an Access Review), AccessReview_Delete (delete an Access Review).
        @request_type
        ## 
        # The user id of the requestor who initiates the operation.
        @requestor_id
        ## 
        # The user name of the requestor who initiates the operation.
        @requestor_name
        ## 
        # The id of the role that is associated with the operation.
        @role_id
        ## 
        # The name of the role.
        @role_name
        ## 
        # The tenant (organization) id.
        @tenant_id
        ## 
        # The id of the user that is associated with the operation.
        @user_id
        ## 
        # The user's email.
        @user_mail
        ## 
        # The user's display name.
        @user_name
        ## 
        ## Gets the additionalInformation property value. Detailed human readable information for the event.
        ## @return a string
        ## 
        def additional_information
            return @additional_information
        end
        ## 
        ## Sets the additionalInformation property value. Detailed human readable information for the event.
        ## @param value Value to set for the additional_information property.
        ## @return a void
        ## 
        def additional_information=(value)
            @additional_information = value
        end
        ## 
        ## Instantiates a new PrivilegedOperationEvent and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a privileged_operation_event
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PrivilegedOperationEvent.new
        end
        ## 
        ## Gets the creationDateTime property value. Indicates the time when the event is created.
        ## @return a date_time
        ## 
        def creation_date_time
            return @creation_date_time
        end
        ## 
        ## Sets the creationDateTime property value. Indicates the time when the event is created.
        ## @param value Value to set for the creation_date_time property.
        ## @return a void
        ## 
        def creation_date_time=(value)
            @creation_date_time = value
        end
        ## 
        ## Gets the expirationDateTime property value. This is only used when the requestType is Activate, and it indicates the expiration time for the role activation.
        ## @return a date_time
        ## 
        def expiration_date_time
            return @expiration_date_time
        end
        ## 
        ## Sets the expirationDateTime property value. This is only used when the requestType is Activate, and it indicates the expiration time for the role activation.
        ## @param value Value to set for the expiration_date_time property.
        ## @return a void
        ## 
        def expiration_date_time=(value)
            @expiration_date_time = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "additionalInformation" => lambda {|n| @additional_information = n.get_string_value() },
                "creationDateTime" => lambda {|n| @creation_date_time = n.get_date_time_value() },
                "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                "referenceKey" => lambda {|n| @reference_key = n.get_string_value() },
                "referenceSystem" => lambda {|n| @reference_system = n.get_string_value() },
                "requestType" => lambda {|n| @request_type = n.get_string_value() },
                "requestorId" => lambda {|n| @requestor_id = n.get_string_value() },
                "requestorName" => lambda {|n| @requestor_name = n.get_string_value() },
                "roleId" => lambda {|n| @role_id = n.get_string_value() },
                "roleName" => lambda {|n| @role_name = n.get_string_value() },
                "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                "userId" => lambda {|n| @user_id = n.get_string_value() },
                "userMail" => lambda {|n| @user_mail = n.get_string_value() },
                "userName" => lambda {|n| @user_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the referenceKey property value. Incident/Request ticket number during role activation. The value is presented only if the ticket number is provided during role activation.
        ## @return a string
        ## 
        def reference_key
            return @reference_key
        end
        ## 
        ## Sets the referenceKey property value. Incident/Request ticket number during role activation. The value is presented only if the ticket number is provided during role activation.
        ## @param value Value to set for the reference_key property.
        ## @return a void
        ## 
        def reference_key=(value)
            @reference_key = value
        end
        ## 
        ## Gets the referenceSystem property value. Incident/Request ticketing system provided during tole activation. The value is presented only if the ticket system is provided during role activation.
        ## @return a string
        ## 
        def reference_system
            return @reference_system
        end
        ## 
        ## Sets the referenceSystem property value. Incident/Request ticketing system provided during tole activation. The value is presented only if the ticket system is provided during role activation.
        ## @param value Value to set for the reference_system property.
        ## @return a void
        ## 
        def reference_system=(value)
            @reference_system = value
        end
        ## 
        ## Gets the requestType property value. The request operation type. The requestType value can be: Assign (role assignment), Activate (role activation), Unassign (remove role assignment), Deactivate (role deactivation), ScanAlertsNow (scan security alerts), DismissAlert (dismiss security alert), FixAlertItem (fix a security alert issue),  AccessReview_Review (review an Access Review), AccessReview_Create (create an Access Review) , AccessReview_Update (update an Access Review), AccessReview_Delete (delete an Access Review).
        ## @return a string
        ## 
        def request_type
            return @request_type
        end
        ## 
        ## Sets the requestType property value. The request operation type. The requestType value can be: Assign (role assignment), Activate (role activation), Unassign (remove role assignment), Deactivate (role deactivation), ScanAlertsNow (scan security alerts), DismissAlert (dismiss security alert), FixAlertItem (fix a security alert issue),  AccessReview_Review (review an Access Review), AccessReview_Create (create an Access Review) , AccessReview_Update (update an Access Review), AccessReview_Delete (delete an Access Review).
        ## @param value Value to set for the request_type property.
        ## @return a void
        ## 
        def request_type=(value)
            @request_type = value
        end
        ## 
        ## Gets the requestorId property value. The user id of the requestor who initiates the operation.
        ## @return a string
        ## 
        def requestor_id
            return @requestor_id
        end
        ## 
        ## Sets the requestorId property value. The user id of the requestor who initiates the operation.
        ## @param value Value to set for the requestor_id property.
        ## @return a void
        ## 
        def requestor_id=(value)
            @requestor_id = value
        end
        ## 
        ## Gets the requestorName property value. The user name of the requestor who initiates the operation.
        ## @return a string
        ## 
        def requestor_name
            return @requestor_name
        end
        ## 
        ## Sets the requestorName property value. The user name of the requestor who initiates the operation.
        ## @param value Value to set for the requestor_name property.
        ## @return a void
        ## 
        def requestor_name=(value)
            @requestor_name = value
        end
        ## 
        ## Gets the roleId property value. The id of the role that is associated with the operation.
        ## @return a string
        ## 
        def role_id
            return @role_id
        end
        ## 
        ## Sets the roleId property value. The id of the role that is associated with the operation.
        ## @param value Value to set for the role_id property.
        ## @return a void
        ## 
        def role_id=(value)
            @role_id = value
        end
        ## 
        ## Gets the roleName property value. The name of the role.
        ## @return a string
        ## 
        def role_name
            return @role_name
        end
        ## 
        ## Sets the roleName property value. The name of the role.
        ## @param value Value to set for the role_name property.
        ## @return a void
        ## 
        def role_name=(value)
            @role_name = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("additionalInformation", @additional_information)
            writer.write_date_time_value("creationDateTime", @creation_date_time)
            writer.write_date_time_value("expirationDateTime", @expiration_date_time)
            writer.write_string_value("referenceKey", @reference_key)
            writer.write_string_value("referenceSystem", @reference_system)
            writer.write_string_value("requestType", @request_type)
            writer.write_string_value("requestorId", @requestor_id)
            writer.write_string_value("requestorName", @requestor_name)
            writer.write_string_value("roleId", @role_id)
            writer.write_string_value("roleName", @role_name)
            writer.write_string_value("tenantId", @tenant_id)
            writer.write_string_value("userId", @user_id)
            writer.write_string_value("userMail", @user_mail)
            writer.write_string_value("userName", @user_name)
        end
        ## 
        ## Gets the tenantId property value. The tenant (organization) id.
        ## @return a string
        ## 
        def tenant_id
            return @tenant_id
        end
        ## 
        ## Sets the tenantId property value. The tenant (organization) id.
        ## @param value Value to set for the tenant_id property.
        ## @return a void
        ## 
        def tenant_id=(value)
            @tenant_id = value
        end
        ## 
        ## Gets the userId property value. The id of the user that is associated with the operation.
        ## @return a string
        ## 
        def user_id
            return @user_id
        end
        ## 
        ## Sets the userId property value. The id of the user that is associated with the operation.
        ## @param value Value to set for the user_id property.
        ## @return a void
        ## 
        def user_id=(value)
            @user_id = value
        end
        ## 
        ## Gets the userMail property value. The user's email.
        ## @return a string
        ## 
        def user_mail
            return @user_mail
        end
        ## 
        ## Sets the userMail property value. The user's email.
        ## @param value Value to set for the user_mail property.
        ## @return a void
        ## 
        def user_mail=(value)
            @user_mail = value
        end
        ## 
        ## Gets the userName property value. The user's display name.
        ## @return a string
        ## 
        def user_name
            return @user_name
        end
        ## 
        ## Sets the userName property value. The user's display name.
        ## @param value Value to set for the user_name property.
        ## @return a void
        ## 
        def user_name=(value)
            @user_name = value
        end
    end
end
