require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta
    module Models
        module WindowsUpdates
            class QualityUpdateCatalogEntry < MicrosoftGraphBeta::Models::WindowsUpdates::SoftwareUpdateCatalogEntry
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Indicates whether the content can be deployed as an expedited quality update. Read-only.
                @is_expeditable
                ## 
                # The qualityUpdateClassification property
                @quality_update_classification
                ## 
                ## Instantiates a new QualityUpdateCatalogEntry and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a quality_update_catalog_entry
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return QualityUpdateCatalogEntry.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "isExpeditable" => lambda {|n| @is_expeditable = n.get_boolean_value() },
                        "qualityUpdateClassification" => lambda {|n| @quality_update_classification = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdates::QualityUpdateClassification) },
                    })
                end
                ## 
                ## Gets the isExpeditable property value. Indicates whether the content can be deployed as an expedited quality update. Read-only.
                ## @return a boolean
                ## 
                def is_expeditable
                    return @is_expeditable
                end
                ## 
                ## Sets the isExpeditable property value. Indicates whether the content can be deployed as an expedited quality update. Read-only.
                ## @param value Value to set for the is_expeditable property.
                ## @return a void
                ## 
                def is_expeditable=(value)
                    @is_expeditable = value
                end
                ## 
                ## Gets the qualityUpdateClassification property value. The qualityUpdateClassification property
                ## @return a quality_update_classification
                ## 
                def quality_update_classification
                    return @quality_update_classification
                end
                ## 
                ## Sets the qualityUpdateClassification property value. The qualityUpdateClassification property
                ## @param value Value to set for the quality_update_classification property.
                ## @return a void
                ## 
                def quality_update_classification=(value)
                    @quality_update_classification = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_boolean_value("isExpeditable", @is_expeditable)
                    writer.write_enum_value("qualityUpdateClassification", @quality_update_classification)
                end
            end
        end
    end
end
