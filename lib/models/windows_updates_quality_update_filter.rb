require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesQualityUpdateFilter < MicrosoftGraphBeta::Models::WindowsUpdatesWindowsUpdateFilter
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The cadence property
            @cadence
            ## 
            # The classification property
            @classification
            ## 
            ## Gets the cadence property value. The cadence property
            ## @return a windows_updates_quality_update_cadence
            ## 
            def cadence
                return @cadence
            end
            ## 
            ## Sets the cadence property value. The cadence property
            ## @param value Value to set for the cadence property.
            ## @return a void
            ## 
            def cadence=(value)
                @cadence = value
            end
            ## 
            ## Gets the classification property value. The classification property
            ## @return a windows_updates_quality_update_classification
            ## 
            def classification
                return @classification
            end
            ## 
            ## Sets the classification property value. The classification property
            ## @param value Value to set for the classification property.
            ## @return a void
            ## 
            def classification=(value)
                @classification = value
            end
            ## 
            ## Instantiates a new WindowsUpdatesQualityUpdateFilter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsUpdates.qualityUpdateFilter"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_quality_update_filter
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesQualityUpdateFilter.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "cadence" => lambda {|n| @cadence = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdatesQualityUpdateCadence) },
                    "classification" => lambda {|n| @classification = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdatesQualityUpdateClassification) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("cadence", @cadence)
                writer.write_enum_value("classification", @classification)
            end
        end
    end
end
