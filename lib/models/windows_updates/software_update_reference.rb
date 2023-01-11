require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class SoftwareUpdateReference < MicrosoftGraphBeta::Models::WindowsUpdates::DeployableContent
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        ## Instantiates a new SoftwareUpdateReference and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsUpdates.softwareUpdateReference"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a software_update_reference
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.windowsUpdates.expeditedQualityUpdateReference"
                        return ExpeditedQualityUpdateReference.new
                    when "#microsoft.graph.windowsUpdates.featureUpdateReference"
                        return FeatureUpdateReference.new
                    when "#microsoft.graph.windowsUpdates.qualityUpdateReference"
                        return QualityUpdateReference.new
                    when "#microsoft.graph.windowsUpdates.windowsUpdateReference"
                        return WindowsUpdateReference.new
                end
            end
            return SoftwareUpdateReference.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
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
        end
    end
end
