require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GovernanceRoleAssignmentRequestStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The status of the role assignment request. The value can be InProgress or Closed.
            @status
            ## 
            # The details of the status of the role assignment request. It represents the evaluation results of different rules.
            @status_details
            ## 
            # The sub status of the role assignment request. The values can be Accepted, PendingEvaluation, Granted, Denied, PendingProvisioning, Provisioned, PendingRevocation, Revoked, Canceled, Failed, PendingApprovalProvisioning, PendingApproval, FailedAsResourceIsLocked, PendingAdminDecision, AdminApproved, AdminDenied, TimedOut, and ProvisioningStarted.
            @sub_status
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new governanceRoleAssignmentRequestStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a governance_role_assignment_request_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GovernanceRoleAssignmentRequestStatus.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
                    "statusDetails" => lambda {|n| @status_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValue.create_from_discriminator_value(pn) }) },
                    "subStatus" => lambda {|n| @sub_status = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("status", @status)
                writer.write_collection_of_object_values("statusDetails", @status_details)
                writer.write_string_value("subStatus", @sub_status)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the status property value. The status of the role assignment request. The value can be InProgress or Closed.
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status of the role assignment request. The value can be InProgress or Closed.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the statusDetails property value. The details of the status of the role assignment request. It represents the evaluation results of different rules.
            ## @return a key_value
            ## 
            def status_details
                return @status_details
            end
            ## 
            ## Sets the statusDetails property value. The details of the status of the role assignment request. It represents the evaluation results of different rules.
            ## @param value Value to set for the statusDetails property.
            ## @return a void
            ## 
            def status_details=(value)
                @status_details = value
            end
            ## 
            ## Gets the subStatus property value. The sub status of the role assignment request. The values can be Accepted, PendingEvaluation, Granted, Denied, PendingProvisioning, Provisioned, PendingRevocation, Revoked, Canceled, Failed, PendingApprovalProvisioning, PendingApproval, FailedAsResourceIsLocked, PendingAdminDecision, AdminApproved, AdminDenied, TimedOut, and ProvisioningStarted.
            ## @return a string
            ## 
            def sub_status
                return @sub_status
            end
            ## 
            ## Sets the subStatus property value. The sub status of the role assignment request. The values can be Accepted, PendingEvaluation, Granted, Denied, PendingProvisioning, Provisioned, PendingRevocation, Revoked, Canceled, Failed, PendingApprovalProvisioning, PendingApproval, FailedAsResourceIsLocked, PendingAdminDecision, AdminApproved, AdminDenied, TimedOut, and ProvisioningStarted.
            ## @param value Value to set for the subStatus property.
            ## @return a void
            ## 
            def sub_status=(value)
                @sub_status = value
            end
        end
    end
end
