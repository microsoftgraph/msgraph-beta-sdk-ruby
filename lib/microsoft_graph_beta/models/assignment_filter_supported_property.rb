require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Represents the information about the property which is supported in crafting the rule of AssignmentFilter.
    class AssignmentFilterSupportedProperty
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The data type of the property.
        @data_type
        ## 
        # Indicates whether the property is a collection type or not.
        @is_collection
        ## 
        # Name of the property.
        @name
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Regex string to do validation on the property value.
        @property_regex_constraint
        ## 
        # List of all supported operators on this property.
        @supported_operators
        ## 
        # List of all supported values for this propery, empty if everything is supported.
        @supported_values
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
        ## Instantiates a new assignmentFilterSupportedProperty and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a assignment_filter_supported_property
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AssignmentFilterSupportedProperty.new
        end
        ## 
        ## Gets the dataType property value. The data type of the property.
        ## @return a string
        ## 
        def data_type
            return @data_type
        end
        ## 
        ## Sets the dataType property value. The data type of the property.
        ## @param value Value to set for the dataType property.
        ## @return a void
        ## 
        def data_type=(value)
            @data_type = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "dataType" => lambda {|n| @data_type = n.get_string_value() },
                "isCollection" => lambda {|n| @is_collection = n.get_boolean_value() },
                "name" => lambda {|n| @name = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "propertyRegexConstraint" => lambda {|n| @property_regex_constraint = n.get_string_value() },
                "supportedOperators" => lambda {|n| @supported_operators = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AssignmentFilterOperator.create_from_discriminator_value(pn) }) },
                "supportedValues" => lambda {|n| @supported_values = n.get_collection_of_primitive_values(String) },
            }
        end
        ## 
        ## Gets the isCollection property value. Indicates whether the property is a collection type or not.
        ## @return a boolean
        ## 
        def is_collection
            return @is_collection
        end
        ## 
        ## Sets the isCollection property value. Indicates whether the property is a collection type or not.
        ## @param value Value to set for the isCollection property.
        ## @return a void
        ## 
        def is_collection=(value)
            @is_collection = value
        end
        ## 
        ## Gets the name property value. Name of the property.
        ## @return a string
        ## 
        def name
            return @name
        end
        ## 
        ## Sets the name property value. Name of the property.
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the propertyRegexConstraint property value. Regex string to do validation on the property value.
        ## @return a string
        ## 
        def property_regex_constraint
            return @property_regex_constraint
        end
        ## 
        ## Sets the propertyRegexConstraint property value. Regex string to do validation on the property value.
        ## @param value Value to set for the propertyRegexConstraint property.
        ## @return a void
        ## 
        def property_regex_constraint=(value)
            @property_regex_constraint = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("dataType", @data_type)
            writer.write_boolean_value("isCollection", @is_collection)
            writer.write_string_value("name", @name)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("propertyRegexConstraint", @property_regex_constraint)
            writer.write_collection_of_object_values("supportedOperators", @supported_operators)
            writer.write_collection_of_primitive_values("supportedValues", @supported_values)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the supportedOperators property value. List of all supported operators on this property.
        ## @return a assignment_filter_operator
        ## 
        def supported_operators
            return @supported_operators
        end
        ## 
        ## Sets the supportedOperators property value. List of all supported operators on this property.
        ## @param value Value to set for the supportedOperators property.
        ## @return a void
        ## 
        def supported_operators=(value)
            @supported_operators = value
        end
        ## 
        ## Gets the supportedValues property value. List of all supported values for this propery, empty if everything is supported.
        ## @return a string
        ## 
        def supported_values
            return @supported_values
        end
        ## 
        ## Sets the supportedValues property value. List of all supported values for this propery, empty if everything is supported.
        ## @param value Value to set for the supportedValues property.
        ## @return a void
        ## 
        def supported_values=(value)
            @supported_values = value
        end
    end
end
