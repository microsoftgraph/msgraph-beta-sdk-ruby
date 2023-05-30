require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A class containing the properties used for Assignment Filter.
        class DeviceAndAppManagementAssignmentFilter < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Supported filter management types whether its devices or apps.
            @assignment_filter_management_type
            ## 
            # The creation time of the assignment filter. The value cannot be modified and is automatically populated during new assignment filter process. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.
            @created_date_time
            ## 
            # Optional description of the Assignment Filter.
            @description
            ## 
            # The name of the Assignment Filter.
            @display_name
            ## 
            # Last modified time of the Assignment Filter. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'
            @last_modified_date_time
            ## 
            # Indicates associated assignments for a specific filter.
            @payloads
            ## 
            # Supported platform types.
            @platform
            ## 
            # Indicates role scope tags assigned for the assignment filter.
            @role_scope_tags
            ## 
            # Rule definition of the assignment filter.
            @rule
            ## 
            ## Gets the assignmentFilterManagementType property value. Supported filter management types whether its devices or apps.
            ## @return a assignment_filter_management_type
            ## 
            def assignment_filter_management_type
                return @assignment_filter_management_type
            end
            ## 
            ## Sets the assignmentFilterManagementType property value. Supported filter management types whether its devices or apps.
            ## @param value Value to set for the assignment_filter_management_type property.
            ## @return a void
            ## 
            def assignment_filter_management_type=(value)
                @assignment_filter_management_type = value
            end
            ## 
            ## Instantiates a new deviceAndAppManagementAssignmentFilter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The creation time of the assignment filter. The value cannot be modified and is automatically populated during new assignment filter process. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The creation time of the assignment filter. The value cannot be modified and is automatically populated during new assignment filter process. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_and_app_management_assignment_filter
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.payloadCompatibleAssignmentFilter"
                            return PayloadCompatibleAssignmentFilter.new
                    end
                end
                return DeviceAndAppManagementAssignmentFilter.new
            end
            ## 
            ## Gets the description property value. Optional description of the Assignment Filter.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Optional description of the Assignment Filter.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The name of the Assignment Filter.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the Assignment Filter.
            ## @param value Value to set for the display_name property.
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
                    "assignmentFilterManagementType" => lambda {|n| @assignment_filter_management_type = n.get_enum_value(MicrosoftGraphBeta::Models::AssignmentFilterManagementType) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "payloads" => lambda {|n| @payloads = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PayloadByFilter.create_from_discriminator_value(pn) }) },
                    "platform" => lambda {|n| @platform = n.get_enum_value(MicrosoftGraphBeta::Models::DevicePlatformType) },
                    "roleScopeTags" => lambda {|n| @role_scope_tags = n.get_collection_of_primitive_values(String) },
                    "rule" => lambda {|n| @rule = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Last modified time of the Assignment Filter. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Last modified time of the Assignment Filter. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the payloads property value. Indicates associated assignments for a specific filter.
            ## @return a payload_by_filter
            ## 
            def payloads
                return @payloads
            end
            ## 
            ## Sets the payloads property value. Indicates associated assignments for a specific filter.
            ## @param value Value to set for the payloads property.
            ## @return a void
            ## 
            def payloads=(value)
                @payloads = value
            end
            ## 
            ## Gets the platform property value. Supported platform types.
            ## @return a device_platform_type
            ## 
            def platform
                return @platform
            end
            ## 
            ## Sets the platform property value. Supported platform types.
            ## @param value Value to set for the platform property.
            ## @return a void
            ## 
            def platform=(value)
                @platform = value
            end
            ## 
            ## Gets the roleScopeTags property value. Indicates role scope tags assigned for the assignment filter.
            ## @return a string
            ## 
            def role_scope_tags
                return @role_scope_tags
            end
            ## 
            ## Sets the roleScopeTags property value. Indicates role scope tags assigned for the assignment filter.
            ## @param value Value to set for the role_scope_tags property.
            ## @return a void
            ## 
            def role_scope_tags=(value)
                @role_scope_tags = value
            end
            ## 
            ## Gets the rule property value. Rule definition of the assignment filter.
            ## @return a string
            ## 
            def rule
                return @rule
            end
            ## 
            ## Sets the rule property value. Rule definition of the assignment filter.
            ## @param value Value to set for the rule property.
            ## @return a void
            ## 
            def rule=(value)
                @rule = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("assignmentFilterManagementType", @assignment_filter_management_type)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_object_values("payloads", @payloads)
                writer.write_enum_value("platform", @platform)
                writer.write_collection_of_primitive_values("roleScopeTags", @role_scope_tags)
                writer.write_string_value("rule", @rule)
            end
        end
    end
end
