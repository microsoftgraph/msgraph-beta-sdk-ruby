require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class B2cIdentityUserFlow < MicrosoftGraphBeta::Models::IdentityUserFlow
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Configuration for enabling an API connector for use as part of the user flow. You can only obtain the value of this object using Get userFlowApiConnectorConfiguration.
            @api_connector_configuration
            ## 
            # Indicates the default language of the b2cIdentityUserFlow that is used when no ui_locale tag is specified in the request. This field is RFC 5646 compliant.
            @default_language_tag
            ## 
            # The identityProviders property
            @identity_providers
            ## 
            # The property that determines whether language customization is enabled within the B2C user flow. Language customization is not enabled by default for B2C user flows.
            @is_language_customization_enabled
            ## 
            # The languages supported for customization within the user flow. Language customization is not enabled by default in B2C user flows.
            @languages
            ## 
            # The user attribute assignments included in the user flow.
            @user_attribute_assignments
            ## 
            # The userFlowIdentityProviders property
            @user_flow_identity_providers
            ## 
            ## Gets the apiConnectorConfiguration property value. Configuration for enabling an API connector for use as part of the user flow. You can only obtain the value of this object using Get userFlowApiConnectorConfiguration.
            ## @return a user_flow_api_connector_configuration
            ## 
            def api_connector_configuration
                return @api_connector_configuration
            end
            ## 
            ## Sets the apiConnectorConfiguration property value. Configuration for enabling an API connector for use as part of the user flow. You can only obtain the value of this object using Get userFlowApiConnectorConfiguration.
            ## @param value Value to set for the apiConnectorConfiguration property.
            ## @return a void
            ## 
            def api_connector_configuration=(value)
                @api_connector_configuration = value
            end
            ## 
            ## Instantiates a new B2cIdentityUserFlow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a b2c_identity_user_flow
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return B2cIdentityUserFlow.new
            end
            ## 
            ## Gets the defaultLanguageTag property value. Indicates the default language of the b2cIdentityUserFlow that is used when no ui_locale tag is specified in the request. This field is RFC 5646 compliant.
            ## @return a string
            ## 
            def default_language_tag
                return @default_language_tag
            end
            ## 
            ## Sets the defaultLanguageTag property value. Indicates the default language of the b2cIdentityUserFlow that is used when no ui_locale tag is specified in the request. This field is RFC 5646 compliant.
            ## @param value Value to set for the defaultLanguageTag property.
            ## @return a void
            ## 
            def default_language_tag=(value)
                @default_language_tag = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "apiConnectorConfiguration" => lambda {|n| @api_connector_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserFlowApiConnectorConfiguration.create_from_discriminator_value(pn) }) },
                    "defaultLanguageTag" => lambda {|n| @default_language_tag = n.get_string_value() },
                    "identityProviders" => lambda {|n| @identity_providers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IdentityProvider.create_from_discriminator_value(pn) }) },
                    "isLanguageCustomizationEnabled" => lambda {|n| @is_language_customization_enabled = n.get_boolean_value() },
                    "languages" => lambda {|n| @languages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserFlowLanguageConfiguration.create_from_discriminator_value(pn) }) },
                    "userAttributeAssignments" => lambda {|n| @user_attribute_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IdentityUserFlowAttributeAssignment.create_from_discriminator_value(pn) }) },
                    "userFlowIdentityProviders" => lambda {|n| @user_flow_identity_providers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IdentityProviderBase.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the identityProviders property value. The identityProviders property
            ## @return a identity_provider
            ## 
            def identity_providers
                return @identity_providers
            end
            ## 
            ## Sets the identityProviders property value. The identityProviders property
            ## @param value Value to set for the identityProviders property.
            ## @return a void
            ## 
            def identity_providers=(value)
                @identity_providers = value
            end
            ## 
            ## Gets the isLanguageCustomizationEnabled property value. The property that determines whether language customization is enabled within the B2C user flow. Language customization is not enabled by default for B2C user flows.
            ## @return a boolean
            ## 
            def is_language_customization_enabled
                return @is_language_customization_enabled
            end
            ## 
            ## Sets the isLanguageCustomizationEnabled property value. The property that determines whether language customization is enabled within the B2C user flow. Language customization is not enabled by default for B2C user flows.
            ## @param value Value to set for the isLanguageCustomizationEnabled property.
            ## @return a void
            ## 
            def is_language_customization_enabled=(value)
                @is_language_customization_enabled = value
            end
            ## 
            ## Gets the languages property value. The languages supported for customization within the user flow. Language customization is not enabled by default in B2C user flows.
            ## @return a user_flow_language_configuration
            ## 
            def languages
                return @languages
            end
            ## 
            ## Sets the languages property value. The languages supported for customization within the user flow. Language customization is not enabled by default in B2C user flows.
            ## @param value Value to set for the languages property.
            ## @return a void
            ## 
            def languages=(value)
                @languages = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("apiConnectorConfiguration", @api_connector_configuration)
                writer.write_string_value("defaultLanguageTag", @default_language_tag)
                writer.write_collection_of_object_values("identityProviders", @identity_providers)
                writer.write_boolean_value("isLanguageCustomizationEnabled", @is_language_customization_enabled)
                writer.write_collection_of_object_values("languages", @languages)
                writer.write_collection_of_object_values("userAttributeAssignments", @user_attribute_assignments)
                writer.write_collection_of_object_values("userFlowIdentityProviders", @user_flow_identity_providers)
            end
            ## 
            ## Gets the userAttributeAssignments property value. The user attribute assignments included in the user flow.
            ## @return a identity_user_flow_attribute_assignment
            ## 
            def user_attribute_assignments
                return @user_attribute_assignments
            end
            ## 
            ## Sets the userAttributeAssignments property value. The user attribute assignments included in the user flow.
            ## @param value Value to set for the userAttributeAssignments property.
            ## @return a void
            ## 
            def user_attribute_assignments=(value)
                @user_attribute_assignments = value
            end
            ## 
            ## Gets the userFlowIdentityProviders property value. The userFlowIdentityProviders property
            ## @return a identity_provider_base
            ## 
            def user_flow_identity_providers
                return @user_flow_identity_providers
            end
            ## 
            ## Sets the userFlowIdentityProviders property value. The userFlowIdentityProviders property
            ## @param value Value to set for the userFlowIdentityProviders property.
            ## @return a void
            ## 
            def user_flow_identity_providers=(value)
                @user_flow_identity_providers = value
            end
        end
    end
end
