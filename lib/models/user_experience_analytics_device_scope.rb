require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The user experience analytics device scope entity contains device scope configuration values use to apply filtering on the endpoint analytics reports.
    class UserExperienceAnalyticsDeviceScope < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Indicates the creation date and time for the custom device scope.
        @created_date_time
        ## 
        # The name of the user experience analytics device Scope configuration.
        @device_scope_name
        ## 
        # Indicates whether a device scope is enabled or disabled. When TRUE, the device scope is enabled. When FALSE, the device scope is disabled. Default value is FALSE.
        @enabled
        ## 
        # Indicates whether the device scope configuration is built-in or custom. When TRUE, the device scope configuration is built-in. When FALSE, the device scope configuration is custom. Default value is FALSE.
        @is_built_in
        ## 
        # Indicates the last updated date and time for the custom device scope.
        @last_modified_date_time
        ## 
        # Device scope configuration query operator. Possible values are: equals, notEquals, contains, notContains, greaterThan, lessThan. Default value: equals.
        @operator
        ## 
        # The unique identifier of the person (admin) who created the device scope configuration.
        @owner_id
        ## 
        # Device scope configuration parameter. It will be expend in future to add more parameter. Eg: device scope parameter can be OS version, Disk Type, Device manufacturer, device model or Scope tag. Default value: scopeTag.
        @parameter
        ## 
        # Indicates the device scope status after the device scope has been enabled. Possible values are: none, computing, insufficientData or completed. Default value is none.
        @status
        ## 
        # The device scope configuration query clause value.
        @value
        ## 
        # The unique identifier for a user device scope tag Id used for the creation of device scope configuration.
        @value_object_id
        ## 
        ## Instantiates a new userExperienceAnalyticsDeviceScope and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdDateTime property value. Indicates the creation date and time for the custom device scope.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. Indicates the creation date and time for the custom device scope.
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_experience_analytics_device_scope
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserExperienceAnalyticsDeviceScope.new
        end
        ## 
        ## Gets the deviceScopeName property value. The name of the user experience analytics device Scope configuration.
        ## @return a string
        ## 
        def device_scope_name
            return @device_scope_name
        end
        ## 
        ## Sets the deviceScopeName property value. The name of the user experience analytics device Scope configuration.
        ## @param value Value to set for the deviceScopeName property.
        ## @return a void
        ## 
        def device_scope_name=(value)
            @device_scope_name = value
        end
        ## 
        ## Gets the enabled property value. Indicates whether a device scope is enabled or disabled. When TRUE, the device scope is enabled. When FALSE, the device scope is disabled. Default value is FALSE.
        ## @return a boolean
        ## 
        def enabled
            return @enabled
        end
        ## 
        ## Sets the enabled property value. Indicates whether a device scope is enabled or disabled. When TRUE, the device scope is enabled. When FALSE, the device scope is disabled. Default value is FALSE.
        ## @param value Value to set for the enabled property.
        ## @return a void
        ## 
        def enabled=(value)
            @enabled = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "deviceScopeName" => lambda {|n| @device_scope_name = n.get_string_value() },
                "enabled" => lambda {|n| @enabled = n.get_boolean_value() },
                "isBuiltIn" => lambda {|n| @is_built_in = n.get_boolean_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "operator" => lambda {|n| @operator = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceScopeOperator) },
                "ownerId" => lambda {|n| @owner_id = n.get_string_value() },
                "parameter" => lambda {|n| @parameter = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceScopeParameter) },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceScopeStatus) },
                "value" => lambda {|n| @value = n.get_string_value() },
                "valueObjectId" => lambda {|n| @value_object_id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the isBuiltIn property value. Indicates whether the device scope configuration is built-in or custom. When TRUE, the device scope configuration is built-in. When FALSE, the device scope configuration is custom. Default value is FALSE.
        ## @return a boolean
        ## 
        def is_built_in
            return @is_built_in
        end
        ## 
        ## Sets the isBuiltIn property value. Indicates whether the device scope configuration is built-in or custom. When TRUE, the device scope configuration is built-in. When FALSE, the device scope configuration is custom. Default value is FALSE.
        ## @param value Value to set for the isBuiltIn property.
        ## @return a void
        ## 
        def is_built_in=(value)
            @is_built_in = value
        end
        ## 
        ## Gets the lastModifiedDateTime property value. Indicates the last updated date and time for the custom device scope.
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. Indicates the last updated date and time for the custom device scope.
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the operator property value. Device scope configuration query operator. Possible values are: equals, notEquals, contains, notContains, greaterThan, lessThan. Default value: equals.
        ## @return a device_scope_operator
        ## 
        def operator
            return @operator
        end
        ## 
        ## Sets the operator property value. Device scope configuration query operator. Possible values are: equals, notEquals, contains, notContains, greaterThan, lessThan. Default value: equals.
        ## @param value Value to set for the operator property.
        ## @return a void
        ## 
        def operator=(value)
            @operator = value
        end
        ## 
        ## Gets the ownerId property value. The unique identifier of the person (admin) who created the device scope configuration.
        ## @return a string
        ## 
        def owner_id
            return @owner_id
        end
        ## 
        ## Sets the ownerId property value. The unique identifier of the person (admin) who created the device scope configuration.
        ## @param value Value to set for the ownerId property.
        ## @return a void
        ## 
        def owner_id=(value)
            @owner_id = value
        end
        ## 
        ## Gets the parameter property value. Device scope configuration parameter. It will be expend in future to add more parameter. Eg: device scope parameter can be OS version, Disk Type, Device manufacturer, device model or Scope tag. Default value: scopeTag.
        ## @return a device_scope_parameter
        ## 
        def parameter
            return @parameter
        end
        ## 
        ## Sets the parameter property value. Device scope configuration parameter. It will be expend in future to add more parameter. Eg: device scope parameter can be OS version, Disk Type, Device manufacturer, device model or Scope tag. Default value: scopeTag.
        ## @param value Value to set for the parameter property.
        ## @return a void
        ## 
        def parameter=(value)
            @parameter = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_string_value("deviceScopeName", @device_scope_name)
            writer.write_boolean_value("enabled", @enabled)
            writer.write_boolean_value("isBuiltIn", @is_built_in)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_enum_value("operator", @operator)
            writer.write_string_value("ownerId", @owner_id)
            writer.write_enum_value("parameter", @parameter)
            writer.write_enum_value("status", @status)
            writer.write_string_value("value", @value)
            writer.write_string_value("valueObjectId", @value_object_id)
        end
        ## 
        ## Gets the status property value. Indicates the device scope status after the device scope has been enabled. Possible values are: none, computing, insufficientData or completed. Default value is none.
        ## @return a device_scope_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. Indicates the device scope status after the device scope has been enabled. Possible values are: none, computing, insufficientData or completed. Default value is none.
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
        ## 
        ## Gets the value property value. The device scope configuration query clause value.
        ## @return a string
        ## 
        def value
            return @value
        end
        ## 
        ## Sets the value property value. The device scope configuration query clause value.
        ## @param value Value to set for the value property.
        ## @return a void
        ## 
        def value=(value)
            @value = value
        end
        ## 
        ## Gets the valueObjectId property value. The unique identifier for a user device scope tag Id used for the creation of device scope configuration.
        ## @return a string
        ## 
        def value_object_id
            return @value_object_id
        end
        ## 
        ## Sets the valueObjectId property value. The unique identifier for a user device scope tag Id used for the creation of device scope configuration.
        ## @param value Value to set for the valueObjectId property.
        ## @return a void
        ## 
        def value_object_id=(value)
            @value_object_id = value
        end
    end
end
