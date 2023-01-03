require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AndroidWorkProfileTrustedRootCertificate < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # File name to display in UI.
        @cert_file_name
        ## 
        # Trusted Root Certificate
        @trusted_root_certificate
        ## 
        ## Gets the certFileName property value. File name to display in UI.
        ## @return a string
        ## 
        def cert_file_name
            return @cert_file_name
        end
        ## 
        ## Sets the certFileName property value. File name to display in UI.
        ## @param value Value to set for the certFileName property.
        ## @return a void
        ## 
        def cert_file_name=(value)
            @cert_file_name = value
        end
        ## 
        ## Instantiates a new androidWorkProfileTrustedRootCertificate and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.androidWorkProfileTrustedRootCertificate"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a android_work_profile_trusted_root_certificate
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AndroidWorkProfileTrustedRootCertificate.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "certFileName" => lambda {|n| @cert_file_name = n.get_string_value() },
                "trustedRootCertificate" => lambda {|n| @trusted_root_certificate = n.get_string_value() },
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
            writer.write_string_value("certFileName", @cert_file_name)
            writer.write_object_value("trustedRootCertificate", @trusted_root_certificate)
        end
        ## 
        ## Gets the trustedRootCertificate property value. Trusted Root Certificate
        ## @return a binary
        ## 
        def trusted_root_certificate
            return @trusted_root_certificate
        end
        ## 
        ## Sets the trustedRootCertificate property value. Trusted Root Certificate
        ## @param value Value to set for the trustedRootCertificate property.
        ## @return a void
        ## 
        def trusted_root_certificate=(value)
            @trusted_root_certificate = value
        end
    end
end
