require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AccessPackageResourceRequest < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessPackageResource property
            @access_package_resource
            ## 
            # The unique ID of the access package catalog.
            @catalog_id
            ## 
            # The executeImmediately property
            @execute_immediately
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            @expiration_date_time
            ## 
            # If set, does not add the resource.
            @is_validation_only
            ## 
            # The requestor's justification for adding or removing the resource.
            @justification
            ## 
            # The outcome of whether the service was able to add the resource to the catalog.  The value is Delivered if the resource was added or removed. Read-Only.
            @request_state
            ## 
            # The requestStatus property
            @request_status
            ## 
            # Use AdminAdd to add a resource, if the caller is an administrator or resource owner, AdminUpdate to update a resource, or AdminRemove to remove a resource.
            @request_type
            ## 
            # Read-only. Nullable. Supports $expand.
            @requestor
            ## 
            ## Gets the accessPackageResource property value. The accessPackageResource property
            ## @return a access_package_resource
            ## 
            def access_package_resource
                return @access_package_resource
            end
            ## 
            ## Sets the accessPackageResource property value. The accessPackageResource property
            ## @param value Value to set for the access_package_resource property.
            ## @return a void
            ## 
            def access_package_resource=(value)
                @access_package_resource = value
            end
            ## 
            ## Gets the catalogId property value. The unique ID of the access package catalog.
            ## @return a string
            ## 
            def catalog_id
                return @catalog_id
            end
            ## 
            ## Sets the catalogId property value. The unique ID of the access package catalog.
            ## @param value Value to set for the catalog_id property.
            ## @return a void
            ## 
            def catalog_id=(value)
                @catalog_id = value
            end
            ## 
            ## Instantiates a new accessPackageResourceRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_package_resource_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageResourceRequest.new
            end
            ## 
            ## Gets the executeImmediately property value. The executeImmediately property
            ## @return a boolean
            ## 
            def execute_immediately
                return @execute_immediately
            end
            ## 
            ## Sets the executeImmediately property value. The executeImmediately property
            ## @param value Value to set for the execute_immediately property.
            ## @return a void
            ## 
            def execute_immediately=(value)
                @execute_immediately = value
            end
            ## 
            ## Gets the expirationDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessPackageResource" => lambda {|n| @access_package_resource = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResource.create_from_discriminator_value(pn) }) },
                    "catalogId" => lambda {|n| @catalog_id = n.get_string_value() },
                    "executeImmediately" => lambda {|n| @execute_immediately = n.get_boolean_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "isValidationOnly" => lambda {|n| @is_validation_only = n.get_boolean_value() },
                    "justification" => lambda {|n| @justification = n.get_string_value() },
                    "requestState" => lambda {|n| @request_state = n.get_string_value() },
                    "requestStatus" => lambda {|n| @request_status = n.get_string_value() },
                    "requestType" => lambda {|n| @request_type = n.get_string_value() },
                    "requestor" => lambda {|n| @requestor = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageSubject.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isValidationOnly property value. If set, does not add the resource.
            ## @return a boolean
            ## 
            def is_validation_only
                return @is_validation_only
            end
            ## 
            ## Sets the isValidationOnly property value. If set, does not add the resource.
            ## @param value Value to set for the is_validation_only property.
            ## @return a void
            ## 
            def is_validation_only=(value)
                @is_validation_only = value
            end
            ## 
            ## Gets the justification property value. The requestor's justification for adding or removing the resource.
            ## @return a string
            ## 
            def justification
                return @justification
            end
            ## 
            ## Sets the justification property value. The requestor's justification for adding or removing the resource.
            ## @param value Value to set for the justification property.
            ## @return a void
            ## 
            def justification=(value)
                @justification = value
            end
            ## 
            ## Gets the requestState property value. The outcome of whether the service was able to add the resource to the catalog.  The value is Delivered if the resource was added or removed. Read-Only.
            ## @return a string
            ## 
            def request_state
                return @request_state
            end
            ## 
            ## Sets the requestState property value. The outcome of whether the service was able to add the resource to the catalog.  The value is Delivered if the resource was added or removed. Read-Only.
            ## @param value Value to set for the request_state property.
            ## @return a void
            ## 
            def request_state=(value)
                @request_state = value
            end
            ## 
            ## Gets the requestStatus property value. The requestStatus property
            ## @return a string
            ## 
            def request_status
                return @request_status
            end
            ## 
            ## Sets the requestStatus property value. The requestStatus property
            ## @param value Value to set for the request_status property.
            ## @return a void
            ## 
            def request_status=(value)
                @request_status = value
            end
            ## 
            ## Gets the requestType property value. Use AdminAdd to add a resource, if the caller is an administrator or resource owner, AdminUpdate to update a resource, or AdminRemove to remove a resource.
            ## @return a string
            ## 
            def request_type
                return @request_type
            end
            ## 
            ## Sets the requestType property value. Use AdminAdd to add a resource, if the caller is an administrator or resource owner, AdminUpdate to update a resource, or AdminRemove to remove a resource.
            ## @param value Value to set for the request_type property.
            ## @return a void
            ## 
            def request_type=(value)
                @request_type = value
            end
            ## 
            ## Gets the requestor property value. Read-only. Nullable. Supports $expand.
            ## @return a access_package_subject
            ## 
            def requestor
                return @requestor
            end
            ## 
            ## Sets the requestor property value. Read-only. Nullable. Supports $expand.
            ## @param value Value to set for the requestor property.
            ## @return a void
            ## 
            def requestor=(value)
                @requestor = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("accessPackageResource", @access_package_resource)
                writer.write_string_value("catalogId", @catalog_id)
                writer.write_boolean_value("executeImmediately", @execute_immediately)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_boolean_value("isValidationOnly", @is_validation_only)
                writer.write_string_value("justification", @justification)
                writer.write_string_value("requestState", @request_state)
                writer.write_string_value("requestStatus", @request_status)
                writer.write_string_value("requestType", @request_type)
                writer.write_object_value("requestor", @requestor)
            end
        end
    end
end
