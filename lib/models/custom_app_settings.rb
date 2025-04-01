require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomAppSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The developerToolsForShowingAppUsageMetrics property
            @developer_tools_for_showing_app_usage_metrics
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
            ## Instantiates a new CustomAppSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_app_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomAppSettings.new
            end
            ## 
            ## Gets the developerToolsForShowingAppUsageMetrics property value. The developerToolsForShowingAppUsageMetrics property
            ## @return a app_development_platforms
            ## 
            def developer_tools_for_showing_app_usage_metrics
                return @developer_tools_for_showing_app_usage_metrics
            end
            ## 
            ## Sets the developerToolsForShowingAppUsageMetrics property value. The developerToolsForShowingAppUsageMetrics property
            ## @param value Value to set for the developerToolsForShowingAppUsageMetrics property.
            ## @return a void
            ## 
            def developer_tools_for_showing_app_usage_metrics=(value)
                @developer_tools_for_showing_app_usage_metrics = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "developerToolsForShowingAppUsageMetrics" => lambda {|n| @developer_tools_for_showing_app_usage_metrics = n.get_enum_values(MicrosoftGraphBeta::Models::AppDevelopmentPlatforms) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
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
                writer.write_enum_value("developerToolsForShowingAppUsageMetrics", @developer_tools_for_showing_app_usage_metrics)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
