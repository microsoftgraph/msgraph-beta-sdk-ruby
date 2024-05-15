require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SamlNameIdClaim < MicrosoftGraphBeta::Models::CustomClaimBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The nameIdFormat property
            @name_id_format
            ## 
            # The serviceProviderNameQualifier property
            @service_provider_name_qualifier
            ## 
            ## Instantiates a new SamlNameIdClaim and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.samlNameIdClaim"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a saml_name_id_claim
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SamlNameIdClaim.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "nameIdFormat" => lambda {|n| @name_id_format = n.get_enum_value(MicrosoftGraphBeta::Models::SamlNameIDFormat) },
                    "serviceProviderNameQualifier" => lambda {|n| @service_provider_name_qualifier = n.get_string_value() },
                })
            end
            ## 
            ## Gets the nameIdFormat property value. The nameIdFormat property
            ## @return a saml_name_i_d_format
            ## 
            def name_id_format
                return @name_id_format
            end
            ## 
            ## Sets the nameIdFormat property value. The nameIdFormat property
            ## @param value Value to set for the nameIdFormat property.
            ## @return a void
            ## 
            def name_id_format=(value)
                @name_id_format = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("nameIdFormat", @name_id_format)
                writer.write_string_value("serviceProviderNameQualifier", @service_provider_name_qualifier)
            end
            ## 
            ## Gets the serviceProviderNameQualifier property value. The serviceProviderNameQualifier property
            ## @return a string
            ## 
            def service_provider_name_qualifier
                return @service_provider_name_qualifier
            end
            ## 
            ## Sets the serviceProviderNameQualifier property value. The serviceProviderNameQualifier property
            ## @param value Value to set for the serviceProviderNameQualifier property.
            ## @return a void
            ## 
            def service_provider_name_qualifier=(value)
                @service_provider_name_qualifier = value
            end
        end
    end
end
