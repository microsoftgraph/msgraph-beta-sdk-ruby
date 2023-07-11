require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IdentityContainer
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Represents entry point for API connectors.
            @api_connectors
            ## 
            # The authenticationEventListeners property
            @authentication_event_listeners
            ## 
            # Represents the entry point for self-service sign up and sign in user flows in both Azure AD workforce and customer tenants.
            @authentication_events_flows
            ## 
            # Represents entry point for B2C identity userflows.
            @b2c_user_flows
            ## 
            # Represents entry point for B2X and self-service sign-up identity userflows.
            @b2x_user_flows
            ## 
            # the entry point for the Conditional Access (CA) object model.
            @conditional_access
            ## 
            # Represents entry point for continuous access evaluation policy.
            @continuous_access_evaluation_policy
            ## 
            # The customAuthenticationExtensions property
            @custom_authentication_extensions
            ## 
            # Represents entry point for identity provider base.
            @identity_providers
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Represents entry point for identity userflow attributes.
            @user_flow_attributes
            ## 
            # The userFlows property
            @user_flows
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the apiConnectors property value. Represents entry point for API connectors.
            ## @return a identity_api_connector
            ## 
            def api_connectors
                return @api_connectors
            end
            ## 
            ## Sets the apiConnectors property value. Represents entry point for API connectors.
            ## @param value Value to set for the api_connectors property.
            ## @return a void
            ## 
            def api_connectors=(value)
                @api_connectors = value
            end
            ## 
            ## Gets the authenticationEventListeners property value. The authenticationEventListeners property
            ## @return a authentication_event_listener
            ## 
            def authentication_event_listeners
                return @authentication_event_listeners
            end
            ## 
            ## Sets the authenticationEventListeners property value. The authenticationEventListeners property
            ## @param value Value to set for the authentication_event_listeners property.
            ## @return a void
            ## 
            def authentication_event_listeners=(value)
                @authentication_event_listeners = value
            end
            ## 
            ## Gets the authenticationEventsFlows property value. Represents the entry point for self-service sign up and sign in user flows in both Azure AD workforce and customer tenants.
            ## @return a authentication_events_flow
            ## 
            def authentication_events_flows
                return @authentication_events_flows
            end
            ## 
            ## Sets the authenticationEventsFlows property value. Represents the entry point for self-service sign up and sign in user flows in both Azure AD workforce and customer tenants.
            ## @param value Value to set for the authentication_events_flows property.
            ## @return a void
            ## 
            def authentication_events_flows=(value)
                @authentication_events_flows = value
            end
            ## 
            ## Gets the b2cUserFlows property value. Represents entry point for B2C identity userflows.
            ## @return a b2c_identity_user_flow
            ## 
            def b2c_user_flows
                return @b2c_user_flows
            end
            ## 
            ## Sets the b2cUserFlows property value. Represents entry point for B2C identity userflows.
            ## @param value Value to set for the b2c_user_flows property.
            ## @return a void
            ## 
            def b2c_user_flows=(value)
                @b2c_user_flows = value
            end
            ## 
            ## Gets the b2xUserFlows property value. Represents entry point for B2X and self-service sign-up identity userflows.
            ## @return a b2x_identity_user_flow
            ## 
            def b2x_user_flows
                return @b2x_user_flows
            end
            ## 
            ## Sets the b2xUserFlows property value. Represents entry point for B2X and self-service sign-up identity userflows.
            ## @param value Value to set for the b2x_user_flows property.
            ## @return a void
            ## 
            def b2x_user_flows=(value)
                @b2x_user_flows = value
            end
            ## 
            ## Gets the conditionalAccess property value. the entry point for the Conditional Access (CA) object model.
            ## @return a conditional_access_root
            ## 
            def conditional_access
                return @conditional_access
            end
            ## 
            ## Sets the conditionalAccess property value. the entry point for the Conditional Access (CA) object model.
            ## @param value Value to set for the conditional_access property.
            ## @return a void
            ## 
            def conditional_access=(value)
                @conditional_access = value
            end
            ## 
            ## Instantiates a new identityContainer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the continuousAccessEvaluationPolicy property value. Represents entry point for continuous access evaluation policy.
            ## @return a continuous_access_evaluation_policy
            ## 
            def continuous_access_evaluation_policy
                return @continuous_access_evaluation_policy
            end
            ## 
            ## Sets the continuousAccessEvaluationPolicy property value. Represents entry point for continuous access evaluation policy.
            ## @param value Value to set for the continuous_access_evaluation_policy property.
            ## @return a void
            ## 
            def continuous_access_evaluation_policy=(value)
                @continuous_access_evaluation_policy = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_container
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityContainer.new
            end
            ## 
            ## Gets the customAuthenticationExtensions property value. The customAuthenticationExtensions property
            ## @return a custom_authentication_extension
            ## 
            def custom_authentication_extensions
                return @custom_authentication_extensions
            end
            ## 
            ## Sets the customAuthenticationExtensions property value. The customAuthenticationExtensions property
            ## @param value Value to set for the custom_authentication_extensions property.
            ## @return a void
            ## 
            def custom_authentication_extensions=(value)
                @custom_authentication_extensions = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "apiConnectors" => lambda {|n| @api_connectors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IdentityApiConnector.create_from_discriminator_value(pn) }) },
                    "authenticationEventListeners" => lambda {|n| @authentication_event_listeners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationEventListener.create_from_discriminator_value(pn) }) },
                    "authenticationEventsFlows" => lambda {|n| @authentication_events_flows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationEventsFlow.create_from_discriminator_value(pn) }) },
                    "b2cUserFlows" => lambda {|n| @b2c_user_flows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::B2cIdentityUserFlow.create_from_discriminator_value(pn) }) },
                    "b2xUserFlows" => lambda {|n| @b2x_user_flows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::B2xIdentityUserFlow.create_from_discriminator_value(pn) }) },
                    "conditionalAccess" => lambda {|n| @conditional_access = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ConditionalAccessRoot.create_from_discriminator_value(pn) }) },
                    "continuousAccessEvaluationPolicy" => lambda {|n| @continuous_access_evaluation_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ContinuousAccessEvaluationPolicy.create_from_discriminator_value(pn) }) },
                    "customAuthenticationExtensions" => lambda {|n| @custom_authentication_extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomAuthenticationExtension.create_from_discriminator_value(pn) }) },
                    "identityProviders" => lambda {|n| @identity_providers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IdentityProviderBase.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "userFlowAttributes" => lambda {|n| @user_flow_attributes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IdentityUserFlowAttribute.create_from_discriminator_value(pn) }) },
                    "userFlows" => lambda {|n| @user_flows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IdentityUserFlow.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the identityProviders property value. Represents entry point for identity provider base.
            ## @return a identity_provider_base
            ## 
            def identity_providers
                return @identity_providers
            end
            ## 
            ## Sets the identityProviders property value. Represents entry point for identity provider base.
            ## @param value Value to set for the identity_providers property.
            ## @return a void
            ## 
            def identity_providers=(value)
                @identity_providers = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("apiConnectors", @api_connectors)
                writer.write_collection_of_object_values("authenticationEventListeners", @authentication_event_listeners)
                writer.write_collection_of_object_values("authenticationEventsFlows", @authentication_events_flows)
                writer.write_collection_of_object_values("b2cUserFlows", @b2c_user_flows)
                writer.write_collection_of_object_values("b2xUserFlows", @b2x_user_flows)
                writer.write_object_value("conditionalAccess", @conditional_access)
                writer.write_object_value("continuousAccessEvaluationPolicy", @continuous_access_evaluation_policy)
                writer.write_collection_of_object_values("customAuthenticationExtensions", @custom_authentication_extensions)
                writer.write_collection_of_object_values("identityProviders", @identity_providers)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("userFlowAttributes", @user_flow_attributes)
                writer.write_collection_of_object_values("userFlows", @user_flows)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userFlowAttributes property value. Represents entry point for identity userflow attributes.
            ## @return a identity_user_flow_attribute
            ## 
            def user_flow_attributes
                return @user_flow_attributes
            end
            ## 
            ## Sets the userFlowAttributes property value. Represents entry point for identity userflow attributes.
            ## @param value Value to set for the user_flow_attributes property.
            ## @return a void
            ## 
            def user_flow_attributes=(value)
                @user_flow_attributes = value
            end
            ## 
            ## Gets the userFlows property value. The userFlows property
            ## @return a identity_user_flow
            ## 
            def user_flows
                return @user_flows
            end
            ## 
            ## Sets the userFlows property value. The userFlows property
            ## @param value Value to set for the user_flows property.
            ## @return a void
            ## 
            def user_flows=(value)
                @user_flows = value
            end
        end
    end
end
