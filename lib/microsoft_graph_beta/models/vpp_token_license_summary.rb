require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # License summary of a given app in a token.
    class VppTokenLicenseSummary
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The Apple Id associated with the given Apple Volume Purchase Program Token.
        @apple_id
        ## 
        # The number of VPP licenses available.
        @available_license_count
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The organization associated with the Apple Volume Purchase Program Token.
        @organization_name
        ## 
        # The number of VPP licenses in use.
        @used_license_count
        ## 
        # Identifier of the VPP token.
        @vpp_token_id
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the appleId property value. The Apple Id associated with the given Apple Volume Purchase Program Token.
        ## @return a string
        ## 
        def apple_id
            return @apple_id
        end
        ## 
        ## Sets the appleId property value. The Apple Id associated with the given Apple Volume Purchase Program Token.
        ## @param value Value to set for the appleId property.
        ## @return a void
        ## 
        def apple_id=(value)
            @apple_id = value
        end
        ## 
        ## Gets the availableLicenseCount property value. The number of VPP licenses available.
        ## @return a integer
        ## 
        def available_license_count
            return @available_license_count
        end
        ## 
        ## Sets the availableLicenseCount property value. The number of VPP licenses available.
        ## @param value Value to set for the availableLicenseCount property.
        ## @return a void
        ## 
        def available_license_count=(value)
            @available_license_count = value
        end
        ## 
        ## Instantiates a new vppTokenLicenseSummary and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a vpp_token_license_summary
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return VppTokenLicenseSummary.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "appleId" => lambda {|n| @apple_id = n.get_string_value() },
                "availableLicenseCount" => lambda {|n| @available_license_count = n.get_number_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "organizationName" => lambda {|n| @organization_name = n.get_string_value() },
                "usedLicenseCount" => lambda {|n| @used_license_count = n.get_number_value() },
                "vppTokenId" => lambda {|n| @vpp_token_id = n.get_string_value() },
            }
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the organizationName property value. The organization associated with the Apple Volume Purchase Program Token.
        ## @return a string
        ## 
        def organization_name
            return @organization_name
        end
        ## 
        ## Sets the organizationName property value. The organization associated with the Apple Volume Purchase Program Token.
        ## @param value Value to set for the organizationName property.
        ## @return a void
        ## 
        def organization_name=(value)
            @organization_name = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("appleId", @apple_id)
            writer.write_number_value("availableLicenseCount", @available_license_count)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("organizationName", @organization_name)
            writer.write_number_value("usedLicenseCount", @used_license_count)
            writer.write_string_value("vppTokenId", @vpp_token_id)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the usedLicenseCount property value. The number of VPP licenses in use.
        ## @return a integer
        ## 
        def used_license_count
            return @used_license_count
        end
        ## 
        ## Sets the usedLicenseCount property value. The number of VPP licenses in use.
        ## @param value Value to set for the usedLicenseCount property.
        ## @return a void
        ## 
        def used_license_count=(value)
            @used_license_count = value
        end
        ## 
        ## Gets the vppTokenId property value. Identifier of the VPP token.
        ## @return a string
        ## 
        def vpp_token_id
            return @vpp_token_id
        end
        ## 
        ## Sets the vppTokenId property value. Identifier of the VPP token.
        ## @param value Value to set for the vppTokenId property.
        ## @return a void
        ## 
        def vpp_token_id=(value)
            @vpp_token_id = value
        end
    end
end
