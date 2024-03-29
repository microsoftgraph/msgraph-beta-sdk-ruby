require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics work from anywhere model performance.
        class UserExperienceAnalyticsWorkFromAnywhereModelPerformance < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The cloud identity score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @cloud_identity_score
            ## 
            # The cloud management score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @cloud_management_score
            ## 
            # The cloud provisioning score of the device model.  Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @cloud_provisioning_score
            ## 
            # The healthStatus property
            @health_status
            ## 
            # The manufacturer name of the device. Supports: $select, $OrderBy. Read-only.
            @manufacturer
            ## 
            # The model name of the device. Supports: $select, $OrderBy. Read-only.
            @model
            ## 
            # The devices count for the model. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            @model_device_count
            ## 
            # The window score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @windows_score
            ## 
            # The work from anywhere score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            @work_from_anywhere_score
            ## 
            ## Gets the cloudIdentityScore property value. The cloud identity score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def cloud_identity_score
                return @cloud_identity_score
            end
            ## 
            ## Sets the cloudIdentityScore property value. The cloud identity score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the cloudIdentityScore property.
            ## @return a void
            ## 
            def cloud_identity_score=(value)
                @cloud_identity_score = value
            end
            ## 
            ## Gets the cloudManagementScore property value. The cloud management score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def cloud_management_score
                return @cloud_management_score
            end
            ## 
            ## Sets the cloudManagementScore property value. The cloud management score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the cloudManagementScore property.
            ## @return a void
            ## 
            def cloud_management_score=(value)
                @cloud_management_score = value
            end
            ## 
            ## Gets the cloudProvisioningScore property value. The cloud provisioning score of the device model.  Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def cloud_provisioning_score
                return @cloud_provisioning_score
            end
            ## 
            ## Sets the cloudProvisioningScore property value. The cloud provisioning score of the device model.  Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the cloudProvisioningScore property.
            ## @return a void
            ## 
            def cloud_provisioning_score=(value)
                @cloud_provisioning_score = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsWorkFromAnywhereModelPerformance and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_work_from_anywhere_model_performance
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsWorkFromAnywhereModelPerformance.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "cloudIdentityScore" => lambda {|n| @cloud_identity_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "cloudManagementScore" => lambda {|n| @cloud_management_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "cloudProvisioningScore" => lambda {|n| @cloud_provisioning_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "healthStatus" => lambda {|n| @health_status = n.get_enum_value(MicrosoftGraphBeta::Models::UserExperienceAnalyticsHealthState) },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "modelDeviceCount" => lambda {|n| @model_device_count = n.get_number_value() },
                    "windowsScore" => lambda {|n| @windows_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "workFromAnywhereScore" => lambda {|n| @work_from_anywhere_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the healthStatus property value. The healthStatus property
            ## @return a user_experience_analytics_health_state
            ## 
            def health_status
                return @health_status
            end
            ## 
            ## Sets the healthStatus property value. The healthStatus property
            ## @param value Value to set for the healthStatus property.
            ## @return a void
            ## 
            def health_status=(value)
                @health_status = value
            end
            ## 
            ## Gets the manufacturer property value. The manufacturer name of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. The manufacturer name of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. The model name of the device. Supports: $select, $OrderBy. Read-only.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. The model name of the device. Supports: $select, $OrderBy. Read-only.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the modelDeviceCount property value. The devices count for the model. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @return a integer
            ## 
            def model_device_count
                return @model_device_count
            end
            ## 
            ## Sets the modelDeviceCount property value. The devices count for the model. Supports: $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647
            ## @param value Value to set for the modelDeviceCount property.
            ## @return a void
            ## 
            def model_device_count=(value)
                @model_device_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("cloudIdentityScore", @cloud_identity_score)
                writer.write_object_value("cloudManagementScore", @cloud_management_score)
                writer.write_object_value("cloudProvisioningScore", @cloud_provisioning_score)
                writer.write_enum_value("healthStatus", @health_status)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_number_value("modelDeviceCount", @model_device_count)
                writer.write_object_value("windowsScore", @windows_score)
                writer.write_object_value("workFromAnywhereScore", @work_from_anywhere_score)
            end
            ## 
            ## Gets the windowsScore property value. The window score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def windows_score
                return @windows_score
            end
            ## 
            ## Sets the windowsScore property value. The window score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the windowsScore property.
            ## @return a void
            ## 
            def windows_score=(value)
                @windows_score = value
            end
            ## 
            ## Gets the workFromAnywhereScore property value. The work from anywhere score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @return a double
            ## 
            def work_from_anywhere_score
                return @work_from_anywhere_score
            end
            ## 
            ## Sets the workFromAnywhereScore property value. The work from anywhere score of the device model. Valid values 0 to 100. Value -1 means associated score is unavailable. Supports: $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308
            ## @param value Value to set for the workFromAnywhereScore property.
            ## @return a void
            ## 
            def work_from_anywhere_score=(value)
                @work_from_anywhere_score = value
            end
        end
    end
end
