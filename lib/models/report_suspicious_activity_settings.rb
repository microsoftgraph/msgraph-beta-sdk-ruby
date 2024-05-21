require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ReportSuspiciousActivitySettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The includeTarget property
            @include_target
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The state property
            @state
            ## 
            # Specifies the number the user enters on their phone to report the MFA prompt as suspicious.
            @voice_reporting_code
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
            ## Instantiates a new ReportSuspiciousActivitySettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a report_suspicious_activity_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ReportSuspiciousActivitySettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "includeTarget" => lambda {|n| @include_target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IncludeTarget.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::AdvancedConfigState) },
                    "voiceReportingCode" => lambda {|n| @voice_reporting_code = n.get_number_value() },
                }
            end
            ## 
            ## Gets the includeTarget property value. The includeTarget property
            ## @return a include_target
            ## 
            def include_target
                return @include_target
            end
            ## 
            ## Sets the includeTarget property value. The includeTarget property
            ## @param value Value to set for the includeTarget property.
            ## @return a void
            ## 
            def include_target=(value)
                @include_target = value
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
                writer.write_object_value("includeTarget", @include_target)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("state", @state)
                writer.write_number_value("voiceReportingCode", @voice_reporting_code)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a advanced_config_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the voiceReportingCode property value. Specifies the number the user enters on their phone to report the MFA prompt as suspicious.
            ## @return a integer
            ## 
            def voice_reporting_code
                return @voice_reporting_code
            end
            ## 
            ## Sets the voiceReportingCode property value. Specifies the number the user enters on their phone to report the MFA prompt as suspicious.
            ## @param value Value to set for the voiceReportingCode property.
            ## @return a void
            ## 
            def voice_reporting_code=(value)
                @voice_reporting_code = value
            end
        end
    end
end
