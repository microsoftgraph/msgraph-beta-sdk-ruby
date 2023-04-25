require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementConfigurationSimpleSettingCollectionDefinition < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSimpleSettingDefinition
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Maximum number of simple settings in the collection
            @maximum_count
            ## 
            # Minimum number of simple settings in the collection
            @minimum_count
            ## 
            ## Instantiates a new DeviceManagementConfigurationSimpleSettingCollectionDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_simple_setting_collection_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationSimpleSettingCollectionDefinition.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "maximumCount" => lambda {|n| @maximum_count = n.get_number_value() },
                    "minimumCount" => lambda {|n| @minimum_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the maximumCount property value. Maximum number of simple settings in the collection
            ## @return a integer
            ## 
            def maximum_count
                return @maximum_count
            end
            ## 
            ## Sets the maximumCount property value. Maximum number of simple settings in the collection
            ## @param value Value to set for the maximum_count property.
            ## @return a void
            ## 
            def maximum_count=(value)
                @maximum_count = value
            end
            ## 
            ## Gets the minimumCount property value. Minimum number of simple settings in the collection
            ## @return a integer
            ## 
            def minimum_count
                return @minimum_count
            end
            ## 
            ## Sets the minimumCount property value. Minimum number of simple settings in the collection
            ## @param value Value to set for the minimum_count property.
            ## @return a void
            ## 
            def minimum_count=(value)
                @minimum_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("maximumCount", @maximum_count)
                writer.write_number_value("minimumCount", @minimum_count)
            end
        end
    end
end
