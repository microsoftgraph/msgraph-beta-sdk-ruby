require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExternalAuthenticationMethodConfiguration < MicrosoftGraphBeta::Models::AuthenticationMethodConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # appId for the app registration in Microsoft Entra ID representing the integration with the external provider.
            @app_id
            ## 
            # Display name for the external authentication method. This name is shown to users during sign-in.
            @display_name
            ## 
            # A collection of groups that are enabled to use an authentication method as part of an authentication method policy in Microsoft Entra ID.
            @include_targets
            ## 
            # The openIdConnectSetting property
            @open_id_connect_setting
            ## 
            ## Gets the appId property value. appId for the app registration in Microsoft Entra ID representing the integration with the external provider.
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. appId for the app registration in Microsoft Entra ID representing the integration with the external provider.
            ## @param value Value to set for the appId property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Instantiates a new ExternalAuthenticationMethodConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.externalAuthenticationMethodConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a external_authentication_method_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExternalAuthenticationMethodConfiguration.new
            end
            ## 
            ## Gets the displayName property value. Display name for the external authentication method. This name is shown to users during sign-in.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name for the external authentication method. This name is shown to users during sign-in.
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
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "includeTargets" => lambda {|n| @include_targets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationMethodTarget.create_from_discriminator_value(pn) }) },
                    "openIdConnectSetting" => lambda {|n| @open_id_connect_setting = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OpenIdConnectSetting.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the includeTargets property value. A collection of groups that are enabled to use an authentication method as part of an authentication method policy in Microsoft Entra ID.
            ## @return a authentication_method_target
            ## 
            def include_targets
                return @include_targets
            end
            ## 
            ## Sets the includeTargets property value. A collection of groups that are enabled to use an authentication method as part of an authentication method policy in Microsoft Entra ID.
            ## @param value Value to set for the includeTargets property.
            ## @return a void
            ## 
            def include_targets=(value)
                @include_targets = value
            end
            ## 
            ## Gets the openIdConnectSetting property value. The openIdConnectSetting property
            ## @return a open_id_connect_setting
            ## 
            def open_id_connect_setting
                return @open_id_connect_setting
            end
            ## 
            ## Sets the openIdConnectSetting property value. The openIdConnectSetting property
            ## @param value Value to set for the openIdConnectSetting property.
            ## @return a void
            ## 
            def open_id_connect_setting=(value)
                @open_id_connect_setting = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appId", @app_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("includeTargets", @include_targets)
                writer.write_object_value("openIdConnectSetting", @open_id_connect_setting)
            end
        end
    end
end
