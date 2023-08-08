require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows 8.1 Phone and Mobile PFX Import certificate profile
        class WindowsPhone81ImportedPFXCertificateProfile < MicrosoftGraphBeta::Models::WindowsCertificateProfileBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # PFX Import Options.
            @intended_purpose
            ## 
            # Certificate state for devices. This collection can contain a maximum of 2147483647 elements.
            @managed_device_certificate_states
            ## 
            ## Instantiates a new windowsPhone81ImportedPFXCertificateProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsPhone81ImportedPFXCertificateProfile"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_phone81_imported_p_f_x_certificate_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsPhone81ImportedPFXCertificateProfile.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "intendedPurpose" => lambda {|n| @intended_purpose = n.get_enum_value(MicrosoftGraphBeta::Models::IntendedPurpose) },
                    "managedDeviceCertificateStates" => lambda {|n| @managed_device_certificate_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceCertificateState.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the intendedPurpose property.
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
            ## @param value Value to set for the managedDeviceCertificateStates property.
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
                writer.write_enum_value("intendedPurpose", @intended_purpose)
                writer.write_collection_of_object_values("managedDeviceCertificateStates", @managed_device_certificate_states)
            end
        end
    end
end
