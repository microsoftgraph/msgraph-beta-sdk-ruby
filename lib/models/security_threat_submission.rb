require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityThreatSubmission < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies the admin review property that constitutes of who reviewed the user submission, when and what was it identified as.
            @admin_review
            ## 
            # The category property
            @category
            ## 
            # Specifies the source of the submission. The possible values are: microsoft,  other and unkownFutureValue.
            @client_source
            ## 
            # Specifies the type of content being submitted. The possible values are: email, url, file, app and unkownFutureValue.
            @content_type
            ## 
            # Specifies who submitted the email as a threat. Supports $filter = createdBy/email eq 'value'.
            @created_by
            ## 
            # Specifies when the threat submission was created. Supports $filter = createdDateTime ge 2022-01-01T00:00:00Z and createdDateTime lt 2022-01-02T00:00:00Z.
            @created_date_time
            ## 
            # Specifies the result of the analysis performed by Microsoft.
            @result
            ## 
            # Specifies the role of the submitter. Supports $filter = source eq 'value'. The possible values are: administrator,  user and unkownFutureValue.
            @source
            ## 
            # Indicates whether the threat submission has been analyzed by Microsoft. Supports $filter = status eq 'value'. The possible values are: notStarted, running, succeeded, failed, skipped and unkownFutureValue.
            @status
            ## 
            # Indicates the tenant id of the submitter. Not required when created using a POST operation. It's extracted from the token of the post API call.
            @tenant_id
            ## 
            ## Gets the adminReview property value. Specifies the admin review property that constitutes of who reviewed the user submission, when and what was it identified as.
            ## @return a security_submission_admin_review
            ## 
            def admin_review
                return @admin_review
            end
            ## 
            ## Sets the adminReview property value. Specifies the admin review property that constitutes of who reviewed the user submission, when and what was it identified as.
            ## @param value Value to set for the adminReview property.
            ## @return a void
            ## 
            def admin_review=(value)
                @admin_review = value
            end
            ## 
            ## Gets the category property value. The category property
            ## @return a security_submission_category
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The category property
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Gets the clientSource property value. Specifies the source of the submission. The possible values are: microsoft,  other and unkownFutureValue.
            ## @return a security_submission_client_source
            ## 
            def client_source
                return @client_source
            end
            ## 
            ## Sets the clientSource property value. Specifies the source of the submission. The possible values are: microsoft,  other and unkownFutureValue.
            ## @param value Value to set for the clientSource property.
            ## @return a void
            ## 
            def client_source=(value)
                @client_source = value
            end
            ## 
            ## Instantiates a new SecurityThreatSubmission and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contentType property value. Specifies the type of content being submitted. The possible values are: email, url, file, app and unkownFutureValue.
            ## @return a security_submission_content_type
            ## 
            def content_type
                return @content_type
            end
            ## 
            ## Sets the contentType property value. Specifies the type of content being submitted. The possible values are: email, url, file, app and unkownFutureValue.
            ## @param value Value to set for the contentType property.
            ## @return a void
            ## 
            def content_type=(value)
                @content_type = value
            end
            ## 
            ## Gets the createdBy property value. Specifies who submitted the email as a threat. Supports $filter = createdBy/email eq 'value'.
            ## @return a security_submission_user_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. Specifies who submitted the email as a threat. Supports $filter = createdBy/email eq 'value'.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Specifies when the threat submission was created. Supports $filter = createdDateTime ge 2022-01-01T00:00:00Z and createdDateTime lt 2022-01-02T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Specifies when the threat submission was created. Supports $filter = createdDateTime ge 2022-01-01T00:00:00Z and createdDateTime lt 2022-01-02T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_threat_submission
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.security.emailContentThreatSubmission"
                            return SecurityEmailContentThreatSubmission.new
                        when "#microsoft.graph.security.emailThreatSubmission"
                            return SecurityEmailThreatSubmission.new
                        when "#microsoft.graph.security.emailUrlThreatSubmission"
                            return SecurityEmailUrlThreatSubmission.new
                        when "#microsoft.graph.security.fileContentThreatSubmission"
                            return SecurityFileContentThreatSubmission.new
                        when "#microsoft.graph.security.fileThreatSubmission"
                            return SecurityFileThreatSubmission.new
                        when "#microsoft.graph.security.fileUrlThreatSubmission"
                            return SecurityFileUrlThreatSubmission.new
                        when "#microsoft.graph.security.urlThreatSubmission"
                            return SecurityUrlThreatSubmission.new
                    end
                end
                return SecurityThreatSubmission.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "adminReview" => lambda {|n| @admin_review = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecuritySubmissionAdminReview.create_from_discriminator_value(pn) }) },
                    "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraphBeta::Models::SecuritySubmissionCategory) },
                    "clientSource" => lambda {|n| @client_source = n.get_enum_value(MicrosoftGraphBeta::Models::SecuritySubmissionClientSource) },
                    "contentType" => lambda {|n| @content_type = n.get_enum_value(MicrosoftGraphBeta::Models::SecuritySubmissionContentType) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecuritySubmissionUserIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "result" => lambda {|n| @result = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecuritySubmissionResult.create_from_discriminator_value(pn) }) },
                    "source" => lambda {|n| @source = n.get_enum_value(MicrosoftGraphBeta::Models::SecuritySubmissionSource) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityLongRunningOperationStatus) },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the result property value. Specifies the result of the analysis performed by Microsoft.
            ## @return a security_submission_result
            ## 
            def result
                return @result
            end
            ## 
            ## Sets the result property value. Specifies the result of the analysis performed by Microsoft.
            ## @param value Value to set for the result property.
            ## @return a void
            ## 
            def result=(value)
                @result = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("adminReview", @admin_review)
                writer.write_enum_value("category", @category)
                writer.write_enum_value("clientSource", @client_source)
                writer.write_enum_value("contentType", @content_type)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("result", @result)
                writer.write_enum_value("source", @source)
                writer.write_enum_value("status", @status)
                writer.write_string_value("tenantId", @tenant_id)
            end
            ## 
            ## Gets the source property value. Specifies the role of the submitter. Supports $filter = source eq 'value'. The possible values are: administrator,  user and unkownFutureValue.
            ## @return a security_submission_source
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. Specifies the role of the submitter. Supports $filter = source eq 'value'. The possible values are: administrator,  user and unkownFutureValue.
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
            ## 
            ## Gets the status property value. Indicates whether the threat submission has been analyzed by Microsoft. Supports $filter = status eq 'value'. The possible values are: notStarted, running, succeeded, failed, skipped and unkownFutureValue.
            ## @return a security_long_running_operation_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Indicates whether the threat submission has been analyzed by Microsoft. Supports $filter = status eq 'value'. The possible values are: notStarted, running, succeeded, failed, skipped and unkownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the tenantId property value. Indicates the tenant id of the submitter. Not required when created using a POST operation. It's extracted from the token of the post API call.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. Indicates the tenant id of the submitter. Not required when created using a POST operation. It's extracted from the token of the post API call.
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
        end
    end
end
