require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityThreatDetectionDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The confidenceLevel property
            @confidence_level
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The priorityAccountProtection property
            @priority_account_protection
            ## 
            # The threats property
            @threats
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
            ## Gets the confidenceLevel property value. The confidenceLevel property
            ## @return a string
            ## 
            def confidence_level
                return @confidence_level
            end
            ## 
            ## Sets the confidenceLevel property value. The confidenceLevel property
            ## @param value Value to set for the confidenceLevel property.
            ## @return a void
            ## 
            def confidence_level=(value)
                @confidence_level = value
            end
            ## 
            ## Instantiates a new SecurityThreatDetectionDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_threat_detection_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityThreatDetectionDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "confidenceLevel" => lambda {|n| @confidence_level = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "priorityAccountProtection" => lambda {|n| @priority_account_protection = n.get_string_value() },
                    "threats" => lambda {|n| @threats = n.get_string_value() },
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
            ## Gets the priorityAccountProtection property value. The priorityAccountProtection property
            ## @return a string
            ## 
            def priority_account_protection
                return @priority_account_protection
            end
            ## 
            ## Sets the priorityAccountProtection property value. The priorityAccountProtection property
            ## @param value Value to set for the priorityAccountProtection property.
            ## @return a void
            ## 
            def priority_account_protection=(value)
                @priority_account_protection = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("confidenceLevel", @confidence_level)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("priorityAccountProtection", @priority_account_protection)
                writer.write_string_value("threats", @threats)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the threats property value. The threats property
            ## @return a string
            ## 
            def threats
                return @threats
            end
            ## 
            ## Sets the threats property value. The threats property
            ## @param value Value to set for the threats property.
            ## @return a void
            ## 
            def threats=(value)
                @threats = value
            end
        end
    end
end
