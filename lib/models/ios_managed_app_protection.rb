require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Policy used to configure detailed management settings targeted to specific security groups and for a specified set of apps on an iOS device
        class IosManagedAppProtection < MicrosoftGraphBeta::Models::TargetedManagedAppProtection
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Semicolon seperated list of device models allowed, as a string, for the managed app to work.
            @allowed_ios_device_models
            ## 
            # An admin initiated action to be applied on a managed app.
            @app_action_if_ios_device_model_not_allowed
            ## 
            # Represents the level to which app data is encrypted for managed apps
            @app_data_encryption_type
            ## 
            # List of apps to which the policy is deployed.
            @apps
            ## 
            # A custom browser protocol to open weblink on iOS.
            @custom_browser_protocol
            ## 
            # Protocol of a custom dialer app to click-to-open a phone number on iOS, for example, skype:.
            @custom_dialer_app_protocol
            ## 
            # Count of apps to which the current policy is deployed.
            @deployed_app_count
            ## 
            # Navigation property to deployment summary of the configuration.
            @deployment_summary
            ## 
            # Disable protection of data transferred to other apps through IOS OpenIn option. This setting is only allowed to be True when AllowedOutboundDataTransferDestinations is set to ManagedApps.
            @disable_protection_of_managed_outbound_open_in_data
            ## 
            # Apps in this list will be exempt from the policy and will be able to receive data from managed apps.
            @exempted_app_protocols
            ## 
            # A list of custom urls that are allowed to invocate an unmanaged app
            @exempted_universal_links
            ## 
            # Indicates whether use of the FaceID is allowed in place of a pin if PinRequired is set to True.
            @face_id_blocked
            ## 
            # Defines if open-in operation is supported from the managed app to the filesharing locations selected. This setting only applies when AllowedOutboundDataTransferDestinations is set to ManagedApps and DisableProtectionOfManagedOutboundOpenInData is set to False.
            @filter_open_in_to_only_managed_apps
            ## 
            # A list of custom urls that are allowed to invocate a managed app
            @managed_universal_links
            ## 
            # Versions less than the specified version will block the managed app from accessing company data.
            @minimum_required_sdk_version
            ## 
            # Versions less than the specified version will result in warning message on the managed app from accessing company data.
            @minimum_warning_sdk_version
            ## 
            # Versions less than the specified version will block the managed app from accessing company data.
            @minimum_wipe_sdk_version
            ## 
            # Protect incoming data from unknown source. This setting is only allowed to be True when AllowedInboundDataTransferSources is set to AllApps.
            @protect_inbound_data_from_unknown_sources
            ## 
            # Defines if third party keyboards are allowed while accessing a managed app
            @third_party_keyboards_blocked
            ## 
            ## Gets the allowedIosDeviceModels property value. Semicolon seperated list of device models allowed, as a string, for the managed app to work.
            ## @return a string
            ## 
            def allowed_ios_device_models
                return @allowed_ios_device_models
            end
            ## 
            ## Sets the allowedIosDeviceModels property value. Semicolon seperated list of device models allowed, as a string, for the managed app to work.
            ## @param value Value to set for the allowedIosDeviceModels property.
            ## @return a void
            ## 
            def allowed_ios_device_models=(value)
                @allowed_ios_device_models = value
            end
            ## 
            ## Gets the appActionIfIosDeviceModelNotAllowed property value. An admin initiated action to be applied on a managed app.
            ## @return a managed_app_remediation_action
            ## 
            def app_action_if_ios_device_model_not_allowed
                return @app_action_if_ios_device_model_not_allowed
            end
            ## 
            ## Sets the appActionIfIosDeviceModelNotAllowed property value. An admin initiated action to be applied on a managed app.
            ## @param value Value to set for the appActionIfIosDeviceModelNotAllowed property.
            ## @return a void
            ## 
            def app_action_if_ios_device_model_not_allowed=(value)
                @app_action_if_ios_device_model_not_allowed = value
            end
            ## 
            ## Gets the appDataEncryptionType property value. Represents the level to which app data is encrypted for managed apps
            ## @return a managed_app_data_encryption_type
            ## 
            def app_data_encryption_type
                return @app_data_encryption_type
            end
            ## 
            ## Sets the appDataEncryptionType property value. Represents the level to which app data is encrypted for managed apps
            ## @param value Value to set for the appDataEncryptionType property.
            ## @return a void
            ## 
            def app_data_encryption_type=(value)
                @app_data_encryption_type = value
            end
            ## 
            ## Gets the apps property value. List of apps to which the policy is deployed.
            ## @return a managed_mobile_app
            ## 
            def apps
                return @apps
            end
            ## 
            ## Sets the apps property value. List of apps to which the policy is deployed.
            ## @param value Value to set for the apps property.
            ## @return a void
            ## 
            def apps=(value)
                @apps = value
            end
            ## 
            ## Instantiates a new iosManagedAppProtection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosManagedAppProtection"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ios_managed_app_protection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosManagedAppProtection.new
            end
            ## 
            ## Gets the customBrowserProtocol property value. A custom browser protocol to open weblink on iOS.
            ## @return a string
            ## 
            def custom_browser_protocol
                return @custom_browser_protocol
            end
            ## 
            ## Sets the customBrowserProtocol property value. A custom browser protocol to open weblink on iOS.
            ## @param value Value to set for the customBrowserProtocol property.
            ## @return a void
            ## 
            def custom_browser_protocol=(value)
                @custom_browser_protocol = value
            end
            ## 
            ## Gets the customDialerAppProtocol property value. Protocol of a custom dialer app to click-to-open a phone number on iOS, for example, skype:.
            ## @return a string
            ## 
            def custom_dialer_app_protocol
                return @custom_dialer_app_protocol
            end
            ## 
            ## Sets the customDialerAppProtocol property value. Protocol of a custom dialer app to click-to-open a phone number on iOS, for example, skype:.
            ## @param value Value to set for the customDialerAppProtocol property.
            ## @return a void
            ## 
            def custom_dialer_app_protocol=(value)
                @custom_dialer_app_protocol = value
            end
            ## 
            ## Gets the deployedAppCount property value. Count of apps to which the current policy is deployed.
            ## @return a integer
            ## 
            def deployed_app_count
                return @deployed_app_count
            end
            ## 
            ## Sets the deployedAppCount property value. Count of apps to which the current policy is deployed.
            ## @param value Value to set for the deployedAppCount property.
            ## @return a void
            ## 
            def deployed_app_count=(value)
                @deployed_app_count = value
            end
            ## 
            ## Gets the deploymentSummary property value. Navigation property to deployment summary of the configuration.
            ## @return a managed_app_policy_deployment_summary
            ## 
            def deployment_summary
                return @deployment_summary
            end
            ## 
            ## Sets the deploymentSummary property value. Navigation property to deployment summary of the configuration.
            ## @param value Value to set for the deploymentSummary property.
            ## @return a void
            ## 
            def deployment_summary=(value)
                @deployment_summary = value
            end
            ## 
            ## Gets the disableProtectionOfManagedOutboundOpenInData property value. Disable protection of data transferred to other apps through IOS OpenIn option. This setting is only allowed to be True when AllowedOutboundDataTransferDestinations is set to ManagedApps.
            ## @return a boolean
            ## 
            def disable_protection_of_managed_outbound_open_in_data
                return @disable_protection_of_managed_outbound_open_in_data
            end
            ## 
            ## Sets the disableProtectionOfManagedOutboundOpenInData property value. Disable protection of data transferred to other apps through IOS OpenIn option. This setting is only allowed to be True when AllowedOutboundDataTransferDestinations is set to ManagedApps.
            ## @param value Value to set for the disableProtectionOfManagedOutboundOpenInData property.
            ## @return a void
            ## 
            def disable_protection_of_managed_outbound_open_in_data=(value)
                @disable_protection_of_managed_outbound_open_in_data = value
            end
            ## 
            ## Gets the exemptedAppProtocols property value. Apps in this list will be exempt from the policy and will be able to receive data from managed apps.
            ## @return a key_value_pair
            ## 
            def exempted_app_protocols
                return @exempted_app_protocols
            end
            ## 
            ## Sets the exemptedAppProtocols property value. Apps in this list will be exempt from the policy and will be able to receive data from managed apps.
            ## @param value Value to set for the exemptedAppProtocols property.
            ## @return a void
            ## 
            def exempted_app_protocols=(value)
                @exempted_app_protocols = value
            end
            ## 
            ## Gets the exemptedUniversalLinks property value. A list of custom urls that are allowed to invocate an unmanaged app
            ## @return a string
            ## 
            def exempted_universal_links
                return @exempted_universal_links
            end
            ## 
            ## Sets the exemptedUniversalLinks property value. A list of custom urls that are allowed to invocate an unmanaged app
            ## @param value Value to set for the exemptedUniversalLinks property.
            ## @return a void
            ## 
            def exempted_universal_links=(value)
                @exempted_universal_links = value
            end
            ## 
            ## Gets the faceIdBlocked property value. Indicates whether use of the FaceID is allowed in place of a pin if PinRequired is set to True.
            ## @return a boolean
            ## 
            def face_id_blocked
                return @face_id_blocked
            end
            ## 
            ## Sets the faceIdBlocked property value. Indicates whether use of the FaceID is allowed in place of a pin if PinRequired is set to True.
            ## @param value Value to set for the faceIdBlocked property.
            ## @return a void
            ## 
            def face_id_blocked=(value)
                @face_id_blocked = value
            end
            ## 
            ## Gets the filterOpenInToOnlyManagedApps property value. Defines if open-in operation is supported from the managed app to the filesharing locations selected. This setting only applies when AllowedOutboundDataTransferDestinations is set to ManagedApps and DisableProtectionOfManagedOutboundOpenInData is set to False.
            ## @return a boolean
            ## 
            def filter_open_in_to_only_managed_apps
                return @filter_open_in_to_only_managed_apps
            end
            ## 
            ## Sets the filterOpenInToOnlyManagedApps property value. Defines if open-in operation is supported from the managed app to the filesharing locations selected. This setting only applies when AllowedOutboundDataTransferDestinations is set to ManagedApps and DisableProtectionOfManagedOutboundOpenInData is set to False.
            ## @param value Value to set for the filterOpenInToOnlyManagedApps property.
            ## @return a void
            ## 
            def filter_open_in_to_only_managed_apps=(value)
                @filter_open_in_to_only_managed_apps = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowedIosDeviceModels" => lambda {|n| @allowed_ios_device_models = n.get_string_value() },
                    "appActionIfIosDeviceModelNotAllowed" => lambda {|n| @app_action_if_ios_device_model_not_allowed = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appDataEncryptionType" => lambda {|n| @app_data_encryption_type = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppDataEncryptionType) },
                    "apps" => lambda {|n| @apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedMobileApp.create_from_discriminator_value(pn) }) },
                    "customBrowserProtocol" => lambda {|n| @custom_browser_protocol = n.get_string_value() },
                    "customDialerAppProtocol" => lambda {|n| @custom_dialer_app_protocol = n.get_string_value() },
                    "deployedAppCount" => lambda {|n| @deployed_app_count = n.get_number_value() },
                    "deploymentSummary" => lambda {|n| @deployment_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedAppPolicyDeploymentSummary.create_from_discriminator_value(pn) }) },
                    "disableProtectionOfManagedOutboundOpenInData" => lambda {|n| @disable_protection_of_managed_outbound_open_in_data = n.get_boolean_value() },
                    "exemptedAppProtocols" => lambda {|n| @exempted_app_protocols = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "exemptedUniversalLinks" => lambda {|n| @exempted_universal_links = n.get_collection_of_primitive_values(String) },
                    "faceIdBlocked" => lambda {|n| @face_id_blocked = n.get_boolean_value() },
                    "filterOpenInToOnlyManagedApps" => lambda {|n| @filter_open_in_to_only_managed_apps = n.get_boolean_value() },
                    "managedUniversalLinks" => lambda {|n| @managed_universal_links = n.get_collection_of_primitive_values(String) },
                    "minimumRequiredSdkVersion" => lambda {|n| @minimum_required_sdk_version = n.get_string_value() },
                    "minimumWarningSdkVersion" => lambda {|n| @minimum_warning_sdk_version = n.get_string_value() },
                    "minimumWipeSdkVersion" => lambda {|n| @minimum_wipe_sdk_version = n.get_string_value() },
                    "protectInboundDataFromUnknownSources" => lambda {|n| @protect_inbound_data_from_unknown_sources = n.get_boolean_value() },
                    "thirdPartyKeyboardsBlocked" => lambda {|n| @third_party_keyboards_blocked = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the managedUniversalLinks property value. A list of custom urls that are allowed to invocate a managed app
            ## @return a string
            ## 
            def managed_universal_links
                return @managed_universal_links
            end
            ## 
            ## Sets the managedUniversalLinks property value. A list of custom urls that are allowed to invocate a managed app
            ## @param value Value to set for the managedUniversalLinks property.
            ## @return a void
            ## 
            def managed_universal_links=(value)
                @managed_universal_links = value
            end
            ## 
            ## Gets the minimumRequiredSdkVersion property value. Versions less than the specified version will block the managed app from accessing company data.
            ## @return a string
            ## 
            def minimum_required_sdk_version
                return @minimum_required_sdk_version
            end
            ## 
            ## Sets the minimumRequiredSdkVersion property value. Versions less than the specified version will block the managed app from accessing company data.
            ## @param value Value to set for the minimumRequiredSdkVersion property.
            ## @return a void
            ## 
            def minimum_required_sdk_version=(value)
                @minimum_required_sdk_version = value
            end
            ## 
            ## Gets the minimumWarningSdkVersion property value. Versions less than the specified version will result in warning message on the managed app from accessing company data.
            ## @return a string
            ## 
            def minimum_warning_sdk_version
                return @minimum_warning_sdk_version
            end
            ## 
            ## Sets the minimumWarningSdkVersion property value. Versions less than the specified version will result in warning message on the managed app from accessing company data.
            ## @param value Value to set for the minimumWarningSdkVersion property.
            ## @return a void
            ## 
            def minimum_warning_sdk_version=(value)
                @minimum_warning_sdk_version = value
            end
            ## 
            ## Gets the minimumWipeSdkVersion property value. Versions less than the specified version will block the managed app from accessing company data.
            ## @return a string
            ## 
            def minimum_wipe_sdk_version
                return @minimum_wipe_sdk_version
            end
            ## 
            ## Sets the minimumWipeSdkVersion property value. Versions less than the specified version will block the managed app from accessing company data.
            ## @param value Value to set for the minimumWipeSdkVersion property.
            ## @return a void
            ## 
            def minimum_wipe_sdk_version=(value)
                @minimum_wipe_sdk_version = value
            end
            ## 
            ## Gets the protectInboundDataFromUnknownSources property value. Protect incoming data from unknown source. This setting is only allowed to be True when AllowedInboundDataTransferSources is set to AllApps.
            ## @return a boolean
            ## 
            def protect_inbound_data_from_unknown_sources
                return @protect_inbound_data_from_unknown_sources
            end
            ## 
            ## Sets the protectInboundDataFromUnknownSources property value. Protect incoming data from unknown source. This setting is only allowed to be True when AllowedInboundDataTransferSources is set to AllApps.
            ## @param value Value to set for the protectInboundDataFromUnknownSources property.
            ## @return a void
            ## 
            def protect_inbound_data_from_unknown_sources=(value)
                @protect_inbound_data_from_unknown_sources = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("allowedIosDeviceModels", @allowed_ios_device_models)
                writer.write_enum_value("appActionIfIosDeviceModelNotAllowed", @app_action_if_ios_device_model_not_allowed)
                writer.write_enum_value("appDataEncryptionType", @app_data_encryption_type)
                writer.write_collection_of_object_values("apps", @apps)
                writer.write_string_value("customBrowserProtocol", @custom_browser_protocol)
                writer.write_string_value("customDialerAppProtocol", @custom_dialer_app_protocol)
                writer.write_number_value("deployedAppCount", @deployed_app_count)
                writer.write_object_value("deploymentSummary", @deployment_summary)
                writer.write_boolean_value("disableProtectionOfManagedOutboundOpenInData", @disable_protection_of_managed_outbound_open_in_data)
                writer.write_collection_of_object_values("exemptedAppProtocols", @exempted_app_protocols)
                writer.write_collection_of_primitive_values("exemptedUniversalLinks", @exempted_universal_links)
                writer.write_boolean_value("faceIdBlocked", @face_id_blocked)
                writer.write_boolean_value("filterOpenInToOnlyManagedApps", @filter_open_in_to_only_managed_apps)
                writer.write_collection_of_primitive_values("managedUniversalLinks", @managed_universal_links)
                writer.write_string_value("minimumRequiredSdkVersion", @minimum_required_sdk_version)
                writer.write_string_value("minimumWarningSdkVersion", @minimum_warning_sdk_version)
                writer.write_string_value("minimumWipeSdkVersion", @minimum_wipe_sdk_version)
                writer.write_boolean_value("protectInboundDataFromUnknownSources", @protect_inbound_data_from_unknown_sources)
                writer.write_boolean_value("thirdPartyKeyboardsBlocked", @third_party_keyboards_blocked)
            end
            ## 
            ## Gets the thirdPartyKeyboardsBlocked property value. Defines if third party keyboards are allowed while accessing a managed app
            ## @return a boolean
            ## 
            def third_party_keyboards_blocked
                return @third_party_keyboards_blocked
            end
            ## 
            ## Sets the thirdPartyKeyboardsBlocked property value. Defines if third party keyboards are allowed while accessing a managed app
            ## @param value Value to set for the thirdPartyKeyboardsBlocked property.
            ## @return a void
            ## 
            def third_party_keyboards_blocked=(value)
                @third_party_keyboards_blocked = value
            end
        end
    end
end
