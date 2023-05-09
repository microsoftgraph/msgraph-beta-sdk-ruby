require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class LabelsRoot < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The retentionLabels property
                @retention_labels
                ## 
                ## Instantiates a new labelsRoot and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a labels_root
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LabelsRoot.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "retentionLabels" => lambda {|n| @retention_labels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::RetentionLabel.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the retentionLabels property value. The retentionLabels property
                ## @return a retention_label
                ## 
                def retention_labels
                    return @retention_labels
                end
                ## 
                ## Sets the retentionLabels property value. The retentionLabels property
                ## @param value Value to set for the retention_labels property.
                ## @return a void
                ## 
                def retention_labels=(value)
                    @retention_labels = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_collection_of_object_values("retentionLabels", @retention_labels)
                end
            end
        end
    end
end
