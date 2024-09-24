require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties, inherited properties and actions for Android Enterprise mobile app configurations.
        class AndroidManagedStoreAppConfiguration < MicrosoftGraphBeta::Models::ManagedDeviceMobileAppConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Whether or not this AppConfig is an OEMConfig policy. This property is read-only.
            @app_supports_oem_config
            ## 
            # Setting to specify whether to allow ConnectedApps experience for this app.
            @connected_apps_enabled
            ## 
            # Android Enterprise app configuration package id.
            @package_id
            ## 
            # Android Enterprise app configuration JSON payload.
            @payload_json
            ## 
            # List of Android app permissions and corresponding permission actions.
            @permission_actions
            ## 
            # Android profile applicability
            @profile_applicability
            ## 
            ## Gets the appSupportsOemConfig property value. Whether or not this AppConfig is an OEMConfig policy. This property is read-only.
            ## @return a boolean
            ## 
            def app_supports_oem_config
                return @app_supports_oem_config
            end
            ## 
            ## Sets the appSupportsOemConfig property value. Whether or not this AppConfig is an OEMConfig policy. This property is read-only.
            ## @param value Value to set for the appSupportsOemConfig property.
            ## @return a void
            ## 
            def app_supports_oem_config=(value)
                @app_supports_oem_config = value
            end
            ## 
            ## Gets the connectedAppsEnabled property value. Setting to specify whether to allow ConnectedApps experience for this app.
            ## @return a boolean
            ## 
            def connected_apps_enabled
                return @connected_apps_enabled
            end
            ## 
            ## Sets the connectedAppsEnabled property value. Setting to specify whether to allow ConnectedApps experience for this app.
            ## @param value Value to set for the connectedAppsEnabled property.
            ## @return a void
            ## 
            def connected_apps_enabled=(value)
                @connected_apps_enabled = value
            end
            ## 
            ## Instantiates a new AndroidManagedStoreAppConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidManagedStoreAppConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_managed_store_app_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidManagedStoreAppConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appSupportsOemConfig" => lambda {|n| @app_supports_oem_config = n.get_boolean_value() },
                    "connectedAppsEnabled" => lambda {|n| @connected_apps_enabled = n.get_boolean_value() },
                    "packageId" => lambda {|n| @package_id = n.get_string_value() },
                    "payloadJson" => lambda {|n| @payload_json = n.get_string_value() },
                    "permissionActions" => lambda {|n| @permission_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidPermissionAction.create_from_discriminator_value(pn) }) },
                    "profileApplicability" => lambda {|n| @profile_applicability = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidProfileApplicability) },
                })
            end
            ## 
            ## Gets the packageId property value. Android Enterprise app configuration package id.
            ## @return a string
            ## 
            def package_id
                return @package_id
            end
            ## 
            ## Sets the packageId property value. Android Enterprise app configuration package id.
            ## @param value Value to set for the packageId property.
            ## @return a void
            ## 
            def package_id=(value)
                @package_id = value
            end
            ## 
            ## Gets the payloadJson property value. Android Enterprise app configuration JSON payload.
            ## @return a string
            ## 
            def payload_json
                return @payload_json
            end
            ## 
            ## Sets the payloadJson property value. Android Enterprise app configuration JSON payload.
            ## @param value Value to set for the payloadJson property.
            ## @return a void
            ## 
            def payload_json=(value)
                @payload_json = value
            end
            ## 
            ## Gets the permissionActions property value. List of Android app permissions and corresponding permission actions.
            ## @return a android_permission_action
            ## 
            def permission_actions
                return @permission_actions
            end
            ## 
            ## Sets the permissionActions property value. List of Android app permissions and corresponding permission actions.
            ## @param value Value to set for the permissionActions property.
            ## @return a void
            ## 
            def permission_actions=(value)
                @permission_actions = value
            end
            ## 
            ## Gets the profileApplicability property value. Android profile applicability
            ## @return a android_profile_applicability
            ## 
            def profile_applicability
                return @profile_applicability
            end
            ## 
            ## Sets the profileApplicability property value. Android profile applicability
            ## @param value Value to set for the profileApplicability property.
            ## @return a void
            ## 
            def profile_applicability=(value)
                @profile_applicability = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("connectedAppsEnabled", @connected_apps_enabled)
                writer.write_string_value("packageId", @package_id)
                writer.write_string_value("payloadJson", @payload_json)
                writer.write_collection_of_object_values("permissionActions", @permission_actions)
                writer.write_enum_value("profileApplicability", @profile_applicability)
            end
        end
    end
end
