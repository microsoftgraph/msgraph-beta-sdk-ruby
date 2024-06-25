require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExternalProfile < MicrosoftGraphBeta::Models::DirectoryObject
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The office address of the external user profile.
            @address
            ## 
            # The company name of the external user profile. Supports $filter (eq, startswith).
            @company_name
            ## 
            # The object ID of the user who created the external user profile. Read-only. Not nullable.
            @created_by
            ## 
            # Date and time when this external user was created. Not nullable. Read-only.
            @created_date_time
            ## 
            # The department of the external user profile.
            @department
            ## 
            # The display name of the external user profile.
            @display_name
            ## 
            # Represents whether the external user profile is discoverable in the directory. When true, this external profile shows up in Teams search.
            @is_discoverable
            ## 
            # Represents whether the external user profile is enabled in the directory. This property is peer to the accountEnabled property on the user object.
            @is_enabled
            ## 
            # The job title of the external user profile.
            @job_title
            ## 
            # The phone number of the external user profile. Must be in E164 format.
            @phone_number
            ## 
            # The object ID of the supervisor of the external user profile. Supports $filter (eq, startswith).
            @supervisor_id
            ## 
            ## Gets the address property value. The office address of the external user profile.
            ## @return a physical_office_address
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. The office address of the external user profile.
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Gets the companyName property value. The company name of the external user profile. Supports $filter (eq, startswith).
            ## @return a string
            ## 
            def company_name
                return @company_name
            end
            ## 
            ## Sets the companyName property value. The company name of the external user profile. Supports $filter (eq, startswith).
            ## @param value Value to set for the companyName property.
            ## @return a void
            ## 
            def company_name=(value)
                @company_name = value
            end
            ## 
            ## Instantiates a new ExternalProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.externalProfile"
            end
            ## 
            ## Gets the createdBy property value. The object ID of the user who created the external user profile. Read-only. Not nullable.
            ## @return a string
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The object ID of the user who created the external user profile. Read-only. Not nullable.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Date and time when this external user was created. Not nullable. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time when this external user was created. Not nullable. Read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a external_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.externalUserProfile"
                            return ExternalUserProfile.new
                        when "#microsoft.graph.pendingExternalUserProfile"
                            return PendingExternalUserProfile.new
                    end
                end
                return ExternalProfile.new
            end
            ## 
            ## Gets the department property value. The department of the external user profile.
            ## @return a string
            ## 
            def department
                return @department
            end
            ## 
            ## Sets the department property value. The department of the external user profile.
            ## @param value Value to set for the department property.
            ## @return a void
            ## 
            def department=(value)
                @department = value
            end
            ## 
            ## Gets the displayName property value. The display name of the external user profile.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the external user profile.
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
                    "address" => lambda {|n| @address = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PhysicalOfficeAddress.create_from_discriminator_value(pn) }) },
                    "companyName" => lambda {|n| @company_name = n.get_string_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "department" => lambda {|n| @department = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isDiscoverable" => lambda {|n| @is_discoverable = n.get_boolean_value() },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "jobTitle" => lambda {|n| @job_title = n.get_string_value() },
                    "phoneNumber" => lambda {|n| @phone_number = n.get_string_value() },
                    "supervisorId" => lambda {|n| @supervisor_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isDiscoverable property value. Represents whether the external user profile is discoverable in the directory. When true, this external profile shows up in Teams search.
            ## @return a boolean
            ## 
            def is_discoverable
                return @is_discoverable
            end
            ## 
            ## Sets the isDiscoverable property value. Represents whether the external user profile is discoverable in the directory. When true, this external profile shows up in Teams search.
            ## @param value Value to set for the isDiscoverable property.
            ## @return a void
            ## 
            def is_discoverable=(value)
                @is_discoverable = value
            end
            ## 
            ## Gets the isEnabled property value. Represents whether the external user profile is enabled in the directory. This property is peer to the accountEnabled property on the user object.
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. Represents whether the external user profile is enabled in the directory. This property is peer to the accountEnabled property on the user object.
            ## @param value Value to set for the isEnabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Gets the jobTitle property value. The job title of the external user profile.
            ## @return a string
            ## 
            def job_title
                return @job_title
            end
            ## 
            ## Sets the jobTitle property value. The job title of the external user profile.
            ## @param value Value to set for the jobTitle property.
            ## @return a void
            ## 
            def job_title=(value)
                @job_title = value
            end
            ## 
            ## Gets the phoneNumber property value. The phone number of the external user profile. Must be in E164 format.
            ## @return a string
            ## 
            def phone_number
                return @phone_number
            end
            ## 
            ## Sets the phoneNumber property value. The phone number of the external user profile. Must be in E164 format.
            ## @param value Value to set for the phoneNumber property.
            ## @return a void
            ## 
            def phone_number=(value)
                @phone_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("address", @address)
                writer.write_string_value("companyName", @company_name)
                writer.write_string_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("department", @department)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isDiscoverable", @is_discoverable)
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_string_value("jobTitle", @job_title)
                writer.write_string_value("phoneNumber", @phone_number)
                writer.write_string_value("supervisorId", @supervisor_id)
            end
            ## 
            ## Gets the supervisorId property value. The object ID of the supervisor of the external user profile. Supports $filter (eq, startswith).
            ## @return a string
            ## 
            def supervisor_id
                return @supervisor_id
            end
            ## 
            ## Sets the supervisorId property value. The object ID of the supervisor of the external user profile. Supports $filter (eq, startswith).
            ## @param value Value to set for the supervisorId property.
            ## @return a void
            ## 
            def supervisor_id=(value)
                @supervisor_id = value
            end
        end
    end
end
