require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The embedded SIM activation code as provided by the mobile operator.
        class EmbeddedSIMActivationCode
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The Integrated Circuit Card Identifier (ICCID) for this embedded SIM activation code as provided by the mobile operator.
            @integrated_circuit_card_identifier
            ## 
            # The MatchingIdentifier (MatchingID) as specified in the GSMA Association SGP.22 RSP Technical Specification section 4.1.
            @matching_identifier
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The fully qualified domain name of the SM-DP+ server as specified in the GSM Association SPG .22 RSP Technical Specification.
            @smdp_plus_server_address
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
            ## Instantiates a new embeddedSIMActivationCode and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a embedded_s_i_m_activation_code
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EmbeddedSIMActivationCode.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "integratedCircuitCardIdentifier" => lambda {|n| @integrated_circuit_card_identifier = n.get_string_value() },
                    "matchingIdentifier" => lambda {|n| @matching_identifier = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "smdpPlusServerAddress" => lambda {|n| @smdp_plus_server_address = n.get_string_value() },
                }
            end
            ## 
            ## Gets the integratedCircuitCardIdentifier property value. The Integrated Circuit Card Identifier (ICCID) for this embedded SIM activation code as provided by the mobile operator.
            ## @return a string
            ## 
            def integrated_circuit_card_identifier
                return @integrated_circuit_card_identifier
            end
            ## 
            ## Sets the integratedCircuitCardIdentifier property value. The Integrated Circuit Card Identifier (ICCID) for this embedded SIM activation code as provided by the mobile operator.
            ## @param value Value to set for the integratedCircuitCardIdentifier property.
            ## @return a void
            ## 
            def integrated_circuit_card_identifier=(value)
                @integrated_circuit_card_identifier = value
            end
            ## 
            ## Gets the matchingIdentifier property value. The MatchingIdentifier (MatchingID) as specified in the GSMA Association SGP.22 RSP Technical Specification section 4.1.
            ## @return a string
            ## 
            def matching_identifier
                return @matching_identifier
            end
            ## 
            ## Sets the matchingIdentifier property value. The MatchingIdentifier (MatchingID) as specified in the GSMA Association SGP.22 RSP Technical Specification section 4.1.
            ## @param value Value to set for the matchingIdentifier property.
            ## @return a void
            ## 
            def matching_identifier=(value)
                @matching_identifier = value
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
                writer.write_string_value("integratedCircuitCardIdentifier", @integrated_circuit_card_identifier)
                writer.write_string_value("matchingIdentifier", @matching_identifier)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("smdpPlusServerAddress", @smdp_plus_server_address)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the smdpPlusServerAddress property value. The fully qualified domain name of the SM-DP+ server as specified in the GSM Association SPG .22 RSP Technical Specification.
            ## @return a string
            ## 
            def smdp_plus_server_address
                return @smdp_plus_server_address
            end
            ## 
            ## Sets the smdpPlusServerAddress property value. The fully qualified domain name of the SM-DP+ server as specified in the GSM Association SPG .22 RSP Technical Specification.
            ## @param value Value to set for the smdpPlusServerAddress property.
            ## @return a void
            ## 
            def smdp_plus_server_address=(value)
                @smdp_plus_server_address = value
            end
        end
    end
end
