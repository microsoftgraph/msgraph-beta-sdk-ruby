require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AccessPackageAssignmentRequest < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The access package associated with the accessPackageAssignmentRequest. An access package defines the collections of resource roles and the policies for how one or more users can get access to those resources. Read-only. Nullable. Supports $expand.
            @access_package
            ## 
            # For a requestType of UserAdd or AdminAdd, this is an access package assignment requested to be created.  For a requestType of UserRemove, AdminRemove or SystemRemove, this has the id property of an existing assignment to be removed.  Supports $expand.
            @access_package_assignment
            ## 
            # Answers provided by the requestor to accessPackageQuestions asked of them at the time of request.
            @answers
            ## 
            # The date of the end of processing, either successful or failure, of a request. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @completed_date
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            @created_date_time
            ## 
            # Information about all the custom extension calls that were made during the access package assignment request workflow.
            @custom_extension_callout_instances
            ## 
            # A collection of custom workflow extension instances being run on an assignment request. Read-only.
            @custom_extension_handler_instances
            ## 
            # The expirationDateTime property
            @expiration_date_time
            ## 
            # True if the request is not to be processed for assignment.
            @is_validation_only
            ## 
            # The requestor's supplied justification.
            @justification
            ## 
            # One of PendingApproval, Canceled,  Denied, Delivering, Delivered, PartiallyDelivered, DeliveryFailed, Submitted or Scheduled. Read-only.
            @request_state
            ## 
            # More information on the request processing status. Read-only.
            @request_status
            ## 
            # One of UserAdd, UserExtend, UserUpdate, UserRemove, AdminAdd, AdminRemove or SystemRemove. A request from the user themselves would have requestType of UserAdd, UserUpdate or UserRemove. Read-only.
            @request_type
            ## 
            # The subject who requested or, if a direct assignment, was assigned. Read-only. Nullable. Supports $expand.
            @requestor
            ## 
            # The range of dates that access is to be assigned to the requestor. Read-only.
            @schedule
            ## 
            # The details of the verifiable credential that was presented by the requestor, such as the issuer and claims. Read-only.
            @verified_credentials_data
            ## 
            ## Gets the accessPackage property value. The access package associated with the accessPackageAssignmentRequest. An access package defines the collections of resource roles and the policies for how one or more users can get access to those resources. Read-only. Nullable. Supports $expand.
            ## @return a access_package
            ## 
            def access_package
                return @access_package
            end
            ## 
            ## Sets the accessPackage property value. The access package associated with the accessPackageAssignmentRequest. An access package defines the collections of resource roles and the policies for how one or more users can get access to those resources. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the access_package property.
            ## @return a void
            ## 
            def access_package=(value)
                @access_package = value
            end
            ## 
            ## Gets the accessPackageAssignment property value. For a requestType of UserAdd or AdminAdd, this is an access package assignment requested to be created.  For a requestType of UserRemove, AdminRemove or SystemRemove, this has the id property of an existing assignment to be removed.  Supports $expand.
            ## @return a access_package_assignment
            ## 
            def access_package_assignment
                return @access_package_assignment
            end
            ## 
            ## Sets the accessPackageAssignment property value. For a requestType of UserAdd or AdminAdd, this is an access package assignment requested to be created.  For a requestType of UserRemove, AdminRemove or SystemRemove, this has the id property of an existing assignment to be removed.  Supports $expand.
            ## @param value Value to set for the access_package_assignment property.
            ## @return a void
            ## 
            def access_package_assignment=(value)
                @access_package_assignment = value
            end
            ## 
            ## Gets the answers property value. Answers provided by the requestor to accessPackageQuestions asked of them at the time of request.
            ## @return a access_package_answer
            ## 
            def answers
                return @answers
            end
            ## 
            ## Sets the answers property value. Answers provided by the requestor to accessPackageQuestions asked of them at the time of request.
            ## @param value Value to set for the answers property.
            ## @return a void
            ## 
            def answers=(value)
                @answers = value
            end
            ## 
            ## Gets the completedDate property value. The date of the end of processing, either successful or failure, of a request. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def completed_date
                return @completed_date
            end
            ## 
            ## Sets the completedDate property value. The date of the end of processing, either successful or failure, of a request. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the completed_date property.
            ## @return a void
            ## 
            def completed_date=(value)
                @completed_date = value
            end
            ## 
            ## Instantiates a new accessPackageAssignmentRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Read-only.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_assignment_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageAssignmentRequest.new
            end
            ## 
            ## Gets the customExtensionCalloutInstances property value. Information about all the custom extension calls that were made during the access package assignment request workflow.
            ## @return a custom_extension_callout_instance
            ## 
            def custom_extension_callout_instances
                return @custom_extension_callout_instances
            end
            ## 
            ## Sets the customExtensionCalloutInstances property value. Information about all the custom extension calls that were made during the access package assignment request workflow.
            ## @param value Value to set for the custom_extension_callout_instances property.
            ## @return a void
            ## 
            def custom_extension_callout_instances=(value)
                @custom_extension_callout_instances = value
            end
            ## 
            ## Gets the customExtensionHandlerInstances property value. A collection of custom workflow extension instances being run on an assignment request. Read-only.
            ## @return a custom_extension_handler_instance
            ## 
            def custom_extension_handler_instances
                return @custom_extension_handler_instances
            end
            ## 
            ## Sets the customExtensionHandlerInstances property value. A collection of custom workflow extension instances being run on an assignment request. Read-only.
            ## @param value Value to set for the custom_extension_handler_instances property.
            ## @return a void
            ## 
            def custom_extension_handler_instances=(value)
                @custom_extension_handler_instances = value
            end
            ## 
            ## Gets the expirationDateTime property value. The expirationDateTime property
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The expirationDateTime property
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
                    "accessPackage" => lambda {|n| @access_package = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackage.create_from_discriminator_value(pn) }) },
                    "accessPackageAssignment" => lambda {|n| @access_package_assignment = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageAssignment.create_from_discriminator_value(pn) }) },
                    "answers" => lambda {|n| @answers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageAnswer.create_from_discriminator_value(pn) }) },
                    "completedDate" => lambda {|n| @completed_date = n.get_date_time_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "customExtensionCalloutInstances" => lambda {|n| @custom_extension_callout_instances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomExtensionCalloutInstance.create_from_discriminator_value(pn) }) },
                    "customExtensionHandlerInstances" => lambda {|n| @custom_extension_handler_instances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomExtensionHandlerInstance.create_from_discriminator_value(pn) }) },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "isValidationOnly" => lambda {|n| @is_validation_only = n.get_boolean_value() },
                    "justification" => lambda {|n| @justification = n.get_string_value() },
                    "requestState" => lambda {|n| @request_state = n.get_string_value() },
                    "requestStatus" => lambda {|n| @request_status = n.get_string_value() },
                    "requestType" => lambda {|n| @request_type = n.get_string_value() },
                    "requestor" => lambda {|n| @requestor = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageSubject.create_from_discriminator_value(pn) }) },
                    "schedule" => lambda {|n| @schedule = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RequestSchedule.create_from_discriminator_value(pn) }) },
                    "verifiedCredentialsData" => lambda {|n| @verified_credentials_data = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VerifiedCredentialData.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isValidationOnly property value. True if the request is not to be processed for assignment.
            ## @return a boolean
            ## 
            def is_validation_only
                return @is_validation_only
            end
            ## 
            ## Sets the isValidationOnly property value. True if the request is not to be processed for assignment.
            ## @param value Value to set for the is_validation_only property.
            ## @return a void
            ## 
            def is_validation_only=(value)
                @is_validation_only = value
            end
            ## 
            ## Gets the justification property value. The requestor's supplied justification.
            ## @return a string
            ## 
            def justification
                return @justification
            end
            ## 
            ## Sets the justification property value. The requestor's supplied justification.
            ## @param value Value to set for the justification property.
            ## @return a void
            ## 
            def justification=(value)
                @justification = value
            end
            ## 
            ## Gets the requestState property value. One of PendingApproval, Canceled,  Denied, Delivering, Delivered, PartiallyDelivered, DeliveryFailed, Submitted or Scheduled. Read-only.
            ## @return a string
            ## 
            def request_state
                return @request_state
            end
            ## 
            ## Sets the requestState property value. One of PendingApproval, Canceled,  Denied, Delivering, Delivered, PartiallyDelivered, DeliveryFailed, Submitted or Scheduled. Read-only.
            ## @param value Value to set for the request_state property.
            ## @return a void
            ## 
            def request_state=(value)
                @request_state = value
            end
            ## 
            ## Gets the requestStatus property value. More information on the request processing status. Read-only.
            ## @return a string
            ## 
            def request_status
                return @request_status
            end
            ## 
            ## Sets the requestStatus property value. More information on the request processing status. Read-only.
            ## @param value Value to set for the request_status property.
            ## @return a void
            ## 
            def request_status=(value)
                @request_status = value
            end
            ## 
            ## Gets the requestType property value. One of UserAdd, UserExtend, UserUpdate, UserRemove, AdminAdd, AdminRemove or SystemRemove. A request from the user themselves would have requestType of UserAdd, UserUpdate or UserRemove. Read-only.
            ## @return a string
            ## 
            def request_type
                return @request_type
            end
            ## 
            ## Sets the requestType property value. One of UserAdd, UserExtend, UserUpdate, UserRemove, AdminAdd, AdminRemove or SystemRemove. A request from the user themselves would have requestType of UserAdd, UserUpdate or UserRemove. Read-only.
            ## @param value Value to set for the request_type property.
            ## @return a void
            ## 
            def request_type=(value)
                @request_type = value
            end
            ## 
            ## Gets the requestor property value. The subject who requested or, if a direct assignment, was assigned. Read-only. Nullable. Supports $expand.
            ## @return a access_package_subject
            ## 
            def requestor
                return @requestor
            end
            ## 
            ## Sets the requestor property value. The subject who requested or, if a direct assignment, was assigned. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the requestor property.
            ## @return a void
            ## 
            def requestor=(value)
                @requestor = value
            end
            ## 
            ## Gets the schedule property value. The range of dates that access is to be assigned to the requestor. Read-only.
            ## @return a request_schedule
            ## 
            def schedule
                return @schedule
            end
            ## 
            ## Sets the schedule property value. The range of dates that access is to be assigned to the requestor. Read-only.
            ## @param value Value to set for the schedule property.
            ## @return a void
            ## 
            def schedule=(value)
                @schedule = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("accessPackage", @access_package)
                writer.write_object_value("accessPackageAssignment", @access_package_assignment)
                writer.write_collection_of_object_values("answers", @answers)
                writer.write_date_time_value("completedDate", @completed_date)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_collection_of_object_values("customExtensionCalloutInstances", @custom_extension_callout_instances)
                writer.write_collection_of_object_values("customExtensionHandlerInstances", @custom_extension_handler_instances)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_boolean_value("isValidationOnly", @is_validation_only)
                writer.write_string_value("justification", @justification)
                writer.write_string_value("requestState", @request_state)
                writer.write_string_value("requestStatus", @request_status)
                writer.write_string_value("requestType", @request_type)
                writer.write_object_value("requestor", @requestor)
                writer.write_object_value("schedule", @schedule)
                writer.write_collection_of_object_values("verifiedCredentialsData", @verified_credentials_data)
            end
            ## 
            ## Gets the verifiedCredentialsData property value. The details of the verifiable credential that was presented by the requestor, such as the issuer and claims. Read-only.
            ## @return a verified_credential_data
            ## 
            def verified_credentials_data
                return @verified_credentials_data
            end
            ## 
            ## Sets the verifiedCredentialsData property value. The details of the verifiable credential that was presented by the requestor, such as the issuer and claims. Read-only.
            ## @param value Value to set for the verified_credentials_data property.
            ## @return a void
            ## 
            def verified_credentials_data=(value)
                @verified_credentials_data = value
            end
        end
    end
end
