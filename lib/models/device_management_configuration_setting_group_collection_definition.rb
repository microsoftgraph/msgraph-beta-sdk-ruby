require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementConfigurationSettingGroupCollectionDefinition < MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingGroupDefinition
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Maximum number of setting group count in the collection. Valid values 1 to 100
        @maximum_count
        ## 
        # Minimum number of setting group count in the collection. Valid values 1 to 100
        @minimum_count
        ## 
        ## Instantiates a new DeviceManagementConfigurationSettingGroupCollectionDefinition and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_configuration_setting_group_collection_definition
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementConfigurationSettingGroupCollectionDefinition.new
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
        ## Gets the maximumCount property value. Maximum number of setting group count in the collection. Valid values 1 to 100
        ## @return a integer
        ## 
        def maximum_count
            return @maximum_count
        end
        ## 
        ## Sets the maximumCount property value. Maximum number of setting group count in the collection. Valid values 1 to 100
        ## @param value Value to set for the maximumCount property.
        ## @return a void
        ## 
        def maximum_count=(value)
            @maximum_count = value
        end
        ## 
        ## Gets the minimumCount property value. Minimum number of setting group count in the collection. Valid values 1 to 100
        ## @return a integer
        ## 
        def minimum_count
            return @minimum_count
        end
        ## 
        ## Sets the minimumCount property value. Minimum number of setting group count in the collection. Valid values 1 to 100
        ## @param value Value to set for the minimumCount property.
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
