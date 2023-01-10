require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Base Profile Type for Resource Access
    class DeviceManagementResourceAccessProfileBase < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The list of assignments for the device configuration profile.
        @assignments
        ## 
        # DateTime profile was created
        @creation_date_time
        ## 
        # Profile description
        @description
        ## 
        # Profile display name
        @display_name
        ## 
        # DateTime profile was last modified
        @last_modified_date_time
        ## 
        # Scope Tags
        @role_scope_tag_ids
        ## 
        # Version of the profile
        @version
        ## 
        ## Gets the assignments property value. The list of assignments for the device configuration profile.
        ## @return a device_management_resource_access_profile_assignment
        ## 
        def assignments
            return @assignments
        end
        ## 
        ## Sets the assignments property value. The list of assignments for the device configuration profile.
        ## @param value Value to set for the assignments property.
        ## @return a void
        ## 
        def assignments=(value)
            @assignments = value
        end
        ## 
        ## Instantiates a new deviceManagementResourceAccessProfileBase and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_resource_access_profile_base
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.windows10XCertificateProfile"
                        return Windows10XCertificateProfile.new
                    when "#microsoft.graph.windows10XSCEPCertificateProfile"
                        return Windows10XSCEPCertificateProfile.new
                    when "#microsoft.graph.windows10XTrustedRootCertificate"
                        return Windows10XTrustedRootCertificate.new
                    when "#microsoft.graph.windows10XVpnConfiguration"
                        return Windows10XVpnConfiguration.new
                    when "#microsoft.graph.windows10XWifiConfiguration"
                        return Windows10XWifiConfiguration.new
                end
            end
            return DeviceManagementResourceAccessProfileBase.new
        end
        ## 
        ## Gets the creationDateTime property value. DateTime profile was created
        ## @return a date_time
        ## 
        def creation_date_time
            return @creation_date_time
        end
        ## 
        ## Sets the creationDateTime property value. DateTime profile was created
        ## @param value Value to set for the creationDateTime property.
        ## @return a void
        ## 
        def creation_date_time=(value)
            @creation_date_time = value
        end
        ## 
        ## Gets the description property value. Profile description
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Profile description
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. Profile display name
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Profile display name
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
                "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementResourceAccessProfileAssignment.create_from_discriminator_value(pn) }) },
                "creationDateTime" => lambda {|n| @creation_date_time = n.get_date_time_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                "version" => lambda {|n| @version = n.get_number_value() },
            })
        end
        ## 
        ## Gets the lastModifiedDateTime property value. DateTime profile was last modified
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. DateTime profile was last modified
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the roleScopeTagIds property value. Scope Tags
        ## @return a string
        ## 
        def role_scope_tag_ids
            return @role_scope_tag_ids
        end
        ## 
        ## Sets the roleScopeTagIds property value. Scope Tags
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
            writer.write_date_time_value("creationDateTime", @creation_date_time)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
            writer.write_number_value("version", @version)
        end
        ## 
        ## Gets the version property value. Version of the profile
        ## @return a integer
        ## 
        def version
            return @version
        end
        ## 
        ## Sets the version property value. Version of the profile
        ## @param value Value to set for the version property.
        ## @return a void
        ## 
        def version=(value)
            @version = value
        end
    end
end
