require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsDefenderApplicationControlSupplementalPolicy < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The associated group assignments for the Windows Defender Application Control Supplemental Policy.
            @assignments
            ## 
            # Indicates the content of the Windows Defender Application Control Supplemental Policy in byte array format.
            @content
            ## 
            # Indicates the file name associated with the content of the Windows Defender Application Control Supplemental Policy.
            @content_file_name
            ## 
            # Indicates the created date and time when the Windows Defender Application Control Supplemental Policy was uploaded.
            @creation_date_time
            ## 
            # WindowsDefenderApplicationControl supplemental policy deployment summary.
            @deploy_summary
            ## 
            # The description of the Windows Defender Application Control Supplemental Policy.
            @description
            ## 
            # The list of device deployment states for this WindowsDefenderApplicationControl supplemental policy.
            @device_statuses
            ## 
            # The display name of the Windows Defender Application Control Supplemental Policy.
            @display_name
            ## 
            # Indicates the last modified date and time of the Windows Defender Application Control Supplemental Policy.
            @last_modified_date_time
            ## 
            # List of Scope Tags for the Windows Defender Application Control Supplemental Policy entity.
            @role_scope_tag_ids
            ## 
            # Indicates the Windows Defender Application Control Supplemental Policy's version.
            @version
            ## 
            ## Gets the assignments property value. The associated group assignments for the Windows Defender Application Control Supplemental Policy.
            ## @return a windows_defender_application_control_supplemental_policy_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The associated group assignments for the Windows Defender Application Control Supplemental Policy.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new windowsDefenderApplicationControlSupplementalPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the content property value. Indicates the content of the Windows Defender Application Control Supplemental Policy in byte array format.
            ## @return a base64url
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. Indicates the content of the Windows Defender Application Control Supplemental Policy in byte array format.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Gets the contentFileName property value. Indicates the file name associated with the content of the Windows Defender Application Control Supplemental Policy.
            ## @return a string
            ## 
            def content_file_name
                return @content_file_name
            end
            ## 
            ## Sets the contentFileName property value. Indicates the file name associated with the content of the Windows Defender Application Control Supplemental Policy.
            ## @param value Value to set for the contentFileName property.
            ## @return a void
            ## 
            def content_file_name=(value)
                @content_file_name = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_defender_application_control_supplemental_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsDefenderApplicationControlSupplementalPolicy.new
            end
            ## 
            ## Gets the creationDateTime property value. Indicates the created date and time when the Windows Defender Application Control Supplemental Policy was uploaded.
            ## @return a date_time
            ## 
            def creation_date_time
                return @creation_date_time
            end
            ## 
            ## Sets the creationDateTime property value. Indicates the created date and time when the Windows Defender Application Control Supplemental Policy was uploaded.
            ## @param value Value to set for the creationDateTime property.
            ## @return a void
            ## 
            def creation_date_time=(value)
                @creation_date_time = value
            end
            ## 
            ## Gets the deploySummary property value. WindowsDefenderApplicationControl supplemental policy deployment summary.
            ## @return a windows_defender_application_control_supplemental_policy_deployment_summary
            ## 
            def deploy_summary
                return @deploy_summary
            end
            ## 
            ## Sets the deploySummary property value. WindowsDefenderApplicationControl supplemental policy deployment summary.
            ## @param value Value to set for the deploySummary property.
            ## @return a void
            ## 
            def deploy_summary=(value)
                @deploy_summary = value
            end
            ## 
            ## Gets the description property value. The description of the Windows Defender Application Control Supplemental Policy.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the Windows Defender Application Control Supplemental Policy.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the deviceStatuses property value. The list of device deployment states for this WindowsDefenderApplicationControl supplemental policy.
            ## @return a windows_defender_application_control_supplemental_policy_deployment_status
            ## 
            def device_statuses
                return @device_statuses
            end
            ## 
            ## Sets the deviceStatuses property value. The list of device deployment states for this WindowsDefenderApplicationControl supplemental policy.
            ## @param value Value to set for the deviceStatuses property.
            ## @return a void
            ## 
            def device_statuses=(value)
                @device_statuses = value
            end
            ## 
            ## Gets the displayName property value. The display name of the Windows Defender Application Control Supplemental Policy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the Windows Defender Application Control Supplemental Policy.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsDefenderApplicationControlSupplementalPolicyAssignment.create_from_discriminator_value(pn) }) },
                    "content" => lambda {|n| @content = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "contentFileName" => lambda {|n| @content_file_name = n.get_string_value() },
                    "creationDateTime" => lambda {|n| @creation_date_time = n.get_date_time_value() },
                    "deploySummary" => lambda {|n| @deploy_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsDefenderApplicationControlSupplementalPolicyDeploymentSummary.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "deviceStatuses" => lambda {|n| @device_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsDefenderApplicationControlSupplementalPolicyDeploymentStatus.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Indicates the last modified date and time of the Windows Defender Application Control Supplemental Policy.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Indicates the last modified date and time of the Windows Defender Application Control Supplemental Policy.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. List of Scope Tags for the Windows Defender Application Control Supplemental Policy entity.
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. List of Scope Tags for the Windows Defender Application Control Supplemental Policy entity.
            ## @param value Value to set for the roleScopeTagIds property.
            ## @return a void
            ## 
            def role_scope_tag_ids=(value)
                @role_scope_tag_ids = value
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
                writer.write_object_value("content", @content)
                writer.write_string_value("contentFileName", @content_file_name)
                writer.write_date_time_value("creationDateTime", @creation_date_time)
                writer.write_object_value("deploySummary", @deploy_summary)
                writer.write_string_value("description", @description)
                writer.write_collection_of_object_values("deviceStatuses", @device_statuses)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the version property value. Indicates the Windows Defender Application Control Supplemental Policy's version.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Indicates the Windows Defender Application Control Supplemental Policy's version.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
