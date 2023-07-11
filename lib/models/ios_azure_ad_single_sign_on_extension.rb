require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents an Azure AD-type Single Sign-On extension profile for iOS devices.
        class IosAzureAdSingleSignOnExtension < MicrosoftGraphBeta::Models::IosSingleSignOnExtension
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # An optional list of additional bundle IDs allowed to use the AAD extension for single sign-on.
            @bundle_id_access_control_list
            ## 
            # Gets or sets a list of typed key-value pairs used to configure Credential-type profiles. This collection can contain a maximum of 500 elements.
            @configurations
            ## 
            # Enables or disables shared device mode.
            @enable_shared_device_mode
            ## 
            ## Gets the bundleIdAccessControlList property value. An optional list of additional bundle IDs allowed to use the AAD extension for single sign-on.
            ## @return a string
            ## 
            def bundle_id_access_control_list
                return @bundle_id_access_control_list
            end
            ## 
            ## Sets the bundleIdAccessControlList property value. An optional list of additional bundle IDs allowed to use the AAD extension for single sign-on.
            ## @param value Value to set for the bundle_id_access_control_list property.
            ## @return a void
            ## 
            def bundle_id_access_control_list=(value)
                @bundle_id_access_control_list = value
            end
            ## 
            ## Gets the configurations property value. Gets or sets a list of typed key-value pairs used to configure Credential-type profiles. This collection can contain a maximum of 500 elements.
            ## @return a key_typed_value_pair
            ## 
            def configurations
                return @configurations
            end
            ## 
            ## Sets the configurations property value. Gets or sets a list of typed key-value pairs used to configure Credential-type profiles. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the configurations property.
            ## @return a void
            ## 
            def configurations=(value)
                @configurations = value
            end
            ## 
            ## Instantiates a new iosAzureAdSingleSignOnExtension and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosAzureAdSingleSignOnExtension"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ios_azure_ad_single_sign_on_extension
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosAzureAdSingleSignOnExtension.new
            end
            ## 
            ## Gets the enableSharedDeviceMode property value. Enables or disables shared device mode.
            ## @return a boolean
            ## 
            def enable_shared_device_mode
                return @enable_shared_device_mode
            end
            ## 
            ## Sets the enableSharedDeviceMode property value. Enables or disables shared device mode.
            ## @param value Value to set for the enable_shared_device_mode property.
            ## @return a void
            ## 
            def enable_shared_device_mode=(value)
                @enable_shared_device_mode = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "bundleIdAccessControlList" => lambda {|n| @bundle_id_access_control_list = n.get_collection_of_primitive_values(String) },
                    "configurations" => lambda {|n| @configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyTypedValuePair.create_from_discriminator_value(pn) }) },
                    "enableSharedDeviceMode" => lambda {|n| @enable_shared_device_mode = n.get_boolean_value() },
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
                writer.write_collection_of_primitive_values("bundleIdAccessControlList", @bundle_id_access_control_list)
                writer.write_collection_of_object_values("configurations", @configurations)
                writer.write_boolean_value("enableSharedDeviceMode", @enable_shared_device_mode)
            end
        end
    end
end
