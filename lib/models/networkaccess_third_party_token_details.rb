require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessThirdPartyTokenDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The expirationDateTime property
            @expiration_date_time
            ## 
            # The issuedAtDateTime property
            @issued_at_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The uniqueTokenIdentifier property
            @unique_token_identifier
            ## 
            # The validFromDateTime property
            @valid_from_date_time
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new NetworkaccessThirdPartyTokenDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_third_party_token_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessThirdPartyTokenDetails.new
            end
            ## 
            ## Gets the expirationDateTime property value. The expirationDateTime property
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. The expirationDateTime property
            ## @param value Value to set for the expirationDateTime property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "issuedAtDateTime" => lambda {|n| @issued_at_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "uniqueTokenIdentifier" => lambda {|n| @unique_token_identifier = n.get_string_value() },
                    "validFromDateTime" => lambda {|n| @valid_from_date_time = n.get_date_time_value() },
                }
            end
            ## 
            ## Gets the issuedAtDateTime property value. The issuedAtDateTime property
            ## @return a date_time
            ## 
            def issued_at_date_time
                return @issued_at_date_time
            end
            ## 
            ## Sets the issuedAtDateTime property value. The issuedAtDateTime property
            ## @param value Value to set for the issuedAtDateTime property.
            ## @return a void
            ## 
            def issued_at_date_time=(value)
                @issued_at_date_time = value
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
            ## @param value Value to set for the @odata.type property.
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
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_date_time_value("issuedAtDateTime", @issued_at_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("uniqueTokenIdentifier", @unique_token_identifier)
                writer.write_date_time_value("validFromDateTime", @valid_from_date_time)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the uniqueTokenIdentifier property value. The uniqueTokenIdentifier property
            ## @return a string
            ## 
            def unique_token_identifier
                return @unique_token_identifier
            end
            ## 
            ## Sets the uniqueTokenIdentifier property value. The uniqueTokenIdentifier property
            ## @param value Value to set for the uniqueTokenIdentifier property.
            ## @return a void
            ## 
            def unique_token_identifier=(value)
                @unique_token_identifier = value
            end
            ## 
            ## Gets the validFromDateTime property value. The validFromDateTime property
            ## @return a date_time
            ## 
            def valid_from_date_time
                return @valid_from_date_time
            end
            ## 
            ## Sets the validFromDateTime property value. The validFromDateTime property
            ## @param value Value to set for the validFromDateTime property.
            ## @return a void
            ## 
            def valid_from_date_time=(value)
                @valid_from_date_time = value
            end
        end
    end
end
