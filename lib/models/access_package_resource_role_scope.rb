require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AccessPackageResourceRoleScope < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Read-only. Nullable. Supports $expand.
            @access_package_resource_role
            ## 
            # The accessPackageResourceScope property
            @access_package_resource_scope
            ## 
            # The createdBy property
            @created_by
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @created_date_time
            ## 
            # The modifiedBy property
            @modified_by
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @modified_date_time
            ## 
            ## Gets the accessPackageResourceRole property value. Read-only. Nullable. Supports $expand.
            ## @return a access_package_resource_role
            ## 
            def access_package_resource_role
                return @access_package_resource_role
            end
            ## 
            ## Sets the accessPackageResourceRole property value. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the access_package_resource_role property.
            ## @return a void
            ## 
            def access_package_resource_role=(value)
                @access_package_resource_role = value
            end
            ## 
            ## Gets the accessPackageResourceScope property value. The accessPackageResourceScope property
            ## @return a access_package_resource_scope
            ## 
            def access_package_resource_scope
                return @access_package_resource_scope
            end
            ## 
            ## Sets the accessPackageResourceScope property value. The accessPackageResourceScope property
            ## @param value Value to set for the access_package_resource_scope property.
            ## @return a void
            ## 
            def access_package_resource_scope=(value)
                @access_package_resource_scope = value
            end
            ## 
            ## Instantiates a new accessPackageResourceRoleScope and sets the default values.
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
            ## @param value Value to set for the created_by property.
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
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_resource_role_scope
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageResourceRoleScope.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessPackageResourceRole" => lambda {|n| @access_package_resource_role = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceRole.create_from_discriminator_value(pn) }) },
                    "accessPackageResourceScope" => lambda {|n| @access_package_resource_scope = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceScope.create_from_discriminator_value(pn) }) },
                    "createdBy" => lambda {|n| @created_by = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "modifiedBy" => lambda {|n| @modified_by = n.get_string_value() },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
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
            ## @param value Value to set for the modified_by property.
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
            ## @param value Value to set for the modified_date_time property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("accessPackageResourceRole", @access_package_resource_role)
                writer.write_object_value("accessPackageResourceScope", @access_package_resource_scope)
                writer.write_string_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("modifiedBy", @modified_by)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
            end
        end
    end
end
