require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamsAppDashboardCardDefinition < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The contentSource property
            @content_source
            ## 
            # The defaultSize property
            @default_size
            ## 
            # The description property
            @description
            ## 
            # The displayName property
            @display_name
            ## 
            # The icon property
            @icon
            ## 
            # The pickerGroupId property
            @picker_group_id
            ## 
            ## Instantiates a new TeamsAppDashboardCardDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contentSource property value. The contentSource property
            ## @return a teams_app_dashboard_card_content_source
            ## 
            def content_source
                return @content_source
            end
            ## 
            ## Sets the contentSource property value. The contentSource property
            ## @param value Value to set for the contentSource property.
            ## @return a void
            ## 
            def content_source=(value)
                @content_source = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teams_app_dashboard_card_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamsAppDashboardCardDefinition.new
            end
            ## 
            ## Gets the defaultSize property value. The defaultSize property
            ## @return a teams_app_dashboard_card_size
            ## 
            def default_size
                return @default_size
            end
            ## 
            ## Sets the defaultSize property value. The defaultSize property
            ## @param value Value to set for the defaultSize property.
            ## @return a void
            ## 
            def default_size=(value)
                @default_size = value
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
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
                    "contentSource" => lambda {|n| @content_source = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamsAppDashboardCardContentSource.create_from_discriminator_value(pn) }) },
                    "defaultSize" => lambda {|n| @default_size = n.get_enum_value(MicrosoftGraphBeta::Models::TeamsAppDashboardCardSize) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "icon" => lambda {|n| @icon = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamsAppDashboardCardIcon.create_from_discriminator_value(pn) }) },
                    "pickerGroupId" => lambda {|n| @picker_group_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the icon property value. The icon property
            ## @return a teams_app_dashboard_card_icon
            ## 
            def icon
                return @icon
            end
            ## 
            ## Sets the icon property value. The icon property
            ## @param value Value to set for the icon property.
            ## @return a void
            ## 
            def icon=(value)
                @icon = value
            end
            ## 
            ## Gets the pickerGroupId property value. The pickerGroupId property
            ## @return a string
            ## 
            def picker_group_id
                return @picker_group_id
            end
            ## 
            ## Sets the pickerGroupId property value. The pickerGroupId property
            ## @param value Value to set for the pickerGroupId property.
            ## @return a void
            ## 
            def picker_group_id=(value)
                @picker_group_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("contentSource", @content_source)
                writer.write_enum_value("defaultSize", @default_size)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_object_value("icon", @icon)
                writer.write_string_value("pickerGroupId", @picker_group_id)
            end
        end
    end
end
