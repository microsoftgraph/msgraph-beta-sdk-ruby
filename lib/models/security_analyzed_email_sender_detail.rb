require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityAnalyzedEmailSenderDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The sender email address in the mail From header, also known as the envelope sender or the P1 sender.
            @from_address
            ## 
            # The IPv4 address of the last detected mail server that relayed the message.
            @ipv4
            ## 
            # The sender email address in the From header, which is visible to email recipients on their email clients. Also known as P2 sender.
            @mail_from_address
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
            ## Instantiates a new SecurityAnalyzedEmailSenderDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_analyzed_email_sender_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityAnalyzedEmailSenderDetail.new
            end
            ## 
            ## Gets the fromAddress property value. The sender email address in the mail From header, also known as the envelope sender or the P1 sender.
            ## @return a string
            ## 
            def from_address
                return @from_address
            end
            ## 
            ## Sets the fromAddress property value. The sender email address in the mail From header, also known as the envelope sender or the P1 sender.
            ## @param value Value to set for the fromAddress property.
            ## @return a void
            ## 
            def from_address=(value)
                @from_address = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "fromAddress" => lambda {|n| @from_address = n.get_string_value() },
                    "ipv4" => lambda {|n| @ipv4 = n.get_string_value() },
                    "mailFromAddress" => lambda {|n| @mail_from_address = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the ipv4 property value. The IPv4 address of the last detected mail server that relayed the message.
            ## @return a string
            ## 
            def ipv4
                return @ipv4
            end
            ## 
            ## Sets the ipv4 property value. The IPv4 address of the last detected mail server that relayed the message.
            ## @param value Value to set for the ipv4 property.
            ## @return a void
            ## 
            def ipv4=(value)
                @ipv4 = value
            end
            ## 
            ## Gets the mailFromAddress property value. The sender email address in the From header, which is visible to email recipients on their email clients. Also known as P2 sender.
            ## @return a string
            ## 
            def mail_from_address
                return @mail_from_address
            end
            ## 
            ## Sets the mailFromAddress property value. The sender email address in the From header, which is visible to email recipients on their email clients. Also known as P2 sender.
            ## @param value Value to set for the mailFromAddress property.
            ## @return a void
            ## 
            def mail_from_address=(value)
                @mail_from_address = value
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
                writer.write_string_value("fromAddress", @from_address)
                writer.write_string_value("ipv4", @ipv4)
                writer.write_string_value("mailFromAddress", @mail_from_address)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
