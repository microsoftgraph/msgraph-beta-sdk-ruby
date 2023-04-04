require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../device_management'
require_relative '../../../../microsoft_tunnel_sites'
require_relative '../../../item'
require_relative '../../microsoft_tunnel_servers'
require_relative '../item'
require_relative './create_server_log_collection_request'

module MicrosoftGraphBeta
    module DeviceManagement
        module MicrosoftTunnelSites
            module Item
                module MicrosoftTunnelServers
                    module Item
                        module CreateServerLogCollectionRequest
                            class CreateServerLogCollectionRequestPostRequestBody
                                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                ## 
                                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                @additional_data
                                ## 
                                # The endDateTime property
                                @end_date_time
                                ## 
                                # The startDateTime property
                                @start_date_time
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
                                ## Instantiates a new createServerLogCollectionRequestPostRequestBody and sets the default values.
                                ## @return a void
                                ## 
                                def initialize()
                                    @additional_data = Hash.new
                                end
                                ## 
                                ## Creates a new instance of the appropriate class based on discriminator value
                                ## @param parse_node The parse node to use to read the discriminator value and create the object
                                ## @return a create_server_log_collection_request_post_request_body
                                ## 
                                def self.create_from_discriminator_value(parse_node)
                                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                    return CreateServerLogCollectionRequestPostRequestBody.new
                                end
                                ## 
                                ## Gets the endDateTime property value. The endDateTime property
                                ## @return a date_time
                                ## 
                                def end_date_time
                                    return @end_date_time
                                end
                                ## 
                                ## Sets the endDateTime property value. The endDateTime property
                                ## @param value Value to set for the end_date_time property.
                                ## @return a void
                                ## 
                                def end_date_time=(value)
                                    @end_date_time = value
                                end
                                ## 
                                ## The deserialization information for the current model
                                ## @return a i_dictionary
                                ## 
                                def get_field_deserializers()
                                    return {
                                        "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                                        "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                                    }
                                end
                                ## 
                                ## Serializes information the current object
                                ## @param writer Serialization writer to use to serialize this model
                                ## @return a void
                                ## 
                                def serialize(writer)
                                    raise StandardError, 'writer cannot be null' if writer.nil?
                                    writer.write_date_time_value("endDateTime", @end_date_time)
                                    writer.write_date_time_value("startDateTime", @start_date_time)
                                    writer.write_additional_data(@additional_data)
                                end
                                ## 
                                ## Gets the startDateTime property value. The startDateTime property
                                ## @return a date_time
                                ## 
                                def start_date_time
                                    return @start_date_time
                                end
                                ## 
                                ## Sets the startDateTime property value. The startDateTime property
                                ## @param value Value to set for the start_date_time property.
                                ## @return a void
                                ## 
                                def start_date_time=(value)
                                    @start_date_time = value
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
