require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The DepEnrollmentBaseProfile resource represents an Apple Device Enrollment Program (DEP) enrollment profile. This type of profile must be assigned to Apple DEP serial numbers before the corresponding devices can enroll via DEP.
        class DepEnrollmentBaseProfile < MicrosoftGraphBeta::Models::EnrollmentProfile
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates if Apple id setup pane is disabled
            @apple_id_disabled
            ## 
            # Indicates if Apple pay setup pane is disabled
            @apple_pay_disabled
            ## 
            # URL for setup assistant login
            @configuration_web_url
            ## 
            # Sets a literal or name pattern.
            @device_name_template
            ## 
            # Indicates if diagnostics setup pane is disabled
            @diagnostics_disabled
            ## 
            # Indicates if displaytone setup screen is disabled
            @display_tone_setup_disabled
            ## 
            # enabledSkipKeys contains all the enabled skip keys as strings
            @enabled_skip_keys
            ## 
            # EnrollmentTimeAzureAdGroupIds contains list of enrollment time Azure Group Ids to be associated with profile
            @enrollment_time_azure_ad_group_ids
            ## 
            # Indicates if this is the default profile
            @is_default
            ## 
            # Indicates if the profile is mandatory
            @is_mandatory
            ## 
            # Indicates if Location service setup pane is disabled
            @location_disabled
            ## 
            # Indicates if privacy screen is disabled
            @privacy_pane_disabled
            ## 
            # Indicates if the profile removal option is disabled
            @profile_removal_disabled
            ## 
            # Indicates if Restore setup pane is blocked
            @restore_blocked
            ## 
            # Indicates if screen timeout setup is disabled
            @screen_time_screen_disabled
            ## 
            # Indicates if siri setup pane is disabled
            @siri_disabled
            ## 
            # Supervised mode, True to enable, false otherwise. See https://learn.microsoft.com/intune/deploy-use/enroll-devices-in-microsoft-intune for additional information.
            @supervised_mode_enabled
            ## 
            # Support department information
            @support_department
            ## 
            # Support phone number
            @support_phone_number
            ## 
            # Indicates if 'Terms and Conditions' setup pane is disabled
            @terms_and_conditions_disabled
            ## 
            # Indicates if touch id setup pane is disabled
            @touch_id_disabled
            ## 
            ## Gets the appleIdDisabled property value. Indicates if Apple id setup pane is disabled
            ## @return a boolean
            ## 
            def apple_id_disabled
                return @apple_id_disabled
            end
            ## 
            ## Sets the appleIdDisabled property value. Indicates if Apple id setup pane is disabled
            ## @param value Value to set for the appleIdDisabled property.
            ## @return a void
            ## 
            def apple_id_disabled=(value)
                @apple_id_disabled = value
            end
            ## 
            ## Gets the applePayDisabled property value. Indicates if Apple pay setup pane is disabled
            ## @return a boolean
            ## 
            def apple_pay_disabled
                return @apple_pay_disabled
            end
            ## 
            ## Sets the applePayDisabled property value. Indicates if Apple pay setup pane is disabled
            ## @param value Value to set for the applePayDisabled property.
            ## @return a void
            ## 
            def apple_pay_disabled=(value)
                @apple_pay_disabled = value
            end
            ## 
            ## Gets the configurationWebUrl property value. URL for setup assistant login
            ## @return a boolean
            ## 
            def configuration_web_url
                return @configuration_web_url
            end
            ## 
            ## Sets the configurationWebUrl property value. URL for setup assistant login
            ## @param value Value to set for the configurationWebUrl property.
            ## @return a void
            ## 
            def configuration_web_url=(value)
                @configuration_web_url = value
            end
            ## 
            ## Instantiates a new depEnrollmentBaseProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.depEnrollmentBaseProfile"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a dep_enrollment_base_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.depIOSEnrollmentProfile"
                            return DepIOSEnrollmentProfile.new
                        when "#microsoft.graph.depMacOSEnrollmentProfile"
                            return DepMacOSEnrollmentProfile.new
                    end
                end
                return DepEnrollmentBaseProfile.new
            end
            ## 
            ## Gets the deviceNameTemplate property value. Sets a literal or name pattern.
            ## @return a string
            ## 
            def device_name_template
                return @device_name_template
            end
            ## 
            ## Sets the deviceNameTemplate property value. Sets a literal or name pattern.
            ## @param value Value to set for the deviceNameTemplate property.
            ## @return a void
            ## 
            def device_name_template=(value)
                @device_name_template = value
            end
            ## 
            ## Gets the diagnosticsDisabled property value. Indicates if diagnostics setup pane is disabled
            ## @return a boolean
            ## 
            def diagnostics_disabled
                return @diagnostics_disabled
            end
            ## 
            ## Sets the diagnosticsDisabled property value. Indicates if diagnostics setup pane is disabled
            ## @param value Value to set for the diagnosticsDisabled property.
            ## @return a void
            ## 
            def diagnostics_disabled=(value)
                @diagnostics_disabled = value
            end
            ## 
            ## Gets the displayToneSetupDisabled property value. Indicates if displaytone setup screen is disabled
            ## @return a boolean
            ## 
            def display_tone_setup_disabled
                return @display_tone_setup_disabled
            end
            ## 
            ## Sets the displayToneSetupDisabled property value. Indicates if displaytone setup screen is disabled
            ## @param value Value to set for the displayToneSetupDisabled property.
            ## @return a void
            ## 
            def display_tone_setup_disabled=(value)
                @display_tone_setup_disabled = value
            end
            ## 
            ## Gets the enabledSkipKeys property value. enabledSkipKeys contains all the enabled skip keys as strings
            ## @return a string
            ## 
            def enabled_skip_keys
                return @enabled_skip_keys
            end
            ## 
            ## Sets the enabledSkipKeys property value. enabledSkipKeys contains all the enabled skip keys as strings
            ## @param value Value to set for the enabledSkipKeys property.
            ## @return a void
            ## 
            def enabled_skip_keys=(value)
                @enabled_skip_keys = value
            end
            ## 
            ## Gets the enrollmentTimeAzureAdGroupIds property value. EnrollmentTimeAzureAdGroupIds contains list of enrollment time Azure Group Ids to be associated with profile
            ## @return a guid
            ## 
            def enrollment_time_azure_ad_group_ids
                return @enrollment_time_azure_ad_group_ids
            end
            ## 
            ## Sets the enrollmentTimeAzureAdGroupIds property value. EnrollmentTimeAzureAdGroupIds contains list of enrollment time Azure Group Ids to be associated with profile
            ## @param value Value to set for the enrollmentTimeAzureAdGroupIds property.
            ## @return a void
            ## 
            def enrollment_time_azure_ad_group_ids=(value)
                @enrollment_time_azure_ad_group_ids = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appleIdDisabled" => lambda {|n| @apple_id_disabled = n.get_boolean_value() },
                    "applePayDisabled" => lambda {|n| @apple_pay_disabled = n.get_boolean_value() },
                    "configurationWebUrl" => lambda {|n| @configuration_web_url = n.get_boolean_value() },
                    "deviceNameTemplate" => lambda {|n| @device_name_template = n.get_string_value() },
                    "diagnosticsDisabled" => lambda {|n| @diagnostics_disabled = n.get_boolean_value() },
                    "displayToneSetupDisabled" => lambda {|n| @display_tone_setup_disabled = n.get_boolean_value() },
                    "enabledSkipKeys" => lambda {|n| @enabled_skip_keys = n.get_collection_of_primitive_values(String) },
                    "enrollmentTimeAzureAdGroupIds" => lambda {|n| @enrollment_time_azure_ad_group_ids = n.get_collection_of_primitive_values(UUIDTools::UUID) },
                    "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                    "isMandatory" => lambda {|n| @is_mandatory = n.get_boolean_value() },
                    "locationDisabled" => lambda {|n| @location_disabled = n.get_boolean_value() },
                    "privacyPaneDisabled" => lambda {|n| @privacy_pane_disabled = n.get_boolean_value() },
                    "profileRemovalDisabled" => lambda {|n| @profile_removal_disabled = n.get_boolean_value() },
                    "restoreBlocked" => lambda {|n| @restore_blocked = n.get_boolean_value() },
                    "screenTimeScreenDisabled" => lambda {|n| @screen_time_screen_disabled = n.get_boolean_value() },
                    "siriDisabled" => lambda {|n| @siri_disabled = n.get_boolean_value() },
                    "supervisedModeEnabled" => lambda {|n| @supervised_mode_enabled = n.get_boolean_value() },
                    "supportDepartment" => lambda {|n| @support_department = n.get_string_value() },
                    "supportPhoneNumber" => lambda {|n| @support_phone_number = n.get_string_value() },
                    "termsAndConditionsDisabled" => lambda {|n| @terms_and_conditions_disabled = n.get_boolean_value() },
                    "touchIdDisabled" => lambda {|n| @touch_id_disabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isDefault property value. Indicates if this is the default profile
            ## @return a boolean
            ## 
            def is_default
                return @is_default
            end
            ## 
            ## Sets the isDefault property value. Indicates if this is the default profile
            ## @param value Value to set for the isDefault property.
            ## @return a void
            ## 
            def is_default=(value)
                @is_default = value
            end
            ## 
            ## Gets the isMandatory property value. Indicates if the profile is mandatory
            ## @return a boolean
            ## 
            def is_mandatory
                return @is_mandatory
            end
            ## 
            ## Sets the isMandatory property value. Indicates if the profile is mandatory
            ## @param value Value to set for the isMandatory property.
            ## @return a void
            ## 
            def is_mandatory=(value)
                @is_mandatory = value
            end
            ## 
            ## Gets the locationDisabled property value. Indicates if Location service setup pane is disabled
            ## @return a boolean
            ## 
            def location_disabled
                return @location_disabled
            end
            ## 
            ## Sets the locationDisabled property value. Indicates if Location service setup pane is disabled
            ## @param value Value to set for the locationDisabled property.
            ## @return a void
            ## 
            def location_disabled=(value)
                @location_disabled = value
            end
            ## 
            ## Gets the privacyPaneDisabled property value. Indicates if privacy screen is disabled
            ## @return a boolean
            ## 
            def privacy_pane_disabled
                return @privacy_pane_disabled
            end
            ## 
            ## Sets the privacyPaneDisabled property value. Indicates if privacy screen is disabled
            ## @param value Value to set for the privacyPaneDisabled property.
            ## @return a void
            ## 
            def privacy_pane_disabled=(value)
                @privacy_pane_disabled = value
            end
            ## 
            ## Gets the profileRemovalDisabled property value. Indicates if the profile removal option is disabled
            ## @return a boolean
            ## 
            def profile_removal_disabled
                return @profile_removal_disabled
            end
            ## 
            ## Sets the profileRemovalDisabled property value. Indicates if the profile removal option is disabled
            ## @param value Value to set for the profileRemovalDisabled property.
            ## @return a void
            ## 
            def profile_removal_disabled=(value)
                @profile_removal_disabled = value
            end
            ## 
            ## Gets the restoreBlocked property value. Indicates if Restore setup pane is blocked
            ## @return a boolean
            ## 
            def restore_blocked
                return @restore_blocked
            end
            ## 
            ## Sets the restoreBlocked property value. Indicates if Restore setup pane is blocked
            ## @param value Value to set for the restoreBlocked property.
            ## @return a void
            ## 
            def restore_blocked=(value)
                @restore_blocked = value
            end
            ## 
            ## Gets the screenTimeScreenDisabled property value. Indicates if screen timeout setup is disabled
            ## @return a boolean
            ## 
            def screen_time_screen_disabled
                return @screen_time_screen_disabled
            end
            ## 
            ## Sets the screenTimeScreenDisabled property value. Indicates if screen timeout setup is disabled
            ## @param value Value to set for the screenTimeScreenDisabled property.
            ## @return a void
            ## 
            def screen_time_screen_disabled=(value)
                @screen_time_screen_disabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("appleIdDisabled", @apple_id_disabled)
                writer.write_boolean_value("applePayDisabled", @apple_pay_disabled)
                writer.write_boolean_value("configurationWebUrl", @configuration_web_url)
                writer.write_string_value("deviceNameTemplate", @device_name_template)
                writer.write_boolean_value("diagnosticsDisabled", @diagnostics_disabled)
                writer.write_boolean_value("displayToneSetupDisabled", @display_tone_setup_disabled)
                writer.write_collection_of_primitive_values("enabledSkipKeys", @enabled_skip_keys)
                writer.write_collection_of_primitive_values("enrollmentTimeAzureAdGroupIds", @enrollment_time_azure_ad_group_ids)
                writer.write_boolean_value("isDefault", @is_default)
                writer.write_boolean_value("isMandatory", @is_mandatory)
                writer.write_boolean_value("locationDisabled", @location_disabled)
                writer.write_boolean_value("privacyPaneDisabled", @privacy_pane_disabled)
                writer.write_boolean_value("profileRemovalDisabled", @profile_removal_disabled)
                writer.write_boolean_value("restoreBlocked", @restore_blocked)
                writer.write_boolean_value("screenTimeScreenDisabled", @screen_time_screen_disabled)
                writer.write_boolean_value("siriDisabled", @siri_disabled)
                writer.write_boolean_value("supervisedModeEnabled", @supervised_mode_enabled)
                writer.write_string_value("supportDepartment", @support_department)
                writer.write_string_value("supportPhoneNumber", @support_phone_number)
                writer.write_boolean_value("termsAndConditionsDisabled", @terms_and_conditions_disabled)
                writer.write_boolean_value("touchIdDisabled", @touch_id_disabled)
            end
            ## 
            ## Gets the siriDisabled property value. Indicates if siri setup pane is disabled
            ## @return a boolean
            ## 
            def siri_disabled
                return @siri_disabled
            end
            ## 
            ## Sets the siriDisabled property value. Indicates if siri setup pane is disabled
            ## @param value Value to set for the siriDisabled property.
            ## @return a void
            ## 
            def siri_disabled=(value)
                @siri_disabled = value
            end
            ## 
            ## Gets the supervisedModeEnabled property value. Supervised mode, True to enable, false otherwise. See https://learn.microsoft.com/intune/deploy-use/enroll-devices-in-microsoft-intune for additional information.
            ## @return a boolean
            ## 
            def supervised_mode_enabled
                return @supervised_mode_enabled
            end
            ## 
            ## Sets the supervisedModeEnabled property value. Supervised mode, True to enable, false otherwise. See https://learn.microsoft.com/intune/deploy-use/enroll-devices-in-microsoft-intune for additional information.
            ## @param value Value to set for the supervisedModeEnabled property.
            ## @return a void
            ## 
            def supervised_mode_enabled=(value)
                @supervised_mode_enabled = value
            end
            ## 
            ## Gets the supportDepartment property value. Support department information
            ## @return a string
            ## 
            def support_department
                return @support_department
            end
            ## 
            ## Sets the supportDepartment property value. Support department information
            ## @param value Value to set for the supportDepartment property.
            ## @return a void
            ## 
            def support_department=(value)
                @support_department = value
            end
            ## 
            ## Gets the supportPhoneNumber property value. Support phone number
            ## @return a string
            ## 
            def support_phone_number
                return @support_phone_number
            end
            ## 
            ## Sets the supportPhoneNumber property value. Support phone number
            ## @param value Value to set for the supportPhoneNumber property.
            ## @return a void
            ## 
            def support_phone_number=(value)
                @support_phone_number = value
            end
            ## 
            ## Gets the termsAndConditionsDisabled property value. Indicates if 'Terms and Conditions' setup pane is disabled
            ## @return a boolean
            ## 
            def terms_and_conditions_disabled
                return @terms_and_conditions_disabled
            end
            ## 
            ## Sets the termsAndConditionsDisabled property value. Indicates if 'Terms and Conditions' setup pane is disabled
            ## @param value Value to set for the termsAndConditionsDisabled property.
            ## @return a void
            ## 
            def terms_and_conditions_disabled=(value)
                @terms_and_conditions_disabled = value
            end
            ## 
            ## Gets the touchIdDisabled property value. Indicates if touch id setup pane is disabled
            ## @return a boolean
            ## 
            def touch_id_disabled
                return @touch_id_disabled
            end
            ## 
            ## Sets the touchIdDisabled property value. Indicates if touch id setup pane is disabled
            ## @param value Value to set for the touchIdDisabled property.
            ## @return a void
            ## 
            def touch_id_disabled=(value)
                @touch_id_disabled = value
            end
        end
    end
end
