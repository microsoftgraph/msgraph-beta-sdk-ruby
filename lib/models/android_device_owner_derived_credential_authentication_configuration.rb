require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AndroidDeviceOwnerDerivedCredentialAuthenticationConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Certificate access type. Possible values are: userApproval, specificApps, unknownFutureValue.
        @certificate_access_type
        ## 
        # Tenant level settings for the Derived Credentials to be used for authentication.
        @derived_credential_settings
        ## 
        # Certificate access information. This collection can contain a maximum of 50 elements.
        @silent_certificate_access_details
        ## 
        ## Gets the certificateAccessType property value. Certificate access type. Possible values are: userApproval, specificApps, unknownFutureValue.
        ## @return a android_device_owner_certificate_access_type
        ## 
        def certificate_access_type
            return @certificate_access_type
        end
        ## 
        ## Sets the certificateAccessType property value. Certificate access type. Possible values are: userApproval, specificApps, unknownFutureValue.
        ## @param value Value to set for the certificate_access_type property.
        ## @return a void
        ## 
        def certificate_access_type=(value)
            @certificate_access_type = value
        end
        ## 
        ## Instantiates a new AndroidDeviceOwnerDerivedCredentialAuthenticationConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.androidDeviceOwnerDerivedCredentialAuthenticationConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a android_device_owner_derived_credential_authentication_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AndroidDeviceOwnerDerivedCredentialAuthenticationConfiguration.new
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
                "certificateAccessType" => lambda {|n| @certificate_access_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerCertificateAccessType) },
                "derivedCredentialSettings" => lambda {|n| @derived_credential_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementDerivedCredentialSettings.create_from_discriminator_value(pn) }) },
                "silentCertificateAccessDetails" => lambda {|n| @silent_certificate_access_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerSilentCertificateAccess.create_from_discriminator_value(pn) }) },
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
            writer.write_enum_value("certificateAccessType", @certificate_access_type)
            writer.write_object_value("derivedCredentialSettings", @derived_credential_settings)
            writer.write_collection_of_object_values("silentCertificateAccessDetails", @silent_certificate_access_details)
        end
        ## 
        ## Gets the silentCertificateAccessDetails property value. Certificate access information. This collection can contain a maximum of 50 elements.
        ## @return a android_device_owner_silent_certificate_access
        ## 
        def silent_certificate_access_details
            return @silent_certificate_access_details
        end
        ## 
        ## Sets the silentCertificateAccessDetails property value. Certificate access information. This collection can contain a maximum of 50 elements.
        ## @param value Value to set for the silent_certificate_access_details property.
        ## @return a void
        ## 
        def silent_certificate_access_details=(value)
            @silent_certificate_access_details = value
        end
    end
end
