require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PasswordSingleSignOnField
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Title/label override for customization.
        @customized_label
        ## 
        # Label that would be used if no customizedLabel is provided. Read only.
        @default_label
        ## 
        # Id used to identity the field type. This is an internal id and possible values are param_1, param_2, param_userName, param_password.
        @field_id
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Type of the credential. The values can be text, password.
        @type
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
        ## Instantiates a new passwordSingleSignOnField and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a password_single_sign_on_field
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PasswordSingleSignOnField.new
        end
        ## 
        ## Gets the customizedLabel property value. Title/label override for customization.
        ## @return a string
        ## 
        def customized_label
            return @customized_label
        end
        ## 
        ## Sets the customizedLabel property value. Title/label override for customization.
        ## @param value Value to set for the customizedLabel property.
        ## @return a void
        ## 
        def customized_label=(value)
            @customized_label = value
        end
        ## 
        ## Gets the defaultLabel property value. Label that would be used if no customizedLabel is provided. Read only.
        ## @return a string
        ## 
        def default_label
            return @default_label
        end
        ## 
        ## Sets the defaultLabel property value. Label that would be used if no customizedLabel is provided. Read only.
        ## @param value Value to set for the defaultLabel property.
        ## @return a void
        ## 
        def default_label=(value)
            @default_label = value
        end
        ## 
        ## Gets the fieldId property value. Id used to identity the field type. This is an internal id and possible values are param_1, param_2, param_userName, param_password.
        ## @return a string
        ## 
        def field_id
            return @field_id
        end
        ## 
        ## Sets the fieldId property value. Id used to identity the field type. This is an internal id and possible values are param_1, param_2, param_userName, param_password.
        ## @param value Value to set for the fieldId property.
        ## @return a void
        ## 
        def field_id=(value)
            @field_id = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "customizedLabel" => lambda {|n| @customized_label = n.get_string_value() },
                "defaultLabel" => lambda {|n| @default_label = n.get_string_value() },
                "fieldId" => lambda {|n| @field_id = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "type" => lambda {|n| @type = n.get_string_value() },
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
            writer.write_string_value("customizedLabel", @customized_label)
            writer.write_string_value("defaultLabel", @default_label)
            writer.write_string_value("fieldId", @field_id)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("type", @type)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the type property value. Type of the credential. The values can be text, password.
        ## @return a string
        ## 
        def type
            return @type
        end
        ## 
        ## Sets the type property value. Type of the credential. The values can be text, password.
        ## @param value Value to set for the type property.
        ## @return a void
        ## 
        def type=(value)
            @type = value
        end
    end
end
