require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AndroidDeviceOwnerImportedPFXCertificateProfile < MicrosoftGraphBeta::Models::AndroidDeviceOwnerCertificateProfileBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Certificate access type. Possible values are: userApproval, specificApps, unknownFutureValue.
            @certificate_access_type
            ## 
            # PFX Import Options.
            @intended_purpose
            ## 
            # Certificate state for devices. This collection can contain a maximum of 2147483647 elements.
            @managed_device_certificate_states
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
            ## Instantiates a new AndroidDeviceOwnerImportedPFXCertificateProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidDeviceOwnerImportedPFXCertificateProfile"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_device_owner_imported_p_f_x_certificate_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidDeviceOwnerImportedPFXCertificateProfile.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "certificateAccessType" => lambda {|n| @certificate_access_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerCertificateAccessType) },
                    "intendedPurpose" => lambda {|n| @intended_purpose = n.get_enum_value(MicrosoftGraphBeta::Models::IntendedPurpose) },
                    "managedDeviceCertificateStates" => lambda {|n| @managed_device_certificate_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceCertificateState.create_from_discriminator_value(pn) }) },
                    "silentCertificateAccessDetails" => lambda {|n| @silent_certificate_access_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerSilentCertificateAccess.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the intendedPurpose property value. PFX Import Options.
            ## @return a intended_purpose
            ## 
            def intended_purpose
                return @intended_purpose
            end
            ## 
            ## Sets the intendedPurpose property value. PFX Import Options.
            ## @param value Value to set for the intended_purpose property.
            ## @return a void
            ## 
            def intended_purpose=(value)
                @intended_purpose = value
            end
            ## 
            ## Gets the managedDeviceCertificateStates property value. Certificate state for devices. This collection can contain a maximum of 2147483647 elements.
            ## @return a managed_device_certificate_state
            ## 
            def managed_device_certificate_states
                return @managed_device_certificate_states
            end
            ## 
            ## Sets the managedDeviceCertificateStates property value. Certificate state for devices. This collection can contain a maximum of 2147483647 elements.
            ## @param value Value to set for the managed_device_certificate_states property.
            ## @return a void
            ## 
            def managed_device_certificate_states=(value)
                @managed_device_certificate_states = value
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
                writer.write_enum_value("intendedPurpose", @intended_purpose)
                writer.write_collection_of_object_values("managedDeviceCertificateStates", @managed_device_certificate_states)
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
end
