require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataIndustryDataConnector < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the data connector. Maximum supported length is 100 characters.
            @display_name
            ## 
            # The sourceSystem property
            @source_system
            ## 
            ## Instantiates a new IndustryDataIndustryDataConnector and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_industry_data_connector
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.industryData.apiDataConnector"
                            return IndustryDataApiDataConnector.new
                        when "#microsoft.graph.industryData.azureDataLakeConnector"
                            return IndustryDataAzureDataLakeConnector.new
                        when "#microsoft.graph.industryData.fileDataConnector"
                            return IndustryDataFileDataConnector.new
                        when "#microsoft.graph.industryData.oneRosterApiDataConnector"
                            return IndustryDataOneRosterApiDataConnector.new
                    end
                end
                return IndustryDataIndustryDataConnector.new
            end
            ## 
            ## Gets the displayName property value. The name of the data connector. Maximum supported length is 100 characters.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the data connector. Maximum supported length is 100 characters.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "sourceSystem" => lambda {|n| @source_system = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataSourceSystemDefinition.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("sourceSystem", @source_system)
            end
            ## 
            ## Gets the sourceSystem property value. The sourceSystem property
            ## @return a industry_data_source_system_definition
            ## 
            def source_system
                return @source_system
            end
            ## 
            ## Sets the sourceSystem property value. The sourceSystem property
            ## @param value Value to set for the sourceSystem property.
            ## @return a void
            ## 
            def source_system=(value)
                @source_system = value
            end
        end
    end
end
