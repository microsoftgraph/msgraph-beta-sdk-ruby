require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityDetonationDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The analysisDateTime property
            @analysis_date_time
            ## 
            # The detonationChain property
            @detonation_chain
            ## 
            # The detonationObservables property
            @detonation_observables
            ## 
            # The detonationVerdict property
            @detonation_verdict
            ## 
            # The detonationVerdictReason property
            @detonation_verdict_reason
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the analysisDateTime property value. The analysisDateTime property
            ## @return a date_time
            ## 
            def analysis_date_time
                return @analysis_date_time
            end
            ## 
            ## Sets the analysisDateTime property value. The analysisDateTime property
            ## @param value Value to set for the analysisDateTime property.
            ## @return a void
            ## 
            def analysis_date_time=(value)
                @analysis_date_time = value
            end
            ## 
            ## Instantiates a new SecurityDetonationDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_detonation_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityDetonationDetails.new
            end
            ## 
            ## Gets the detonationChain property value. The detonationChain property
            ## @return a security_detonation_chain
            ## 
            def detonation_chain
                return @detonation_chain
            end
            ## 
            ## Sets the detonationChain property value. The detonationChain property
            ## @param value Value to set for the detonationChain property.
            ## @return a void
            ## 
            def detonation_chain=(value)
                @detonation_chain = value
            end
            ## 
            ## Gets the detonationObservables property value. The detonationObservables property
            ## @return a security_detonation_observables
            ## 
            def detonation_observables
                return @detonation_observables
            end
            ## 
            ## Sets the detonationObservables property value. The detonationObservables property
            ## @param value Value to set for the detonationObservables property.
            ## @return a void
            ## 
            def detonation_observables=(value)
                @detonation_observables = value
            end
            ## 
            ## Gets the detonationVerdict property value. The detonationVerdict property
            ## @return a string
            ## 
            def detonation_verdict
                return @detonation_verdict
            end
            ## 
            ## Sets the detonationVerdict property value. The detonationVerdict property
            ## @param value Value to set for the detonationVerdict property.
            ## @return a void
            ## 
            def detonation_verdict=(value)
                @detonation_verdict = value
            end
            ## 
            ## Gets the detonationVerdictReason property value. The detonationVerdictReason property
            ## @return a string
            ## 
            def detonation_verdict_reason
                return @detonation_verdict_reason
            end
            ## 
            ## Sets the detonationVerdictReason property value. The detonationVerdictReason property
            ## @param value Value to set for the detonationVerdictReason property.
            ## @return a void
            ## 
            def detonation_verdict_reason=(value)
                @detonation_verdict_reason = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "analysisDateTime" => lambda {|n| @analysis_date_time = n.get_date_time_value() },
                    "detonationChain" => lambda {|n| @detonation_chain = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityDetonationChain.create_from_discriminator_value(pn) }) },
                    "detonationObservables" => lambda {|n| @detonation_observables = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityDetonationObservables.create_from_discriminator_value(pn) }) },
                    "detonationVerdict" => lambda {|n| @detonation_verdict = n.get_string_value() },
                    "detonationVerdictReason" => lambda {|n| @detonation_verdict_reason = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_time_value("analysisDateTime", @analysis_date_time)
                writer.write_object_value("detonationChain", @detonation_chain)
                writer.write_object_value("detonationObservables", @detonation_observables)
                writer.write_string_value("detonationVerdict", @detonation_verdict)
                writer.write_string_value("detonationVerdictReason", @detonation_verdict_reason)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
