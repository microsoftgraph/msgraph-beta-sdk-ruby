require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataSourceSystemDefinition < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the source system. Maximum supported length is 100 characters.
            @display_name
            ## 
            # A collection of user matching settings by roleGroup.
            @user_matching_settings
            ## 
            # The name of the vendor who supplies the source system. Maximum supported length is 100 characters.
            @vendor
            ## 
            ## Instantiates a new IndustryDataSourceSystemDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_source_system_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IndustryDataSourceSystemDefinition.new
            end
            ## 
            ## Gets the displayName property value. The name of the source system. Maximum supported length is 100 characters.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the source system. Maximum supported length is 100 characters.
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
                    "userMatchingSettings" => lambda {|n| @user_matching_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataUserMatchingSetting.create_from_discriminator_value(pn) }) },
                    "vendor" => lambda {|n| @vendor = n.get_string_value() },
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
                writer.write_collection_of_object_values("userMatchingSettings", @user_matching_settings)
                writer.write_string_value("vendor", @vendor)
            end
            ## 
            ## Gets the userMatchingSettings property value. A collection of user matching settings by roleGroup.
            ## @return a industry_data_user_matching_setting
            ## 
            def user_matching_settings
                return @user_matching_settings
            end
            ## 
            ## Sets the userMatchingSettings property value. A collection of user matching settings by roleGroup.
            ## @param value Value to set for the userMatchingSettings property.
            ## @return a void
            ## 
            def user_matching_settings=(value)
                @user_matching_settings = value
            end
            ## 
            ## Gets the vendor property value. The name of the vendor who supplies the source system. Maximum supported length is 100 characters.
            ## @return a string
            ## 
            def vendor
                return @vendor
            end
            ## 
            ## Sets the vendor property value. The name of the vendor who supplies the source system. Maximum supported length is 100 characters.
            ## @param value Value to set for the vendor property.
            ## @return a void
            ## 
            def vendor=(value)
                @vendor = value
            end
        end
    end
end
