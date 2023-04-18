require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Remote help - response we provide back to the helper after getting response from pubSub
        class RequestRemoteHelpSessionAccessResponse
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # AES encryption Initialization Vector for encrypting client messages sent to PubSub
            @pub_sub_encryption
            ## 
            # The unique identifier for encrypting client messages sent to PubSub
            @pub_sub_encryption_key
            ## 
            # The unique identifier for a session
            @session_key
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new requestRemoteHelpSessionAccessResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a request_remote_help_session_access_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RequestRemoteHelpSessionAccessResponse.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "pubSubEncryption" => lambda {|n| @pub_sub_encryption = n.get_string_value() },
                    "pubSubEncryptionKey" => lambda {|n| @pub_sub_encryption_key = n.get_string_value() },
                    "sessionKey" => lambda {|n| @session_key = n.get_string_value() },
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the pubSubEncryption property value. AES encryption Initialization Vector for encrypting client messages sent to PubSub
            ## @return a string
            ## 
            def pub_sub_encryption
                return @pub_sub_encryption
            end
            ## 
            ## Sets the pubSubEncryption property value. AES encryption Initialization Vector for encrypting client messages sent to PubSub
            ## @param value Value to set for the pub_sub_encryption property.
            ## @return a void
            ## 
            def pub_sub_encryption=(value)
                @pub_sub_encryption = value
            end
            ## 
            ## Gets the pubSubEncryptionKey property value. The unique identifier for encrypting client messages sent to PubSub
            ## @return a string
            ## 
            def pub_sub_encryption_key
                return @pub_sub_encryption_key
            end
            ## 
            ## Sets the pubSubEncryptionKey property value. The unique identifier for encrypting client messages sent to PubSub
            ## @param value Value to set for the pub_sub_encryption_key property.
            ## @return a void
            ## 
            def pub_sub_encryption_key=(value)
                @pub_sub_encryption_key = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("pubSubEncryption", @pub_sub_encryption)
                writer.write_string_value("pubSubEncryptionKey", @pub_sub_encryption_key)
                writer.write_string_value("sessionKey", @session_key)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sessionKey property value. The unique identifier for a session
            ## @return a string
            ## 
            def session_key
                return @session_key
            end
            ## 
            ## Sets the sessionKey property value. The unique identifier for a session
            ## @param value Value to set for the session_key property.
            ## @return a void
            ## 
            def session_key=(value)
                @session_key = value
            end
        end
    end
end
