require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsAuditEvent < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A string that uniquely represents the operation that occurred. Required. Read-only.
            @activity
            ## 
            # The time when the activity occurred. Required. Read-only.
            @activity_date_time
            ## 
            # The identifier of the activity request that made the audit event. Required. Read-only.
            @activity_id
            ## 
            # A category that represents a logical grouping of activities. Required. Read-only.
            @category
            ## 
            # The HTTP verb that was used when making the API request. Required. Read-only.
            @http_verb
            ## 
            # The identifier of the app that was used to make the request. Required. Read-only.
            @initiated_by_app_id
            ## 
            # The UPN of the user who initiated the activity. Required. Read-only.
            @initiated_by_upn
            ## 
            # The identifier of the user who initiated the activity. Required. Read-only.
            @initiated_by_user_id
            ## 
            # The IP address of where the activity was initiated. This may be an IPv4 or IPv6 address. Required. Read-only.
            @ip_address
            ## 
            # The raw HTTP request body. Some sensitive information may be removed.
            @request_body
            ## 
            # The raw HTTP request URL. Required. Read-only.
            @request_url
            ## 
            # The collection of Microsoft Entra tenant identifiers for the managed tenants that were affected by a change, and is formatted as a list of comma-separated values. Required. Read-only.
            @tenant_ids
            ## 
            # The collection of tenant names that were affected by a change, and is formatted as a list of comma-separated values. Required. Read-only.
            @tenant_names
            ## 
            ## Gets the activity property value. A string that uniquely represents the operation that occurred. Required. Read-only.
            ## @return a string
            ## 
            def activity
                return @activity
            end
            ## 
            ## Sets the activity property value. A string that uniquely represents the operation that occurred. Required. Read-only.
            ## @param value Value to set for the activity property.
            ## @return a void
            ## 
            def activity=(value)
                @activity = value
            end
            ## 
            ## Gets the activityDateTime property value. The time when the activity occurred. Required. Read-only.
            ## @return a date_time
            ## 
            def activity_date_time
                return @activity_date_time
            end
            ## 
            ## Sets the activityDateTime property value. The time when the activity occurred. Required. Read-only.
            ## @param value Value to set for the activityDateTime property.
            ## @return a void
            ## 
            def activity_date_time=(value)
                @activity_date_time = value
            end
            ## 
            ## Gets the activityId property value. The identifier of the activity request that made the audit event. Required. Read-only.
            ## @return a string
            ## 
            def activity_id
                return @activity_id
            end
            ## 
            ## Sets the activityId property value. The identifier of the activity request that made the audit event. Required. Read-only.
            ## @param value Value to set for the activityId property.
            ## @return a void
            ## 
            def activity_id=(value)
                @activity_id = value
            end
            ## 
            ## Gets the category property value. A category that represents a logical grouping of activities. Required. Read-only.
            ## @return a string
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. A category that represents a logical grouping of activities. Required. Read-only.
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new managedTenantsAuditEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_audit_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsAuditEvent.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activity" => lambda {|n| @activity = n.get_string_value() },
                    "activityDateTime" => lambda {|n| @activity_date_time = n.get_date_time_value() },
                    "activityId" => lambda {|n| @activity_id = n.get_string_value() },
                    "category" => lambda {|n| @category = n.get_string_value() },
                    "httpVerb" => lambda {|n| @http_verb = n.get_string_value() },
                    "initiatedByAppId" => lambda {|n| @initiated_by_app_id = n.get_string_value() },
                    "initiatedByUpn" => lambda {|n| @initiated_by_upn = n.get_string_value() },
                    "initiatedByUserId" => lambda {|n| @initiated_by_user_id = n.get_string_value() },
                    "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                    "requestBody" => lambda {|n| @request_body = n.get_string_value() },
                    "requestUrl" => lambda {|n| @request_url = n.get_string_value() },
                    "tenantIds" => lambda {|n| @tenant_ids = n.get_string_value() },
                    "tenantNames" => lambda {|n| @tenant_names = n.get_string_value() },
                })
            end
            ## 
            ## Gets the httpVerb property value. The HTTP verb that was used when making the API request. Required. Read-only.
            ## @return a string
            ## 
            def http_verb
                return @http_verb
            end
            ## 
            ## Sets the httpVerb property value. The HTTP verb that was used when making the API request. Required. Read-only.
            ## @param value Value to set for the httpVerb property.
            ## @return a void
            ## 
            def http_verb=(value)
                @http_verb = value
            end
            ## 
            ## Gets the initiatedByAppId property value. The identifier of the app that was used to make the request. Required. Read-only.
            ## @return a string
            ## 
            def initiated_by_app_id
                return @initiated_by_app_id
            end
            ## 
            ## Sets the initiatedByAppId property value. The identifier of the app that was used to make the request. Required. Read-only.
            ## @param value Value to set for the initiatedByAppId property.
            ## @return a void
            ## 
            def initiated_by_app_id=(value)
                @initiated_by_app_id = value
            end
            ## 
            ## Gets the initiatedByUpn property value. The UPN of the user who initiated the activity. Required. Read-only.
            ## @return a string
            ## 
            def initiated_by_upn
                return @initiated_by_upn
            end
            ## 
            ## Sets the initiatedByUpn property value. The UPN of the user who initiated the activity. Required. Read-only.
            ## @param value Value to set for the initiatedByUpn property.
            ## @return a void
            ## 
            def initiated_by_upn=(value)
                @initiated_by_upn = value
            end
            ## 
            ## Gets the initiatedByUserId property value. The identifier of the user who initiated the activity. Required. Read-only.
            ## @return a string
            ## 
            def initiated_by_user_id
                return @initiated_by_user_id
            end
            ## 
            ## Sets the initiatedByUserId property value. The identifier of the user who initiated the activity. Required. Read-only.
            ## @param value Value to set for the initiatedByUserId property.
            ## @return a void
            ## 
            def initiated_by_user_id=(value)
                @initiated_by_user_id = value
            end
            ## 
            ## Gets the ipAddress property value. The IP address of where the activity was initiated. This may be an IPv4 or IPv6 address. Required. Read-only.
            ## @return a string
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. The IP address of where the activity was initiated. This may be an IPv4 or IPv6 address. Required. Read-only.
            ## @param value Value to set for the ipAddress property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
            end
            ## 
            ## Gets the requestBody property value. The raw HTTP request body. Some sensitive information may be removed.
            ## @return a string
            ## 
            def request_body
                return @request_body
            end
            ## 
            ## Sets the requestBody property value. The raw HTTP request body. Some sensitive information may be removed.
            ## @param value Value to set for the requestBody property.
            ## @return a void
            ## 
            def request_body=(value)
                @request_body = value
            end
            ## 
            ## Gets the requestUrl property value. The raw HTTP request URL. Required. Read-only.
            ## @return a string
            ## 
            def request_url
                return @request_url
            end
            ## 
            ## Sets the requestUrl property value. The raw HTTP request URL. Required. Read-only.
            ## @param value Value to set for the requestUrl property.
            ## @return a void
            ## 
            def request_url=(value)
                @request_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("activity", @activity)
                writer.write_date_time_value("activityDateTime", @activity_date_time)
                writer.write_string_value("activityId", @activity_id)
                writer.write_string_value("category", @category)
                writer.write_string_value("httpVerb", @http_verb)
                writer.write_string_value("initiatedByAppId", @initiated_by_app_id)
                writer.write_string_value("initiatedByUpn", @initiated_by_upn)
                writer.write_string_value("initiatedByUserId", @initiated_by_user_id)
                writer.write_string_value("ipAddress", @ip_address)
                writer.write_string_value("requestBody", @request_body)
                writer.write_string_value("requestUrl", @request_url)
                writer.write_string_value("tenantIds", @tenant_ids)
                writer.write_string_value("tenantNames", @tenant_names)
            end
            ## 
            ## Gets the tenantIds property value. The collection of Microsoft Entra tenant identifiers for the managed tenants that were affected by a change, and is formatted as a list of comma-separated values. Required. Read-only.
            ## @return a string
            ## 
            def tenant_ids
                return @tenant_ids
            end
            ## 
            ## Sets the tenantIds property value. The collection of Microsoft Entra tenant identifiers for the managed tenants that were affected by a change, and is formatted as a list of comma-separated values. Required. Read-only.
            ## @param value Value to set for the tenantIds property.
            ## @return a void
            ## 
            def tenant_ids=(value)
                @tenant_ids = value
            end
            ## 
            ## Gets the tenantNames property value. The collection of tenant names that were affected by a change, and is formatted as a list of comma-separated values. Required. Read-only.
            ## @return a string
            ## 
            def tenant_names
                return @tenant_names
            end
            ## 
            ## Sets the tenantNames property value. The collection of tenant names that were affected by a change, and is formatted as a list of comma-separated values. Required. Read-only.
            ## @param value Value to set for the tenantNames property.
            ## @return a void
            ## 
            def tenant_names=(value)
                @tenant_names = value
            end
        end
    end
end
