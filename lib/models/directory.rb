require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Directory < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Conceptual container for user and group directory objects.
            @administrative_units
            ## 
            # Group of related custom security attribute definitions.
            @attribute_sets
            ## 
            # The certificateAuthorities property
            @certificate_authorities
            ## 
            # Schema of a custom security attributes (key-value pairs).
            @custom_security_attribute_definitions
            ## 
            # The deletedItems property
            @deleted_items
            ## 
            # The credentials of the device's local administrator account backed up to Microsoft Entra ID.
            @device_local_credentials
            ## 
            # The featureRolloutPolicies property
            @feature_rollout_policies
            ## 
            # Configure domain federation with organizations whose identity provider (IdP) supports either the SAML or WS-Fed protocol.
            @federation_configurations
            ## 
            # The impactedResources property
            @impacted_resources
            ## 
            # A collection of external Azure AD users whose profile data has been shared with the Azure AD tenant. Nullable.
            @inbound_shared_user_profiles
            ## 
            # A container for on-premises directory synchronization functionalities that are available for the organization.
            @on_premises_synchronization
            ## 
            # The outboundSharedUserProfiles property
            @outbound_shared_user_profiles
            ## 
            # List of recommended improvements to improve tenant posture.
            @recommendations
            ## 
            # The sharedEmailDomains property
            @shared_email_domains
            ## 
            # List of commercial subscriptions that an organization has acquired.
            @subscriptions
            ## 
            ## Gets the administrativeUnits property value. Conceptual container for user and group directory objects.
            ## @return a administrative_unit
            ## 
            def administrative_units
                return @administrative_units
            end
            ## 
            ## Sets the administrativeUnits property value. Conceptual container for user and group directory objects.
            ## @param value Value to set for the administrativeUnits property.
            ## @return a void
            ## 
            def administrative_units=(value)
                @administrative_units = value
            end
            ## 
            ## Gets the attributeSets property value. Group of related custom security attribute definitions.
            ## @return a attribute_set
            ## 
            def attribute_sets
                return @attribute_sets
            end
            ## 
            ## Sets the attributeSets property value. Group of related custom security attribute definitions.
            ## @param value Value to set for the attributeSets property.
            ## @return a void
            ## 
            def attribute_sets=(value)
                @attribute_sets = value
            end
            ## 
            ## Gets the certificateAuthorities property value. The certificateAuthorities property
            ## @return a certificate_authority_path
            ## 
            def certificate_authorities
                return @certificate_authorities
            end
            ## 
            ## Sets the certificateAuthorities property value. The certificateAuthorities property
            ## @param value Value to set for the certificateAuthorities property.
            ## @return a void
            ## 
            def certificate_authorities=(value)
                @certificate_authorities = value
            end
            ## 
            ## Instantiates a new Directory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a directory
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Directory.new
            end
            ## 
            ## Gets the customSecurityAttributeDefinitions property value. Schema of a custom security attributes (key-value pairs).
            ## @return a custom_security_attribute_definition
            ## 
            def custom_security_attribute_definitions
                return @custom_security_attribute_definitions
            end
            ## 
            ## Sets the customSecurityAttributeDefinitions property value. Schema of a custom security attributes (key-value pairs).
            ## @param value Value to set for the customSecurityAttributeDefinitions property.
            ## @return a void
            ## 
            def custom_security_attribute_definitions=(value)
                @custom_security_attribute_definitions = value
            end
            ## 
            ## Gets the deletedItems property value. The deletedItems property
            ## @return a directory_object
            ## 
            def deleted_items
                return @deleted_items
            end
            ## 
            ## Sets the deletedItems property value. The deletedItems property
            ## @param value Value to set for the deletedItems property.
            ## @return a void
            ## 
            def deleted_items=(value)
                @deleted_items = value
            end
            ## 
            ## Gets the deviceLocalCredentials property value. The credentials of the device's local administrator account backed up to Microsoft Entra ID.
            ## @return a device_local_credential_info
            ## 
            def device_local_credentials
                return @device_local_credentials
            end
            ## 
            ## Sets the deviceLocalCredentials property value. The credentials of the device's local administrator account backed up to Microsoft Entra ID.
            ## @param value Value to set for the deviceLocalCredentials property.
            ## @return a void
            ## 
            def device_local_credentials=(value)
                @device_local_credentials = value
            end
            ## 
            ## Gets the featureRolloutPolicies property value. The featureRolloutPolicies property
            ## @return a feature_rollout_policy
            ## 
            def feature_rollout_policies
                return @feature_rollout_policies
            end
            ## 
            ## Sets the featureRolloutPolicies property value. The featureRolloutPolicies property
            ## @param value Value to set for the featureRolloutPolicies property.
            ## @return a void
            ## 
            def feature_rollout_policies=(value)
                @feature_rollout_policies = value
            end
            ## 
            ## Gets the federationConfigurations property value. Configure domain federation with organizations whose identity provider (IdP) supports either the SAML or WS-Fed protocol.
            ## @return a identity_provider_base
            ## 
            def federation_configurations
                return @federation_configurations
            end
            ## 
            ## Sets the federationConfigurations property value. Configure domain federation with organizations whose identity provider (IdP) supports either the SAML or WS-Fed protocol.
            ## @param value Value to set for the federationConfigurations property.
            ## @return a void
            ## 
            def federation_configurations=(value)
                @federation_configurations = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "administrativeUnits" => lambda {|n| @administrative_units = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AdministrativeUnit.create_from_discriminator_value(pn) }) },
                    "attributeSets" => lambda {|n| @attribute_sets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AttributeSet.create_from_discriminator_value(pn) }) },
                    "certificateAuthorities" => lambda {|n| @certificate_authorities = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CertificateAuthorityPath.create_from_discriminator_value(pn) }) },
                    "customSecurityAttributeDefinitions" => lambda {|n| @custom_security_attribute_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CustomSecurityAttributeDefinition.create_from_discriminator_value(pn) }) },
                    "deletedItems" => lambda {|n| @deleted_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "deviceLocalCredentials" => lambda {|n| @device_local_credentials = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceLocalCredentialInfo.create_from_discriminator_value(pn) }) },
                    "featureRolloutPolicies" => lambda {|n| @feature_rollout_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::FeatureRolloutPolicy.create_from_discriminator_value(pn) }) },
                    "federationConfigurations" => lambda {|n| @federation_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IdentityProviderBase.create_from_discriminator_value(pn) }) },
                    "impactedResources" => lambda {|n| @impacted_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ImpactedResource.create_from_discriminator_value(pn) }) },
                    "inboundSharedUserProfiles" => lambda {|n| @inbound_shared_user_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::InboundSharedUserProfile.create_from_discriminator_value(pn) }) },
                    "onPremisesSynchronization" => lambda {|n| @on_premises_synchronization = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesDirectorySynchronization.create_from_discriminator_value(pn) }) },
                    "outboundSharedUserProfiles" => lambda {|n| @outbound_shared_user_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OutboundSharedUserProfile.create_from_discriminator_value(pn) }) },
                    "recommendations" => lambda {|n| @recommendations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Recommendation.create_from_discriminator_value(pn) }) },
                    "sharedEmailDomains" => lambda {|n| @shared_email_domains = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SharedEmailDomain.create_from_discriminator_value(pn) }) },
                    "subscriptions" => lambda {|n| @subscriptions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CompanySubscription.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the impactedResources property value. The impactedResources property
            ## @return a impacted_resource
            ## 
            def impacted_resources
                return @impacted_resources
            end
            ## 
            ## Sets the impactedResources property value. The impactedResources property
            ## @param value Value to set for the impactedResources property.
            ## @return a void
            ## 
            def impacted_resources=(value)
                @impacted_resources = value
            end
            ## 
            ## Gets the inboundSharedUserProfiles property value. A collection of external Azure AD users whose profile data has been shared with the Azure AD tenant. Nullable.
            ## @return a inbound_shared_user_profile
            ## 
            def inbound_shared_user_profiles
                return @inbound_shared_user_profiles
            end
            ## 
            ## Sets the inboundSharedUserProfiles property value. A collection of external Azure AD users whose profile data has been shared with the Azure AD tenant. Nullable.
            ## @param value Value to set for the inboundSharedUserProfiles property.
            ## @return a void
            ## 
            def inbound_shared_user_profiles=(value)
                @inbound_shared_user_profiles = value
            end
            ## 
            ## Gets the onPremisesSynchronization property value. A container for on-premises directory synchronization functionalities that are available for the organization.
            ## @return a on_premises_directory_synchronization
            ## 
            def on_premises_synchronization
                return @on_premises_synchronization
            end
            ## 
            ## Sets the onPremisesSynchronization property value. A container for on-premises directory synchronization functionalities that are available for the organization.
            ## @param value Value to set for the onPremisesSynchronization property.
            ## @return a void
            ## 
            def on_premises_synchronization=(value)
                @on_premises_synchronization = value
            end
            ## 
            ## Gets the outboundSharedUserProfiles property value. The outboundSharedUserProfiles property
            ## @return a outbound_shared_user_profile
            ## 
            def outbound_shared_user_profiles
                return @outbound_shared_user_profiles
            end
            ## 
            ## Sets the outboundSharedUserProfiles property value. The outboundSharedUserProfiles property
            ## @param value Value to set for the outboundSharedUserProfiles property.
            ## @return a void
            ## 
            def outbound_shared_user_profiles=(value)
                @outbound_shared_user_profiles = value
            end
            ## 
            ## Gets the recommendations property value. List of recommended improvements to improve tenant posture.
            ## @return a recommendation
            ## 
            def recommendations
                return @recommendations
            end
            ## 
            ## Sets the recommendations property value. List of recommended improvements to improve tenant posture.
            ## @param value Value to set for the recommendations property.
            ## @return a void
            ## 
            def recommendations=(value)
                @recommendations = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("administrativeUnits", @administrative_units)
                writer.write_collection_of_object_values("attributeSets", @attribute_sets)
                writer.write_object_value("certificateAuthorities", @certificate_authorities)
                writer.write_collection_of_object_values("customSecurityAttributeDefinitions", @custom_security_attribute_definitions)
                writer.write_collection_of_object_values("deletedItems", @deleted_items)
                writer.write_collection_of_object_values("deviceLocalCredentials", @device_local_credentials)
                writer.write_collection_of_object_values("featureRolloutPolicies", @feature_rollout_policies)
                writer.write_collection_of_object_values("federationConfigurations", @federation_configurations)
                writer.write_collection_of_object_values("impactedResources", @impacted_resources)
                writer.write_collection_of_object_values("inboundSharedUserProfiles", @inbound_shared_user_profiles)
                writer.write_collection_of_object_values("onPremisesSynchronization", @on_premises_synchronization)
                writer.write_collection_of_object_values("outboundSharedUserProfiles", @outbound_shared_user_profiles)
                writer.write_collection_of_object_values("recommendations", @recommendations)
                writer.write_collection_of_object_values("sharedEmailDomains", @shared_email_domains)
                writer.write_collection_of_object_values("subscriptions", @subscriptions)
            end
            ## 
            ## Gets the sharedEmailDomains property value. The sharedEmailDomains property
            ## @return a shared_email_domain
            ## 
            def shared_email_domains
                return @shared_email_domains
            end
            ## 
            ## Sets the sharedEmailDomains property value. The sharedEmailDomains property
            ## @param value Value to set for the sharedEmailDomains property.
            ## @return a void
            ## 
            def shared_email_domains=(value)
                @shared_email_domains = value
            end
            ## 
            ## Gets the subscriptions property value. List of commercial subscriptions that an organization has acquired.
            ## @return a company_subscription
            ## 
            def subscriptions
                return @subscriptions
            end
            ## 
            ## Sets the subscriptions property value. List of commercial subscriptions that an organization has acquired.
            ## @param value Value to set for the subscriptions property.
            ## @return a void
            ## 
            def subscriptions=(value)
                @subscriptions = value
            end
        end
    end
end
