require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Deprecated
    class Windows10PFXImportCertificateProfile < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Key Storage Provider (KSP) Import Options.
        @key_storage_provider
        ## 
        ## Instantiates a new windows10PFXImportCertificateProfile and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windows10PFXImportCertificateProfile"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows10_p_f_x_import_certificate_profile
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Windows10PFXImportCertificateProfile.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "keyStorageProvider" => lambda {|n| @key_storage_provider = n.get_enum_value(MicrosoftGraphBeta::Models::KeyStorageProviderOption) },
            })
        end
        ## 
        ## Gets the keyStorageProvider property value. Key Storage Provider (KSP) Import Options.
        ## @return a key_storage_provider_option
        ## 
        def key_storage_provider
            return @key_storage_provider
        end
        ## 
        ## Sets the keyStorageProvider property value. Key Storage Provider (KSP) Import Options.
        ## @param value Value to set for the key_storage_provider property.
        ## @return a void
        ## 
        def key_storage_provider=(value)
            @key_storage_provider = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("keyStorageProvider", @key_storage_provider)
        end
    end
end
