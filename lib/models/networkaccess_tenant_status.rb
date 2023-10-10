require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessTenantStatus < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Reflects a message to the user if there's an error.
            @onboarding_error_message
            ## 
            # The onboardingStatus property
            @onboarding_status
            ## 
            ## Instantiates a new networkaccessTenantStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_tenant_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessTenantStatus.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "onboardingErrorMessage" => lambda {|n| @onboarding_error_message = n.get_string_value() },
                    "onboardingStatus" => lambda {|n| @onboarding_status = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessOnboardingStatus) },
                })
            end
            ## 
            ## Gets the onboardingErrorMessage property value. Reflects a message to the user if there's an error.
            ## @return a string
            ## 
            def onboarding_error_message
                return @onboarding_error_message
            end
            ## 
            ## Sets the onboardingErrorMessage property value. Reflects a message to the user if there's an error.
            ## @param value Value to set for the onboardingErrorMessage property.
            ## @return a void
            ## 
            def onboarding_error_message=(value)
                @onboarding_error_message = value
            end
            ## 
            ## Gets the onboardingStatus property value. The onboardingStatus property
            ## @return a networkaccess_onboarding_status
            ## 
            def onboarding_status
                return @onboarding_status
            end
            ## 
            ## Sets the onboardingStatus property value. The onboardingStatus property
            ## @param value Value to set for the onboardingStatus property.
            ## @return a void
            ## 
            def onboarding_status=(value)
                @onboarding_status = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("onboardingErrorMessage", @onboarding_error_message)
                writer.write_enum_value("onboardingStatus", @onboarding_status)
            end
        end
    end
end
