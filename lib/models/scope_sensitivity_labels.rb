require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ScopeSensitivityLabels
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates the kind of sensitivity label that is included. Possible values: all means all sensitivity labels are allowed, or enumerated means a selected set of sensitivity labels from a single resource application are allowed. Required.
            @label_kind
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
            ## Instantiates a new ScopeSensitivityLabels and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a scope_sensitivity_labels
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.allScopeSensitivityLabels"
                            return AllScopeSensitivityLabels.new
                        when "#microsoft.graph.enumeratedScopeSensitivityLabels"
                            return EnumeratedScopeSensitivityLabels.new
                    end
                end
                return ScopeSensitivityLabels.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "labelKind" => lambda {|n| @label_kind = n.get_enum_value(MicrosoftGraphBeta::Models::LabelKind) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the labelKind property value. Indicates the kind of sensitivity label that is included. Possible values: all means all sensitivity labels are allowed, or enumerated means a selected set of sensitivity labels from a single resource application are allowed. Required.
            ## @return a label_kind
            ## 
            def label_kind
                return @label_kind
            end
            ## 
            ## Sets the labelKind property value. Indicates the kind of sensitivity label that is included. Possible values: all means all sensitivity labels are allowed, or enumerated means a selected set of sensitivity labels from a single resource application are allowed. Required.
            ## @param value Value to set for the labelKind property.
            ## @return a void
            ## 
            def label_kind=(value)
                @label_kind = value
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
                writer.write_enum_value("labelKind", @label_kind)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
