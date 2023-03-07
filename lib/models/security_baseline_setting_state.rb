require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The security baseline compliance state of a setting for a device
        class SecurityBaselineSettingState < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The policies that contribute to this setting instance
            @contributing_policies
            ## 
            # The error code if the setting is in error state
            @error_code
            ## 
            # The setting category id which this setting belongs to
            @setting_category_id
            ## 
            # The setting category name which this setting belongs to
            @setting_category_name
            ## 
            # The setting id guid
            @setting_id
            ## 
            # The setting name that is being reported
            @setting_name
            ## 
            # The policies that contribute to this setting instance
            @source_policies
            ## 
            # Security Baseline Compliance State
            @state
            ## 
            ## Instantiates a new securityBaselineSettingState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contributingPolicies property value. The policies that contribute to this setting instance
            ## @return a security_baseline_contributing_policy
            ## 
            def contributing_policies
                return @contributing_policies
            end
            ## 
            ## Sets the contributingPolicies property value. The policies that contribute to this setting instance
            ## @param value Value to set for the contributing_policies property.
            ## @return a void
            ## 
            def contributing_policies=(value)
                @contributing_policies = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a security_baseline_setting_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityBaselineSettingState.new
            end
            ## 
            ## Gets the errorCode property value. The error code if the setting is in error state
            ## @return a string
            ## 
            def error_code
                return @error_code
            end
            ## 
            ## Sets the errorCode property value. The error code if the setting is in error state
            ## @param value Value to set for the error_code property.
            ## @return a void
            ## 
            def error_code=(value)
                @error_code = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contributingPolicies" => lambda {|n| @contributing_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityBaselineContributingPolicy.create_from_discriminator_value(pn) }) },
                    "errorCode" => lambda {|n| @error_code = n.get_string_value() },
                    "settingCategoryId" => lambda {|n| @setting_category_id = n.get_string_value() },
                    "settingCategoryName" => lambda {|n| @setting_category_name = n.get_string_value() },
                    "settingId" => lambda {|n| @setting_id = n.get_string_value() },
                    "settingName" => lambda {|n| @setting_name = n.get_string_value() },
                    "sourcePolicies" => lambda {|n| @source_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SettingSource.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityBaselineComplianceState) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("contributingPolicies", @contributing_policies)
                writer.write_string_value("errorCode", @error_code)
                writer.write_string_value("settingCategoryId", @setting_category_id)
                writer.write_string_value("settingCategoryName", @setting_category_name)
                writer.write_string_value("settingId", @setting_id)
                writer.write_string_value("settingName", @setting_name)
                writer.write_collection_of_object_values("sourcePolicies", @source_policies)
                writer.write_enum_value("state", @state)
            end
            ## 
            ## Gets the settingCategoryId property value. The setting category id which this setting belongs to
            ## @return a string
            ## 
            def setting_category_id
                return @setting_category_id
            end
            ## 
            ## Sets the settingCategoryId property value. The setting category id which this setting belongs to
            ## @param value Value to set for the setting_category_id property.
            ## @return a void
            ## 
            def setting_category_id=(value)
                @setting_category_id = value
            end
            ## 
            ## Gets the settingCategoryName property value. The setting category name which this setting belongs to
            ## @return a string
            ## 
            def setting_category_name
                return @setting_category_name
            end
            ## 
            ## Sets the settingCategoryName property value. The setting category name which this setting belongs to
            ## @param value Value to set for the setting_category_name property.
            ## @return a void
            ## 
            def setting_category_name=(value)
                @setting_category_name = value
            end
            ## 
            ## Gets the settingId property value. The setting id guid
            ## @return a string
            ## 
            def setting_id
                return @setting_id
            end
            ## 
            ## Sets the settingId property value. The setting id guid
            ## @param value Value to set for the setting_id property.
            ## @return a void
            ## 
            def setting_id=(value)
                @setting_id = value
            end
            ## 
            ## Gets the settingName property value. The setting name that is being reported
            ## @return a string
            ## 
            def setting_name
                return @setting_name
            end
            ## 
            ## Sets the settingName property value. The setting name that is being reported
            ## @param value Value to set for the setting_name property.
            ## @return a void
            ## 
            def setting_name=(value)
                @setting_name = value
            end
            ## 
            ## Gets the sourcePolicies property value. The policies that contribute to this setting instance
            ## @return a setting_source
            ## 
            def source_policies
                return @source_policies
            end
            ## 
            ## Sets the sourcePolicies property value. The policies that contribute to this setting instance
            ## @param value Value to set for the source_policies property.
            ## @return a void
            ## 
            def source_policies=(value)
                @source_policies = value
            end
            ## 
            ## Gets the state property value. Security Baseline Compliance State
            ## @return a security_baseline_compliance_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. Security Baseline Compliance State
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
        end
    end
end
