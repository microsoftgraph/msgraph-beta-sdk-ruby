require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PayloadDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Payload coachmark details.
            @coachmarks
            ## 
            # Payload content details.
            @content
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The phishing URL used to target a user.
            @phishing_url
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the coachmarks property value. Payload coachmark details.
            ## @return a payload_coachmark
            ## 
            def coachmarks
                return @coachmarks
            end
            ## 
            ## Sets the coachmarks property value. Payload coachmark details.
            ## @param value Value to set for the coachmarks property.
            ## @return a void
            ## 
            def coachmarks=(value)
                @coachmarks = value
            end
            ## 
            ## Instantiates a new payloadDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the content property value. Payload content details.
            ## @return a string
            ## 
            def content
                return @content
            end
            ## 
            ## Sets the content property value. Payload content details.
            ## @param value Value to set for the content property.
            ## @return a void
            ## 
            def content=(value)
                @content = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a payload_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.emailPayloadDetail"
                            return EmailPayloadDetail.new
                    end
                end
                return PayloadDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "coachmarks" => lambda {|n| @coachmarks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PayloadCoachmark.create_from_discriminator_value(pn) }) },
                    "content" => lambda {|n| @content = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "phishingUrl" => lambda {|n| @phishing_url = n.get_string_value() },
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
            ## Gets the phishingUrl property value. The phishing URL used to target a user.
            ## @return a string
            ## 
            def phishing_url
                return @phishing_url
            end
            ## 
            ## Sets the phishingUrl property value. The phishing URL used to target a user.
            ## @param value Value to set for the phishingUrl property.
            ## @return a void
            ## 
            def phishing_url=(value)
                @phishing_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("coachmarks", @coachmarks)
                writer.write_string_value("content", @content)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("phishingUrl", @phishing_url)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
