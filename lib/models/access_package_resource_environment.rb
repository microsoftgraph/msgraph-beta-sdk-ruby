require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AccessPackageResourceEnvironment < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Read-only. Required.
            @access_package_resources
            ## 
            # Connection information of an environment used to connect to a resource.
            @connection_info
            ## 
            # The display name of the user that created this object.
            @created_by
            ## 
            # The date and time that this object was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # The description of this object.
            @description
            ## 
            # The display name of this object.
            @display_name
            ## 
            # Determines whether this is default environment or not. It is set to true for all static origin systems, such as Azure AD groups and Azure AD Applications.
            @is_default_environment
            ## 
            # The display name of the entity that last modified this object.
            @modified_by
            ## 
            # The date and time that this object was last modified. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @modified_date_time
            ## 
            # The unique identifier of this environment in the origin system.
            @origin_id
            ## 
            # The type of the resource in the origin system, that is, SharePointOnline. Requires $filter (eq).
            @origin_system
            ## 
            ## Gets the accessPackageResources property value. Read-only. Required.
            ## @return a access_package_resource
            ## 
            def access_package_resources
                return @access_package_resources
            end
            ## 
            ## Sets the accessPackageResources property value. Read-only. Required.
            ## @param value Value to set for the accessPackageResources property.
            ## @return a void
            ## 
            def access_package_resources=(value)
                @access_package_resources = value
            end
            ## 
            ## Gets the connectionInfo property value. Connection information of an environment used to connect to a resource.
            ## @return a connection_info
            ## 
            def connection_info
                return @connection_info
            end
            ## 
            ## Sets the connectionInfo property value. Connection information of an environment used to connect to a resource.
            ## @param value Value to set for the connectionInfo property.
            ## @return a void
            ## 
            def connection_info=(value)
                @connection_info = value
            end
            ## 
            ## Instantiates a new accessPackageResourceEnvironment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The display name of the user that created this object.
            ## @return a string
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The display name of the user that created this object.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The date and time that this object was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time that this object was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_resource_environment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageResourceEnvironment.new
            end
            ## 
            ## Gets the description property value. The description of this object.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of this object.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name of this object.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of this object.
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
                    "accessPackageResources" => lambda {|n| @access_package_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResource.create_from_discriminator_value(pn) }) },
                    "connectionInfo" => lambda {|n| @connection_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ConnectionInfo.create_from_discriminator_value(pn) }) },
                    "createdBy" => lambda {|n| @created_by = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isDefaultEnvironment" => lambda {|n| @is_default_environment = n.get_boolean_value() },
                    "modifiedBy" => lambda {|n| @modified_by = n.get_string_value() },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                    "originId" => lambda {|n| @origin_id = n.get_string_value() },
                    "originSystem" => lambda {|n| @origin_system = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isDefaultEnvironment property value. Determines whether this is default environment or not. It is set to true for all static origin systems, such as Azure AD groups and Azure AD Applications.
            ## @return a boolean
            ## 
            def is_default_environment
                return @is_default_environment
            end
            ## 
            ## Sets the isDefaultEnvironment property value. Determines whether this is default environment or not. It is set to true for all static origin systems, such as Azure AD groups and Azure AD Applications.
            ## @param value Value to set for the isDefaultEnvironment property.
            ## @return a void
            ## 
            def is_default_environment=(value)
                @is_default_environment = value
            end
            ## 
            ## Gets the modifiedBy property value. The display name of the entity that last modified this object.
            ## @return a string
            ## 
            def modified_by
                return @modified_by
            end
            ## 
            ## Sets the modifiedBy property value. The display name of the entity that last modified this object.
            ## @param value Value to set for the modifiedBy property.
            ## @return a void
            ## 
            def modified_by=(value)
                @modified_by = value
            end
            ## 
            ## Gets the modifiedDateTime property value. The date and time that this object was last modified. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. The date and time that this object was last modified. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the modifiedDateTime property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
            end
            ## 
            ## Gets the originId property value. The unique identifier of this environment in the origin system.
            ## @return a string
            ## 
            def origin_id
                return @origin_id
            end
            ## 
            ## Sets the originId property value. The unique identifier of this environment in the origin system.
            ## @param value Value to set for the originId property.
            ## @return a void
            ## 
            def origin_id=(value)
                @origin_id = value
            end
            ## 
            ## Gets the originSystem property value. The type of the resource in the origin system, that is, SharePointOnline. Requires $filter (eq).
            ## @return a string
            ## 
            def origin_system
                return @origin_system
            end
            ## 
            ## Sets the originSystem property value. The type of the resource in the origin system, that is, SharePointOnline. Requires $filter (eq).
            ## @param value Value to set for the originSystem property.
            ## @return a void
            ## 
            def origin_system=(value)
                @origin_system = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("accessPackageResources", @access_package_resources)
                writer.write_object_value("connectionInfo", @connection_info)
                writer.write_string_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isDefaultEnvironment", @is_default_environment)
                writer.write_string_value("modifiedBy", @modified_by)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
                writer.write_string_value("originId", @origin_id)
                writer.write_string_value("originSystem", @origin_system)
            end
        end
    end
end
