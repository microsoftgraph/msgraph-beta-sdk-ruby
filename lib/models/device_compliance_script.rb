require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Intune will provide customer the ability to run their Powershell Compliance scripts (detection) on the enrolled windows 10 Azure Active Directory joined devices.
        class DeviceComplianceScript < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of group assignments for the device compliance script
            @assignments
            ## 
            # The timestamp of when the device compliance script was created. This property is read-only.
            @created_date_time
            ## 
            # Description of the device compliance script
            @description
            ## 
            # The entire content of the detection powershell script
            @detection_script_content
            ## 
            # List of run states for the device compliance script across all devices
            @device_run_states
            ## 
            # Name of the device compliance script
            @display_name
            ## 
            # Indicate whether the script signature needs be checked
            @enforce_signature_check
            ## 
            # The timestamp of when the device compliance script was modified. This property is read-only.
            @last_modified_date_time
            ## 
            # Name of the device compliance script publisher
            @publisher
            ## 
            # List of Scope Tag IDs for the device compliance script
            @role_scope_tag_ids
            ## 
            # Indicates the type of execution context the app runs in.
            @run_as_account
            ## 
            # Indicate whether PowerShell script(s) should run as 32-bit
            @run_as32_bit
            ## 
            # High level run summary for device compliance script.
            @run_summary
            ## 
            # Version of the device compliance script
            @version
            ## 
            ## Gets the assignments property value. The list of group assignments for the device compliance script
            ## @return a device_health_script_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The list of group assignments for the device compliance script
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new deviceComplianceScript and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The timestamp of when the device compliance script was created. This property is read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The timestamp of when the device compliance script was created. This property is read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_compliance_script
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceComplianceScript.new
            end
            ## 
            ## Gets the description property value. Description of the device compliance script
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the device compliance script
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the detectionScriptContent property value. The entire content of the detection powershell script
            ## @return a base64url
            ## 
            def detection_script_content
                return @detection_script_content
            end
            ## 
            ## Sets the detectionScriptContent property value. The entire content of the detection powershell script
            ## @param value Value to set for the detectionScriptContent property.
            ## @return a void
            ## 
            def detection_script_content=(value)
                @detection_script_content = value
            end
            ## 
            ## Gets the deviceRunStates property value. List of run states for the device compliance script across all devices
            ## @return a device_compliance_script_device_state
            ## 
            def device_run_states
                return @device_run_states
            end
            ## 
            ## Sets the deviceRunStates property value. List of run states for the device compliance script across all devices
            ## @param value Value to set for the deviceRunStates property.
            ## @return a void
            ## 
            def device_run_states=(value)
                @device_run_states = value
            end
            ## 
            ## Gets the displayName property value. Name of the device compliance script
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the device compliance script
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the enforceSignatureCheck property value. Indicate whether the script signature needs be checked
            ## @return a boolean
            ## 
            def enforce_signature_check
                return @enforce_signature_check
            end
            ## 
            ## Sets the enforceSignatureCheck property value. Indicate whether the script signature needs be checked
            ## @param value Value to set for the enforceSignatureCheck property.
            ## @return a void
            ## 
            def enforce_signature_check=(value)
                @enforce_signature_check = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceHealthScriptAssignment.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "detectionScriptContent" => lambda {|n| @detection_script_content = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "deviceRunStates" => lambda {|n| @device_run_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceComplianceScriptDeviceState.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "enforceSignatureCheck" => lambda {|n| @enforce_signature_check = n.get_boolean_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "runAsAccount" => lambda {|n| @run_as_account = n.get_enum_value(MicrosoftGraphBeta::Models::RunAsAccountType) },
                    "runAs32Bit" => lambda {|n| @run_as32_bit = n.get_boolean_value() },
                    "runSummary" => lambda {|n| @run_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceComplianceScriptRunSummary.create_from_discriminator_value(pn) }) },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The timestamp of when the device compliance script was modified. This property is read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The timestamp of when the device compliance script was modified. This property is read-only.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the publisher property value. Name of the device compliance script publisher
            ## @return a string
            ## 
            def publisher
                return @publisher
            end
            ## 
            ## Sets the publisher property value. Name of the device compliance script publisher
            ## @param value Value to set for the publisher property.
            ## @return a void
            ## 
            def publisher=(value)
                @publisher = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. List of Scope Tag IDs for the device compliance script
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. List of Scope Tag IDs for the device compliance script
            ## @param value Value to set for the roleScopeTagIds property.
            ## @return a void
            ## 
            def role_scope_tag_ids=(value)
                @role_scope_tag_ids = value
            end
            ## 
            ## Gets the runAsAccount property value. Indicates the type of execution context the app runs in.
            ## @return a run_as_account_type
            ## 
            def run_as_account
                return @run_as_account
            end
            ## 
            ## Sets the runAsAccount property value. Indicates the type of execution context the app runs in.
            ## @param value Value to set for the runAsAccount property.
            ## @return a void
            ## 
            def run_as_account=(value)
                @run_as_account = value
            end
            ## 
            ## Gets the runAs32Bit property value. Indicate whether PowerShell script(s) should run as 32-bit
            ## @return a boolean
            ## 
            def run_as32_bit
                return @run_as32_bit
            end
            ## 
            ## Sets the runAs32Bit property value. Indicate whether PowerShell script(s) should run as 32-bit
            ## @param value Value to set for the runAs32Bit property.
            ## @return a void
            ## 
            def run_as32_bit=(value)
                @run_as32_bit = value
            end
            ## 
            ## Gets the runSummary property value. High level run summary for device compliance script.
            ## @return a device_compliance_script_run_summary
            ## 
            def run_summary
                return @run_summary
            end
            ## 
            ## Sets the runSummary property value. High level run summary for device compliance script.
            ## @param value Value to set for the runSummary property.
            ## @return a void
            ## 
            def run_summary=(value)
                @run_summary = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_string_value("description", @description)
                writer.write_object_value("detectionScriptContent", @detection_script_content)
                writer.write_collection_of_object_values("deviceRunStates", @device_run_states)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("enforceSignatureCheck", @enforce_signature_check)
                writer.write_string_value("publisher", @publisher)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_enum_value("runAsAccount", @run_as_account)
                writer.write_boolean_value("runAs32Bit", @run_as32_bit)
                writer.write_object_value("runSummary", @run_summary)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the version property value. Version of the device compliance script
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Version of the device compliance script
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
