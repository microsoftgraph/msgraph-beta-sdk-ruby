require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class InformationProtectionContentLabel
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The assignmentMethod property
        @assignment_method
        ## 
        # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        @creation_date_time
        ## 
        # Details on the label that is currently applied to the file.
        @label
        ## 
        # The OdataType property
        @odata_type
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
        ## Gets the assignmentMethod property value. The assignmentMethod property
        ## @return a assignment_method
        ## 
        def assignment_method
            return @assignment_method
        end
        ## 
        ## Sets the assignmentMethod property value. The assignmentMethod property
        ## @param value Value to set for the assignment_method property.
        ## @return a void
        ## 
        def assignment_method=(value)
            @assignment_method = value
        end
        ## 
        ## Instantiates a new informationProtectionContentLabel and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a information_protection_content_label
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return InformationProtectionContentLabel.new
        end
        ## 
        ## Gets the creationDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @return a date_time
        ## 
        def creation_date_time
            return @creation_date_time
        end
        ## 
        ## Sets the creationDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @param value Value to set for the creation_date_time property.
        ## @return a void
        ## 
        def creation_date_time=(value)
            @creation_date_time = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "assignmentMethod" => lambda {|n| @assignment_method = n.get_enum_value(MicrosoftGraphBeta::Models::AssignmentMethod) },
                "creationDateTime" => lambda {|n| @creation_date_time = n.get_date_time_value() },
                "label" => lambda {|n| @label = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LabelDetails.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the label property value. Details on the label that is currently applied to the file.
        ## @return a label_details
        ## 
        def label
            return @label
        end
        ## 
        ## Sets the label property value. Details on the label that is currently applied to the file.
        ## @param value Value to set for the label property.
        ## @return a void
        ## 
        def label=(value)
            @label = value
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
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_enum_value("assignmentMethod", @assignment_method)
            writer.write_date_time_value("creationDateTime", @creation_date_time)
            writer.write_object_value("label", @label)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
