require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Policy status detail item contained by an autopilot event.
        class DeviceManagementAutopilotPolicyStatusDetail < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The complianceStatus property
            @compliance_status
            ## 
            # The friendly name of the policy.
            @display_name
            ## 
            # The errorode associated with the compliance or enforcement status of the policy. Error code for enforcement status takes precedence if it exists.
            @error_code
            ## 
            # Timestamp of the reported policy status
            @last_reported_date_time
            ## 
            # The policyType property
            @policy_type
            ## 
            # Indicates if this policy was tracked as part of the autopilot bootstrap enrollment sync session
            @tracked_on_enrollment_status
            ## 
            ## Gets the complianceStatus property value. The complianceStatus property
            ## @return a device_management_autopilot_policy_compliance_status
            ## 
            def compliance_status
                return @compliance_status
            end
            ## 
            ## Sets the complianceStatus property value. The complianceStatus property
            ## @param value Value to set for the complianceStatus property.
            ## @return a void
            ## 
            def compliance_status=(value)
                @compliance_status = value
            end
            ## 
            ## Instantiates a new DeviceManagementAutopilotPolicyStatusDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_autopilot_policy_status_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementAutopilotPolicyStatusDetail.new
            end
            ## 
            ## Gets the displayName property value. The friendly name of the policy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The friendly name of the policy.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the errorCode property value. The errorode associated with the compliance or enforcement status of the policy. Error code for enforcement status takes precedence if it exists.
            ## @return a integer
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. The errorode associated with the compliance or enforcement status of the policy. Error code for enforcement status takes precedence if it exists.
            ## @param value Value to set for the errorCode property.
            ## @return a void
            ## 
            def error_code=(value)
                @error_code = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "complianceStatus" => lambda {|n| @compliance_status = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementAutopilotPolicyComplianceStatus) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "errorCode" => lambda {|n| @error_code = n.get_number_value() },
                    "lastReportedDateTime" => lambda {|n| @last_reported_date_time = n.get_date_time_value() },
                    "policyType" => lambda {|n| @policy_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementAutopilotPolicyType) },
                    "trackedOnEnrollmentStatus" => lambda {|n| @tracked_on_enrollment_status = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the lastReportedDateTime property value. Timestamp of the reported policy status
            ## @return a date_time
            ## 
            def last_reported_date_time
                return @last_reported_date_time
            end
            ## 
            ## Sets the lastReportedDateTime property value. Timestamp of the reported policy status
            ## @param value Value to set for the lastReportedDateTime property.
            ## @return a void
            ## 
            def last_reported_date_time=(value)
                @last_reported_date_time = value
            end
            ## 
            ## Gets the policyType property value. The policyType property
            ## @return a device_management_autopilot_policy_type
            ## 
            def policy_type
                return @policy_type
            end
            ## 
            ## Sets the policyType property value. The policyType property
            ## @param value Value to set for the policyType property.
            ## @return a void
            ## 
            def policy_type=(value)
                @policy_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("complianceStatus", @compliance_status)
                writer.write_string_value("displayName", @display_name)
                writer.write_number_value("errorCode", @error_code)
                writer.write_date_time_value("lastReportedDateTime", @last_reported_date_time)
                writer.write_enum_value("policyType", @policy_type)
                writer.write_boolean_value("trackedOnEnrollmentStatus", @tracked_on_enrollment_status)
            end
            ## 
            ## Gets the trackedOnEnrollmentStatus property value. Indicates if this policy was tracked as part of the autopilot bootstrap enrollment sync session
            ## @return a boolean
            ## 
            def tracked_on_enrollment_status
                return @tracked_on_enrollment_status
            end
            ## 
            ## Sets the trackedOnEnrollmentStatus property value. Indicates if this policy was tracked as part of the autopilot bootstrap enrollment sync session
            ## @param value Value to set for the trackedOnEnrollmentStatus property.
            ## @return a void
            ## 
            def tracked_on_enrollment_status=(value)
                @tracked_on_enrollment_status = value
            end
        end
    end
end
