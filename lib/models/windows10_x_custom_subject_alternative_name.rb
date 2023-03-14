require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Base Profile Type for Authentication Certificates (SCEP or PFX Create)
        class Windows10XCustomSubjectAlternativeName
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Custom SAN Name
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Subject Alternative Name Options.
            @san_type
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
            ## Instantiates a new windows10XCustomSubjectAlternativeName and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows10_x_custom_subject_alternative_name
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10XCustomSubjectAlternativeName.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sanType" => lambda {|n| @san_type = n.get_enum_value(MicrosoftGraphBeta::Models::SubjectAlternativeNameType) },
                }
            end
            ## 
            ## Gets the name property value. Custom SAN Name
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Custom SAN Name
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## Gets the sanType property value. Subject Alternative Name Options.
            ## @return a subject_alternative_name_type
            ## 
            def san_type
                return @san_type
            end
            ## 
            ## Sets the sanType property value. Subject Alternative Name Options.
            ## @param value Value to set for the san_type property.
            ## @return a void
            ## 
            def san_type=(value)
                @san_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("sanType", @san_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
