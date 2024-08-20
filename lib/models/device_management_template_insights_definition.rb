require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # template insights definition
        class DeviceManagementTemplateInsightsDefinition < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Setting insights in a template
            @setting_insights
            ## 
            ## Instantiates a new DeviceManagementTemplateInsightsDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_template_insights_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementTemplateInsightsDefinition.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "settingInsights" => lambda {|n| @setting_insights = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementSettingInsightsDefinition.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("settingInsights", @setting_insights)
            end
            ## 
            ## Gets the settingInsights property value. Setting insights in a template
            ## @return a device_management_setting_insights_definition
            ## 
            def setting_insights
                return @setting_insights
            end
            ## 
            ## Sets the settingInsights property value. Setting insights in a template
            ## @param value Value to set for the settingInsights property.
            ## @return a void
            ## 
            def setting_insights=(value)
                @setting_insights = value
            end
        end
    end
end
