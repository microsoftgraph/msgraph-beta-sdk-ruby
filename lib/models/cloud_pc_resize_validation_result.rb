require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcResizeValidationResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The cloudPC ID that corresponds to its unique identifier.
            @cloud_pc_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Describes a list of the validation result for the Cloud PC resize action. The possible values are: success, cloudPcNotFound, operationCnflict, operationNotSupported, targetLicenseHasAssigned, internalServerError, and unknownFutureValue.
            @validation_result
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
            ## Gets the cloudPcId property value. The cloudPC ID that corresponds to its unique identifier.
            ## @return a string
            ## 
            def cloud_pc_id
                return @cloud_pc_id
            end
            ## 
            ## Sets the cloudPcId property value. The cloudPC ID that corresponds to its unique identifier.
            ## @param value Value to set for the cloudPcId property.
            ## @return a void
            ## 
            def cloud_pc_id=(value)
                @cloud_pc_id = value
            end
            ## 
            ## Instantiates a new cloudPcResizeValidationResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_resize_validation_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcResizeValidationResult.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "cloudPcId" => lambda {|n| @cloud_pc_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "validationResult" => lambda {|n| @validation_result = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcResizeValidationCode) },
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
                writer.write_string_value("cloudPcId", @cloud_pc_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("validationResult", @validation_result)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the validationResult property value. Describes a list of the validation result for the Cloud PC resize action. The possible values are: success, cloudPcNotFound, operationCnflict, operationNotSupported, targetLicenseHasAssigned, internalServerError, and unknownFutureValue.
            ## @return a cloud_pc_resize_validation_code
            ## 
            def validation_result
                return @validation_result
            end
            ## 
            ## Sets the validationResult property value. Describes a list of the validation result for the Cloud PC resize action. The possible values are: success, cloudPcNotFound, operationCnflict, operationNotSupported, targetLicenseHasAssigned, internalServerError, and unknownFutureValue.
            ## @param value Value to set for the validationResult property.
            ## @return a void
            ## 
            def validation_result=(value)
                @validation_result = value
            end
        end
    end
end
