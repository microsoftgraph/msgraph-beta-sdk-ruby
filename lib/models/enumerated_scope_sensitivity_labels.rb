require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EnumeratedScopeSensitivityLabels < MicrosoftGraphBeta::Models::ScopeSensitivityLabels
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The sensitivity labels that are applicable to the scope type and have been preapproved. Required.
            @sensitivity_labels
            ## 
            ## Instantiates a new EnumeratedScopeSensitivityLabels and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.enumeratedScopeSensitivityLabels"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a enumerated_scope_sensitivity_labels
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EnumeratedScopeSensitivityLabels.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "sensitivityLabels" => lambda {|n| @sensitivity_labels = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the sensitivityLabels property value. The sensitivity labels that are applicable to the scope type and have been preapproved. Required.
            ## @return a string
            ## 
            def sensitivity_labels
                return @sensitivity_labels
            end
            ## 
            ## Sets the sensitivityLabels property value. The sensitivity labels that are applicable to the scope type and have been preapproved. Required.
            ## @param value Value to set for the sensitivityLabels property.
            ## @return a void
            ## 
            def sensitivity_labels=(value)
                @sensitivity_labels = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("sensitivityLabels", @sensitivity_labels)
            end
        end
    end
end
