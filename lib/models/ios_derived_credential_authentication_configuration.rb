require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IosDerivedCredentialAuthenticationConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Tenant level settings for the Derived Credentials to be used for authentication.
            @derived_credential_settings
            ## 
            ## Instantiates a new IosDerivedCredentialAuthenticationConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosDerivedCredentialAuthenticationConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a ios_derived_credential_authentication_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosDerivedCredentialAuthenticationConfiguration.new
            end
            ## 
            ## Gets the derivedCredentialSettings property value. Tenant level settings for the Derived Credentials to be used for authentication.
            ## @return a device_management_derived_credential_settings
            ## 
            def derived_credential_settings
                return @derived_credential_settings
            end
            ## 
            ## Sets the derivedCredentialSettings property value. Tenant level settings for the Derived Credentials to be used for authentication.
            ## @param value Value to set for the derived_credential_settings property.
            ## @return a void
            ## 
            def derived_credential_settings=(value)
                @derived_credential_settings = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "derivedCredentialSettings" => lambda {|n| @derived_credential_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementDerivedCredentialSettings.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("derivedCredentialSettings", @derived_credential_settings)
            end
        end
    end
end
