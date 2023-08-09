require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './security/security'

module MicrosoftGraphBeta
    module Models
        class SecurityContentLabel
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The assignmentMethod property
            @assignment_method
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The sensitivityLabelId property
            @sensitivity_label_id
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
            ## Gets the assignmentMethod property value. The assignmentMethod property
            ## @return a security_assignment_method
            ## 
            def assignment_method
                return @assignment_method
            end
            ## 
            ## Sets the assignmentMethod property value. The assignmentMethod property
            ## @param value Value to set for the assignmentMethod property.
            ## @return a void
            ## 
            def assignment_method=(value)
                @assignment_method = value
            end
            ## 
            ## Instantiates a new contentLabel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_content_label
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityContentLabel.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "assignmentMethod" => lambda {|n| @assignment_method = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityAssignmentMethod) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sensitivityLabelId" => lambda {|n| @sensitivity_label_id = n.get_string_value() },
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
            ## Gets the sensitivityLabelId property value. The sensitivityLabelId property
            ## @return a string
            ## 
            def sensitivity_label_id
                return @sensitivity_label_id
            end
            ## 
            ## Sets the sensitivityLabelId property value. The sensitivityLabelId property
            ## @param value Value to set for the sensitivityLabelId property.
            ## @return a void
            ## 
            def sensitivity_label_id=(value)
                @sensitivity_label_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("assignmentMethod", @assignment_method)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("sensitivityLabelId", @sensitivity_label_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
