require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcStatusDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # More information about the Cloud PC status. For example, 'additionalInformation': ['{'@odata.type': 'microsoft.graph.keyValuePair','name': 'retriable','value': true }] '
            @additional_information
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The error/warning code associated with the Cloud PC status. Example: 'code': 'internalServerError'.
            @code
            ## 
            # The status message associated with error code. Example: 'message': 'There was an internal server error. Please contact support xxx.'.
            @message
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
            ## Gets the additionalInformation property value. More information about the Cloud PC status. For example, 'additionalInformation': ['{'@odata.type': 'microsoft.graph.keyValuePair','name': 'retriable','value': true }] '
            ## @return a key_value_pair
            ## 
            def additional_information
                return @additional_information
            end
            ## 
            ## Sets the additionalInformation property value. More information about the Cloud PC status. For example, 'additionalInformation': ['{'@odata.type': 'microsoft.graph.keyValuePair','name': 'retriable','value': true }] '
            ## @param value Value to set for the additionalInformation property.
            ## @return a void
            ## 
            def additional_information=(value)
                @additional_information = value
            end
            ## 
            ## Gets the code property value. The error/warning code associated with the Cloud PC status. Example: 'code': 'internalServerError'.
            ## @return a string
            ## 
            def code
                return @code
            end
            ## 
            ## Sets the code property value. The error/warning code associated with the Cloud PC status. Example: 'code': 'internalServerError'.
            ## @param value Value to set for the code property.
            ## @return a void
            ## 
            def code=(value)
                @code = value
            end
            ## 
            ## Instantiates a new CloudPcStatusDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_status_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcStatusDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "additionalInformation" => lambda {|n| @additional_information = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "code" => lambda {|n| @code = n.get_string_value() },
                    "message" => lambda {|n| @message = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the message property value. The status message associated with error code. Example: 'message': 'There was an internal server error. Please contact support xxx.'.
            ## @return a string
            ## 
            def message
                return @message
            end
            ## 
            ## Sets the message property value. The status message associated with error code. Example: 'message': 'There was an internal server error. Please contact support xxx.'.
            ## @param value Value to set for the message property.
            ## @return a void
            ## 
            def message=(value)
                @message = value
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
                writer.write_collection_of_object_values("additionalInformation", @additional_information)
                writer.write_string_value("code", @code)
                writer.write_string_value("message", @message)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
