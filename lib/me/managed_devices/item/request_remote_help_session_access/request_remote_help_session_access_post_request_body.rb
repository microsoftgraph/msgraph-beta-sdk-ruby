require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../me'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './request_remote_help_session_access'

module MicrosoftGraphBeta
    module Me
        module ManagedDevices
            module Item
                module RequestRemoteHelpSessionAccess
                    class RequestRemoteHelpSessionAccessPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The pubSubConnectionId property
                        @pub_sub_connection_id
                        ## 
                        # The sessionKey property
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
                        ## Instantiates a new requestRemoteHelpSessionAccessPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a request_remote_help_session_access_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return RequestRemoteHelpSessionAccessPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "pubSubConnectionId" => lambda {|n| @pub_sub_connection_id = n.get_string_value() },
                                "sessionKey" => lambda {|n| @session_key = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the pubSubConnectionId property value. The pubSubConnectionId property
                        ## @return a string
                        ## 
                        def pub_sub_connection_id
                            return @pub_sub_connection_id
                        end
                        ## 
                        ## Sets the pubSubConnectionId property value. The pubSubConnectionId property
                        ## @param value Value to set for the pub_sub_connection_id property.
                        ## @return a void
                        ## 
                        def pub_sub_connection_id=(value)
                            @pub_sub_connection_id = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("pubSubConnectionId", @pub_sub_connection_id)
                            writer.write_string_value("sessionKey", @session_key)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the sessionKey property value. The sessionKey property
                        ## @return a string
                        ## 
                        def session_key
                            return @session_key
                        end
                        ## 
                        ## Sets the sessionKey property value. The sessionKey property
                        ## @param value Value to set for the session_key property.
                        ## @return a void
                        ## 
                        def session_key=(value)
                            @session_key = value
                        end
                    end
                end
            end
        end
    end
end
