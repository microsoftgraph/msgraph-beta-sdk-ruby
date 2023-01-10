require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Security baseline state for a device.
    class SecurityBaselineState < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The display name of the security baseline
        @display_name
        ## 
        # The security baseline template id
        @security_baseline_template_id
        ## 
        # The security baseline state for different settings for a device
        @setting_states
        ## 
        # Security Baseline Compliance State
        @state
        ## 
        # User Principal Name
        @user_principal_name
        ## 
        ## Instantiates a new securityBaselineState and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a security_baseline_state
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return SecurityBaselineState.new
        end
        ## 
        ## Gets the displayName property value. The display name of the security baseline
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The display name of the security baseline
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
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "securityBaselineTemplateId" => lambda {|n| @security_baseline_template_id = n.get_string_value() },
                "settingStates" => lambda {|n| @setting_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityBaselineSettingState.create_from_discriminator_value(pn) }) },
                "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityBaselineComplianceState) },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the securityBaselineTemplateId property value. The security baseline template id
        ## @return a string
        ## 
        def security_baseline_template_id
            return @security_baseline_template_id
        end
        ## 
        ## Sets the securityBaselineTemplateId property value. The security baseline template id
        ## @param value Value to set for the securityBaselineTemplateId property.
        ## @return a void
        ## 
        def security_baseline_template_id=(value)
            @security_baseline_template_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("displayName", @display_name)
            writer.write_string_value("securityBaselineTemplateId", @security_baseline_template_id)
            writer.write_collection_of_object_values("settingStates", @setting_states)
            writer.write_enum_value("state", @state)
            writer.write_string_value("userPrincipalName", @user_principal_name)
        end
        ## 
        ## Gets the settingStates property value. The security baseline state for different settings for a device
        ## @return a security_baseline_setting_state
        ## 
        def setting_states
            return @setting_states
        end
        ## 
        ## Sets the settingStates property value. The security baseline state for different settings for a device
        ## @param value Value to set for the settingStates property.
        ## @return a void
        ## 
        def setting_states=(value)
            @setting_states = value
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
        ## 
        ## Gets the userPrincipalName property value. User Principal Name
        ## @return a string
        ## 
        def user_principal_name
            return @user_principal_name
        end
        ## 
        ## Sets the userPrincipalName property value. User Principal Name
        ## @param value Value to set for the userPrincipalName property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
    end
end
