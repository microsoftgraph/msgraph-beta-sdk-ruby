require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityAnalyzedEmailAuthenticationDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The compositeAuthentication property
            @composite_authentication
            ## 
            # The dkim property
            @dkim
            ## 
            # The dmarc property
            @dmarc
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The senderPolicyFramework property
            @sender_policy_framework
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
            ## Gets the compositeAuthentication property value. The compositeAuthentication property
            ## @return a string
            ## 
            def composite_authentication
                return @composite_authentication
            end
            ## 
            ## Sets the compositeAuthentication property value. The compositeAuthentication property
            ## @param value Value to set for the compositeAuthentication property.
            ## @return a void
            ## 
            def composite_authentication=(value)
                @composite_authentication = value
            end
            ## 
            ## Instantiates a new securityAnalyzedEmailAuthenticationDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_analyzed_email_authentication_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityAnalyzedEmailAuthenticationDetail.new
            end
            ## 
            ## Gets the dkim property value. The dkim property
            ## @return a string
            ## 
            def dkim
                return @dkim
            end
            ## 
            ## Sets the dkim property value. The dkim property
            ## @param value Value to set for the dkim property.
            ## @return a void
            ## 
            def dkim=(value)
                @dkim = value
            end
            ## 
            ## Gets the dmarc property value. The dmarc property
            ## @return a string
            ## 
            def dmarc
                return @dmarc
            end
            ## 
            ## Sets the dmarc property value. The dmarc property
            ## @param value Value to set for the dmarc property.
            ## @return a void
            ## 
            def dmarc=(value)
                @dmarc = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "compositeAuthentication" => lambda {|n| @composite_authentication = n.get_string_value() },
                    "dkim" => lambda {|n| @dkim = n.get_string_value() },
                    "dmarc" => lambda {|n| @dmarc = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "senderPolicyFramework" => lambda {|n| @sender_policy_framework = n.get_string_value() },
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
            ## Gets the senderPolicyFramework property value. The senderPolicyFramework property
            ## @return a string
            ## 
            def sender_policy_framework
                return @sender_policy_framework
            end
            ## 
            ## Sets the senderPolicyFramework property value. The senderPolicyFramework property
            ## @param value Value to set for the senderPolicyFramework property.
            ## @return a void
            ## 
            def sender_policy_framework=(value)
                @sender_policy_framework = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("compositeAuthentication", @composite_authentication)
                writer.write_string_value("dkim", @dkim)
                writer.write_string_value("dmarc", @dmarc)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("senderPolicyFramework", @sender_policy_framework)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
