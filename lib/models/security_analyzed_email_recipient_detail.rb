require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityAnalyzedEmailRecipientDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The ccRecipients property
            @cc_recipients
            ## 
            # The domainName property
            @domain_name
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
            ## Gets the ccRecipients property value. The ccRecipients property
            ## @return a string
            ## 
            def cc_recipients
                return @cc_recipients
            end
            ## 
            ## Sets the ccRecipients property value. The ccRecipients property
            ## @param value Value to set for the ccRecipients property.
            ## @return a void
            ## 
            def cc_recipients=(value)
                @cc_recipients = value
            end
            ## 
            ## Instantiates a new SecurityAnalyzedEmailRecipientDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_analyzed_email_recipient_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityAnalyzedEmailRecipientDetail.new
            end
            ## 
            ## Gets the domainName property value. The domainName property
            ## @return a string
            ## 
            def domain_name
                return @domain_name
            end
            ## 
            ## Sets the domainName property value. The domainName property
            ## @param value Value to set for the domainName property.
            ## @return a void
            ## 
            def domain_name=(value)
                @domain_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "ccRecipients" => lambda {|n| @cc_recipients = n.get_collection_of_primitive_values(String) },
                    "domainName" => lambda {|n| @domain_name = n.get_string_value() },
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
                writer.write_collection_of_primitive_values("ccRecipients", @cc_recipients)
                writer.write_string_value("domainName", @domain_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
