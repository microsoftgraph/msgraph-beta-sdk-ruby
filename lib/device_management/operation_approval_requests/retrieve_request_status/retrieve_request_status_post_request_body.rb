require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../device_management'
require_relative '../operation_approval_requests'
require_relative './retrieve_request_status'

module MicrosoftGraphBeta
    module DeviceManagement
        module OperationApprovalRequests
            module RetrieveRequestStatus
                class RetrieveRequestStatusPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The entityId property
                    @entity_id
                    ## 
                    # The entityType property
                    @entity_type
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
                    ## Instantiates a new retrieveRequestStatusPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a retrieve_request_status_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return RetrieveRequestStatusPostRequestBody.new
                    end
                    ## 
                    ## Gets the entityId property value. The entityId property
                    ## @return a string
                    ## 
                    def entity_id
                        return @entity_id
                    end
                    ## 
                    ## Sets the entityId property value. The entityId property
                    ## @param value Value to set for the entityId property.
                    ## @return a void
                    ## 
                    def entity_id=(value)
                        @entity_id = value
                    end
                    ## 
                    ## Gets the entityType property value. The entityType property
                    ## @return a string
                    ## 
                    def entity_type
                        return @entity_type
                    end
                    ## 
                    ## Sets the entityType property value. The entityType property
                    ## @param value Value to set for the entityType property.
                    ## @return a void
                    ## 
                    def entity_type=(value)
                        @entity_type = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "entityId" => lambda {|n| @entity_id = n.get_string_value() },
                            "entityType" => lambda {|n| @entity_type = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("entityId", @entity_id)
                        writer.write_string_value("entityType", @entity_type)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
