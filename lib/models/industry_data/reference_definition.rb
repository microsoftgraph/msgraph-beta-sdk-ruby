require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './industry_data'

module MicrosoftGraphBeta
    module Models
        module IndustryData
            class ReferenceDefinition < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The code value for the definition that must be unique within the referenceType.
                @code
                ## 
                # The date and time when the definition was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                @created_date_time
                ## 
                # Indicates whether the definition has been disabled.
                @is_disabled
                ## 
                # The date and time when the definition was most recently changed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                @last_modified_date_time
                ## 
                # The categorical type for a collection of enumerated values.
                @reference_type
                ## 
                # The ordering index to present the definitions within a type consistently in user interfaces.
                @sort_index
                ## 
                # The standards body or organization source which defined the code.
                @source
                ## 
                ## Gets the code property value. The code value for the definition that must be unique within the referenceType.
                ## @return a string
                ## 
                def code
                    return @code
                end
                ## 
                ## Sets the code property value. The code value for the definition that must be unique within the referenceType.
                ## @param value Value to set for the code property.
                ## @return a void
                ## 
                def code=(value)
                    @code = value
                end
                ## 
                ## Instantiates a new referenceDefinition and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the createdDateTime property value. The date and time when the definition was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. The date and time when the definition was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                ## @param value Value to set for the createdDateTime property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a reference_definition
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ReferenceDefinition.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "code" => lambda {|n| @code = n.get_string_value() },
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "isDisabled" => lambda {|n| @is_disabled = n.get_boolean_value() },
                        "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                        "referenceType" => lambda {|n| @reference_type = n.get_string_value() },
                        "sortIndex" => lambda {|n| @sort_index = n.get_number_value() },
                        "source" => lambda {|n| @source = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the isDisabled property value. Indicates whether the definition has been disabled.
                ## @return a boolean
                ## 
                def is_disabled
                    return @is_disabled
                end
                ## 
                ## Sets the isDisabled property value. Indicates whether the definition has been disabled.
                ## @param value Value to set for the isDisabled property.
                ## @return a void
                ## 
                def is_disabled=(value)
                    @is_disabled = value
                end
                ## 
                ## Gets the lastModifiedDateTime property value. The date and time when the definition was most recently changed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                ## @return a date_time
                ## 
                def last_modified_date_time
                    return @last_modified_date_time
                end
                ## 
                ## Sets the lastModifiedDateTime property value. The date and time when the definition was most recently changed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                ## @param value Value to set for the lastModifiedDateTime property.
                ## @return a void
                ## 
                def last_modified_date_time=(value)
                    @last_modified_date_time = value
                end
                ## 
                ## Gets the referenceType property value. The categorical type for a collection of enumerated values.
                ## @return a string
                ## 
                def reference_type
                    return @reference_type
                end
                ## 
                ## Sets the referenceType property value. The categorical type for a collection of enumerated values.
                ## @param value Value to set for the referenceType property.
                ## @return a void
                ## 
                def reference_type=(value)
                    @reference_type = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("code", @code)
                    writer.write_boolean_value("isDisabled", @is_disabled)
                    writer.write_string_value("referenceType", @reference_type)
                    writer.write_number_value("sortIndex", @sort_index)
                end
                ## 
                ## Gets the sortIndex property value. The ordering index to present the definitions within a type consistently in user interfaces.
                ## @return a integer
                ## 
                def sort_index
                    return @sort_index
                end
                ## 
                ## Sets the sortIndex property value. The ordering index to present the definitions within a type consistently in user interfaces.
                ## @param value Value to set for the sortIndex property.
                ## @return a void
                ## 
                def sort_index=(value)
                    @sort_index = value
                end
                ## 
                ## Gets the source property value. The standards body or organization source which defined the code.
                ## @return a string
                ## 
                def source
                    return @source
                end
                ## 
                ## Sets the source property value. The standards body or organization source which defined the code.
                ## @param value Value to set for the source property.
                ## @return a void
                ## 
                def source=(value)
                    @source = value
                end
            end
        end
    end
end
