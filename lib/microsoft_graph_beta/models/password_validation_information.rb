require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PasswordValidationInformation
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Specifies whether the password is valid based on the calculation of the results in the validationResults property. Not nullable. Read-only.
        @is_valid
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The list of password validation rules and whether the password passed those rules. Not nullable. Read-only.
        @validation_results
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
        ## Instantiates a new passwordValidationInformation and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a password_validation_information
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PasswordValidationInformation.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "isValid" => lambda {|n| @is_valid = n.get_boolean_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "validationResults" => lambda {|n| @validation_results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ValidationResult.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the isValid property value. Specifies whether the password is valid based on the calculation of the results in the validationResults property. Not nullable. Read-only.
        ## @return a boolean
        ## 
        def is_valid
            return @is_valid
        end
        ## 
        ## Sets the isValid property value. Specifies whether the password is valid based on the calculation of the results in the validationResults property. Not nullable. Read-only.
        ## @param value Value to set for the isValid property.
        ## @return a void
        ## 
        def is_valid=(value)
            @is_valid = value
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
        ## @param value Value to set for the OdataType property.
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
            writer.write_boolean_value("isValid", @is_valid)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_collection_of_object_values("validationResults", @validation_results)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the validationResults property value. The list of password validation rules and whether the password passed those rules. Not nullable. Read-only.
        ## @return a validation_result
        ## 
        def validation_results
            return @validation_results
        end
        ## 
        ## Sets the validationResults property value. The list of password validation rules and whether the password passed those rules. Not nullable. Read-only.
        ## @param value Value to set for the validationResults property.
        ## @return a void
        ## 
        def validation_results=(value)
            @validation_results = value
        end
    end
end
