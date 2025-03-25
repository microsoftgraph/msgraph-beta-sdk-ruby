require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AudiencesConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Setting to allow or disallow creation of apps with multitenant signInAudience.
            @azure_ad_multiple_orgs
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Setting to allow or disallow creation of apps with personal Microsoft account signInAudience.
            @personal_microsoft_account
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
            ## Gets the azureAdMultipleOrgs property value. Setting to allow or disallow creation of apps with multitenant signInAudience.
            ## @return a audience_restriction
            ## 
            def azure_ad_multiple_orgs
                return @azure_ad_multiple_orgs
            end
            ## 
            ## Sets the azureAdMultipleOrgs property value. Setting to allow or disallow creation of apps with multitenant signInAudience.
            ## @param value Value to set for the azureAdMultipleOrgs property.
            ## @return a void
            ## 
            def azure_ad_multiple_orgs=(value)
                @azure_ad_multiple_orgs = value
            end
            ## 
            ## Instantiates a new AudiencesConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a audiences_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AudiencesConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "azureAdMultipleOrgs" => lambda {|n| @azure_ad_multiple_orgs = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AudienceRestriction.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "personalMicrosoftAccount" => lambda {|n| @personal_microsoft_account = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AudienceRestriction.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the personalMicrosoftAccount property value. Setting to allow or disallow creation of apps with personal Microsoft account signInAudience.
            ## @return a audience_restriction
            ## 
            def personal_microsoft_account
                return @personal_microsoft_account
            end
            ## 
            ## Sets the personalMicrosoftAccount property value. Setting to allow or disallow creation of apps with personal Microsoft account signInAudience.
            ## @param value Value to set for the personalMicrosoftAccount property.
            ## @return a void
            ## 
            def personal_microsoft_account=(value)
                @personal_microsoft_account = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("azureAdMultipleOrgs", @azure_ad_multiple_orgs)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("personalMicrosoftAccount", @personal_microsoft_account)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
