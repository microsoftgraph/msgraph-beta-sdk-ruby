require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AccessPackageAssignmentPolicy < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The access package with this policy. Read-only. Nullable. Supports $expand.
            @access_package
            ## 
            # The accessPackageCatalog property
            @access_package_catalog
            ## 
            # Identifier of the access package.
            @access_package_id
            ## 
            # Who must review, and how often, the assignments to the access package from this policy. This property is null if reviews are not required.
            @access_review_settings
            ## 
            # Indicates whether a user can extend the access package assignment duration after approval.
            @can_extend
            ## 
            # The createdBy property
            @created_by
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @created_date_time
            ## 
            # The collection of stages when to execute one or more custom access package workflow extensions. Supports $expand.
            @custom_extension_handlers
            ## 
            # The collection of stages when to execute one or more custom access package workflow extensions. Supports $expand.
            @custom_extension_stage_settings
            ## 
            # The description of the policy.
            @description
            ## 
            # The display name of the policy. Supports $filter (eq).
            @display_name
            ## 
            # The number of days in which assignments from this policy last until they are expired.
            @duration_in_days
            ## 
            # The expiration date for assignments created in this policy. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @expiration_date_time
            ## 
            # The modifiedBy property
            @modified_by
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @modified_date_time
            ## 
            # Questions that are posed to the  requestor.
            @questions
            ## 
            # Who must approve requests for access package in this policy.
            @request_approval_settings
            ## 
            # Who can request this access package from this policy.
            @requestor_settings
            ## 
            # Settings for verifiable credentials set up through the Azure AD Verified ID service. These settings represent the verifiable credentials that a requestor of an access package in this policy can present to be assigned the access package.
            @verifiable_credential_settings
            ## 
            ## Gets the accessPackage property value. The access package with this policy. Read-only. Nullable. Supports $expand.
            ## @return a access_package
            ## 
            def access_package
                return @access_package
            end
            ## 
            ## Sets the accessPackage property value. The access package with this policy. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the accessPackage property.
            ## @return a void
            ## 
            def access_package=(value)
                @access_package = value
            end
            ## 
            ## Gets the accessPackageCatalog property value. The accessPackageCatalog property
            ## @return a access_package_catalog
            ## 
            def access_package_catalog
                return @access_package_catalog
            end
            ## 
            ## Sets the accessPackageCatalog property value. The accessPackageCatalog property
            ## @param value Value to set for the accessPackageCatalog property.
            ## @return a void
            ## 
            def access_package_catalog=(value)
                @access_package_catalog = value
            end
            ## 
            ## Gets the accessPackageId property value. Identifier of the access package.
            ## @return a string
            ## 
            def access_package_id
                return @access_package_id
            end
            ## 
            ## Sets the accessPackageId property value. Identifier of the access package.
            ## @param value Value to set for the accessPackageId property.
            ## @return a void
            ## 
            def access_package_id=(value)
                @access_package_id = value
            end
            ## 
            ## Gets the accessReviewSettings property value. Who must review, and how often, the assignments to the access package from this policy. This property is null if reviews are not required.
            ## @return a assignment_review_settings
            ## 
            def access_review_settings
                return @access_review_settings
            end
            ## 
            ## Sets the accessReviewSettings property value. Who must review, and how often, the assignments to the access package from this policy. This property is null if reviews are not required.
            ## @param value Value to set for the accessReviewSettings property.
            ## @return a void
            ## 
            def access_review_settings=(value)
                @access_review_settings = value
            end
            ## 
            ## Gets the canExtend property value. Indicates whether a user can extend the access package assignment duration after approval.
            ## @return a boolean
            ## 
            def can_extend
                return @can_extend
            end
            ## 
            ## Sets the canExtend property value. Indicates whether a user can extend the access package assignment duration after approval.
            ## @param value Value to set for the canExtend property.
            ## @return a void
            ## 
            def can_extend=(value)
                @can_extend = value
            end
            ## 
            ## Instantiates a new accessPackageAssignmentPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The createdBy property
            ## @return a string
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The createdBy property
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_assignment_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageAssignmentPolicy.new
            end
            ## 
            ## Gets the customExtensionHandlers property value. The collection of stages when to execute one or more custom access package workflow extensions. Supports $expand.
            ## @return a custom_extension_handler
            ## 
            def custom_extension_handlers
                return @custom_extension_handlers
            end
            ## 
            ## Sets the customExtensionHandlers property value. The collection of stages when to execute one or more custom access package workflow extensions. Supports $expand.
            ## @param value Value to set for the customExtensionHandlers property.
            ## @return a void
            ## 
            def custom_extension_handlers=(value)
                @custom_extension_handlers = value
            end
            ## 
            ## Gets the customExtensionStageSettings property value. The collection of stages when to execute one or more custom access package workflow extensions. Supports $expand.
            ## @return a custom_extension_stage_setting
            ## 
            def custom_extension_stage_settings
                return @custom_extension_stage_settings
            end
            ## 
            ## Sets the customExtensionStageSettings property value. The collection of stages when to execute one or more custom access package workflow extensions. Supports $expand.
            ## @param value Value to set for the customExtensionStageSettings property.
            ## @return a void
            ## 
            def custom_extension_stage_settings=(value)
                @custom_extension_stage_settings = value
            end
            ## 
            ## Gets the description property value. The description of the policy.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the policy.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of the policy. Supports $filter (eq).
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the policy. Supports $filter (eq).
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the durationInDays property value. The number of days in which assignments from this policy last until they are expired.
            ## @return a integer
            ## 
            def duration_in_days
                return @duration_in_days
            end
            ## 
            ## Sets the durationInDays property value. The number of days in which assignments from this policy last until they are expired.
            ## @param value Value to set for the durationInDays property.
            ## @return a void
            ## 
            def duration_in_days=(value)
                @duration_in_days = value
            end
            ## 
            ## Gets the expirationDateTime property value. The expiration date for assignments created in this policy. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The expiration date for assignments created in this policy. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the expirationDateTime property.
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
                    "accessPackageCatalog" => lambda {|n| @access_package_catalog = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageCatalog.create_from_discriminator_value(pn) }) },
                    "accessPackageId" => lambda {|n| @access_package_id = n.get_string_value() },
                    "accessReviewSettings" => lambda {|n| @access_review_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AssignmentReviewSettings.create_from_discriminator_value(pn) }) },
                    "canExtend" => lambda {|n| @can_extend = n.get_boolean_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "customExtensionHandlers" => lambda {|n| @custom_extension_handlers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomExtensionHandler.create_from_discriminator_value(pn) }) },
                    "customExtensionStageSettings" => lambda {|n| @custom_extension_stage_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomExtensionStageSetting.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "durationInDays" => lambda {|n| @duration_in_days = n.get_number_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "modifiedBy" => lambda {|n| @modified_by = n.get_string_value() },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                    "questions" => lambda {|n| @questions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageQuestion.create_from_discriminator_value(pn) }) },
                    "requestApprovalSettings" => lambda {|n| @request_approval_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ApprovalSettings.create_from_discriminator_value(pn) }) },
                    "requestorSettings" => lambda {|n| @requestor_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RequestorSettings.create_from_discriminator_value(pn) }) },
                    "verifiableCredentialSettings" => lambda {|n| @verifiable_credential_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::VerifiableCredentialSettings.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the modifiedBy property value. The modifiedBy property
            ## @return a string
            ## 
            def modified_by
                return @modified_by
            end
            ## 
            ## Sets the modifiedBy property value. The modifiedBy property
            ## @param value Value to set for the modifiedBy property.
            ## @return a void
            ## 
            def modified_by=(value)
                @modified_by = value
            end
            ## 
            ## Gets the modifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the modifiedDateTime property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
            end
            ## 
            ## Gets the questions property value. Questions that are posed to the  requestor.
            ## @return a access_package_question
            ## 
            def questions
                return @questions
            end
            ## 
            ## Sets the questions property value. Questions that are posed to the  requestor.
            ## @param value Value to set for the questions property.
            ## @return a void
            ## 
            def questions=(value)
                @questions = value
            end
            ## 
            ## Gets the requestApprovalSettings property value. Who must approve requests for access package in this policy.
            ## @return a approval_settings
            ## 
            def request_approval_settings
                return @request_approval_settings
            end
            ## 
            ## Sets the requestApprovalSettings property value. Who must approve requests for access package in this policy.
            ## @param value Value to set for the requestApprovalSettings property.
            ## @return a void
            ## 
            def request_approval_settings=(value)
                @request_approval_settings = value
            end
            ## 
            ## Gets the requestorSettings property value. Who can request this access package from this policy.
            ## @return a requestor_settings
            ## 
            def requestor_settings
                return @requestor_settings
            end
            ## 
            ## Sets the requestorSettings property value. Who can request this access package from this policy.
            ## @param value Value to set for the requestorSettings property.
            ## @return a void
            ## 
            def requestor_settings=(value)
                @requestor_settings = value
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
                writer.write_object_value("accessPackageCatalog", @access_package_catalog)
                writer.write_string_value("accessPackageId", @access_package_id)
                writer.write_object_value("accessReviewSettings", @access_review_settings)
                writer.write_boolean_value("canExtend", @can_extend)
                writer.write_string_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_collection_of_object_values("customExtensionHandlers", @custom_extension_handlers)
                writer.write_collection_of_object_values("customExtensionStageSettings", @custom_extension_stage_settings)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_number_value("durationInDays", @duration_in_days)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_string_value("modifiedBy", @modified_by)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
                writer.write_collection_of_object_values("questions", @questions)
                writer.write_object_value("requestApprovalSettings", @request_approval_settings)
                writer.write_object_value("requestorSettings", @requestor_settings)
                writer.write_object_value("verifiableCredentialSettings", @verifiable_credential_settings)
            end
            ## 
            ## Gets the verifiableCredentialSettings property value. Settings for verifiable credentials set up through the Azure AD Verified ID service. These settings represent the verifiable credentials that a requestor of an access package in this policy can present to be assigned the access package.
            ## @return a verifiable_credential_settings
            ## 
            def verifiable_credential_settings
                return @verifiable_credential_settings
            end
            ## 
            ## Sets the verifiableCredentialSettings property value. Settings for verifiable credentials set up through the Azure AD Verified ID service. These settings represent the verifiable credentials that a requestor of an access package in this policy can present to be assigned the access package.
            ## @param value Value to set for the verifiableCredentialSettings property.
            ## @return a void
            ## 
            def verifiable_credential_settings=(value)
                @verifiable_credential_settings = value
            end
        end
    end
end
