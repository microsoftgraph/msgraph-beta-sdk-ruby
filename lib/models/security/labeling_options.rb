require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class LabelingOptions
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The assignmentMethod property
                @assignment_method
                ## 
                # The downgrade justification object that indicates if downgrade was justified and, if so, the reason.
                @downgrade_justification
                ## 
                # Extended properties will be parsed and returned in the standard Microsoft Purview Information Protection labeled metadata format as part of the label information.
                @extended_properties
                ## 
                # The GUID of the label that should be applied to the information.
                @label_id
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
                ## @param value Value to set for the additionalData property.
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
                ## @param value Value to set for the assignmentMethod property.
                ## @return a void
                ## 
                def assignment_method=(value)
                    @assignment_method = value
                end
                ## 
                ## Instantiates a new labelingOptions and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a labeling_options
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LabelingOptions.new
                end
                ## 
                ## Gets the downgradeJustification property value. The downgrade justification object that indicates if downgrade was justified and, if so, the reason.
                ## @return a downgrade_justification
                ## 
                def downgrade_justification
                    return @downgrade_justification
                end
                ## 
                ## Sets the downgradeJustification property value. The downgrade justification object that indicates if downgrade was justified and, if so, the reason.
                ## @param value Value to set for the downgradeJustification property.
                ## @return a void
                ## 
                def downgrade_justification=(value)
                    @downgrade_justification = value
                end
                ## 
                ## Gets the extendedProperties property value. Extended properties will be parsed and returned in the standard Microsoft Purview Information Protection labeled metadata format as part of the label information.
                ## @return a key_value_pair
                ## 
                def extended_properties
                    return @extended_properties
                end
                ## 
                ## Sets the extendedProperties property value. Extended properties will be parsed and returned in the standard Microsoft Purview Information Protection labeled metadata format as part of the label information.
                ## @param value Value to set for the extendedProperties property.
                ## @return a void
                ## 
                def extended_properties=(value)
                    @extended_properties = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "assignmentMethod" => lambda {|n| @assignment_method = n.get_enum_value(MicrosoftGraphBeta::Models::Security::AssignmentMethod) },
                        "downgradeJustification" => lambda {|n| @downgrade_justification = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::DowngradeJustification.create_from_discriminator_value(pn) }) },
                        "extendedProperties" => lambda {|n| @extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::KeyValuePair.create_from_discriminator_value(pn) }) },
                        "labelId" => lambda {|n| @label_id = n.get_string_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the labelId property value. The GUID of the label that should be applied to the information.
                ## @return a string
                ## 
                def label_id
                    return @label_id
                end
                ## 
                ## Sets the labelId property value. The GUID of the label that should be applied to the information.
                ## @param value Value to set for the labelId property.
                ## @return a void
                ## 
                def label_id=(value)
                    @label_id = value
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
                    writer.write_enum_value("assignmentMethod", @assignment_method)
                    writer.write_object_value("downgradeJustification", @downgrade_justification)
                    writer.write_collection_of_object_values("extendedProperties", @extended_properties)
                    writer.write_string_value("labelId", @label_id)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
