require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class QualityUpdateReference < MicrosoftGraphBeta::Models::WindowsUpdates::WindowsUpdateReference
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Specifies the classification of the referenced content. Supports a subset of the values for qualityUpdateClassification. Possible values are: security, unknownFutureValue.
        @classification
        ## 
        # Specifies a quality update in the given servicingChannel with the given classification by date (i.e. the last update published on the specified date). Default value is security.
        @release_date_time
        ## 
        ## Gets the classification property value. Specifies the classification of the referenced content. Supports a subset of the values for qualityUpdateClassification. Possible values are: security, unknownFutureValue.
        ## @return a quality_update_classification
        ## 
        def classification
            return @classification
        end
        ## 
        ## Sets the classification property value. Specifies the classification of the referenced content. Supports a subset of the values for qualityUpdateClassification. Possible values are: security, unknownFutureValue.
        ## @param value Value to set for the classification property.
        ## @return a void
        ## 
        def classification=(value)
            @classification = value
        end
        ## 
        ## Instantiates a new QualityUpdateReference and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsUpdates.qualityUpdateReference"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a quality_update_reference
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.windowsUpdates.expeditedQualityUpdateReference"
                        return ExpeditedQualityUpdateReference.new
                end
            end
            return QualityUpdateReference.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "classification" => lambda {|n| @classification = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdates::QualityUpdateClassification) },
                "releaseDateTime" => lambda {|n| @release_date_time = n.get_date_time_value() },
            })
        end
        ## 
        ## Gets the releaseDateTime property value. Specifies a quality update in the given servicingChannel with the given classification by date (i.e. the last update published on the specified date). Default value is security.
        ## @return a date_time
        ## 
        def release_date_time
            return @release_date_time
        end
        ## 
        ## Sets the releaseDateTime property value. Specifies a quality update in the given servicingChannel with the given classification by date (i.e. the last update published on the specified date). Default value is security.
        ## @param value Value to set for the releaseDateTime property.
        ## @return a void
        ## 
        def release_date_time=(value)
            @release_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("classification", @classification)
            writer.write_date_time_value("releaseDateTime", @release_date_time)
        end
    end
end
