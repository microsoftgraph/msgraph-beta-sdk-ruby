require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityAnalyzedEmailUrl
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The detectionMethod property
            @detection_method
            ## 
            # The detonationDetails property
            @detonation_details
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The threatType property
            @threat_type
            ## 
            # The url property
            @url
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
            ## Instantiates a new SecurityAnalyzedEmailUrl and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_analyzed_email_url
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityAnalyzedEmailUrl.new
            end
            ## 
            ## Gets the detectionMethod property value. The detectionMethod property
            ## @return a string
            ## 
            def detection_method
                return @detection_method
            end
            ## 
            ## Sets the detectionMethod property value. The detectionMethod property
            ## @param value Value to set for the detectionMethod property.
            ## @return a void
            ## 
            def detection_method=(value)
                @detection_method = value
            end
            ## 
            ## Gets the detonationDetails property value. The detonationDetails property
            ## @return a security_detonation_details
            ## 
            def detonation_details
                return @detonation_details
            end
            ## 
            ## Sets the detonationDetails property value. The detonationDetails property
            ## @param value Value to set for the detonationDetails property.
            ## @return a void
            ## 
            def detonation_details=(value)
                @detonation_details = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "detectionMethod" => lambda {|n| @detection_method = n.get_string_value() },
                    "detonationDetails" => lambda {|n| @detonation_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityDetonationDetails.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "threatType" => lambda {|n| @threat_type = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityThreatType) },
                    "url" => lambda {|n| @url = n.get_string_value() },
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
                writer.write_string_value("detectionMethod", @detection_method)
                writer.write_object_value("detonationDetails", @detonation_details)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("threatType", @threat_type)
                writer.write_string_value("url", @url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the threatType property value. The threatType property
            ## @return a security_threat_type
            ## 
            def threat_type
                return @threat_type
            end
            ## 
            ## Sets the threatType property value. The threatType property
            ## @param value Value to set for the threatType property.
            ## @return a void
            ## 
            def threat_type=(value)
                @threat_type = value
            end
            ## 
            ## Gets the url property value. The url property
            ## @return a string
            ## 
            def url
                return @url
            end
            ## 
            ## Sets the url property value. The url property
            ## @param value Value to set for the url property.
            ## @return a void
            ## 
            def url=(value)
                @url = value
            end
        end
    end
end
