require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class VerifiableCredentialRequired < MicrosoftGraphBeta::Models::VerifiableCredentialRequirementStatus
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # When the presentation request will expire and a new one will need to be generated.
            @expiry_date_time
            ## 
            # A URL that launches the digital wallet and starts the presentation process. You can present this URL to the user if they can't scan the QR code.
            @url
            ## 
            ## Instantiates a new VerifiableCredentialRequired and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.verifiableCredentialRequired"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a verifiable_credential_required
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VerifiableCredentialRequired.new
            end
            ## 
            ## Gets the expiryDateTime property value. When the presentation request will expire and a new one will need to be generated.
            ## @return a date_time
            ## 
            def expiry_date_time
                return @expiry_date_time
            end
            ## 
            ## Sets the expiryDateTime property value. When the presentation request will expire and a new one will need to be generated.
            ## @param value Value to set for the expiryDateTime property.
            ## @return a void
            ## 
            def expiry_date_time=(value)
                @expiry_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "expiryDateTime" => lambda {|n| @expiry_date_time = n.get_date_time_value() },
                    "url" => lambda {|n| @url = n.get_string_value() },
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
                writer.write_date_time_value("expiryDateTime", @expiry_date_time)
                writer.write_string_value("url", @url)
            end
            ## 
            ## Gets the url property value. A URL that launches the digital wallet and starts the presentation process. You can present this URL to the user if they can't scan the QR code.
            ## @return a string
            ## 
            def url
                return @url
            end
            ## 
            ## Sets the url property value. A URL that launches the digital wallet and starts the presentation process. You can present this URL to the user if they can't scan the QR code.
            ## @param value Value to set for the url property.
            ## @return a void
            ## 
            def url=(value)
                @url = value
            end
        end
    end
end
