require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserSettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The user's settings for the visibility of merge suggestion for the duplicate contacts in the user's contact list.
            @contact_merge_suggestions
            ## 
            # Reflects the Office Delve organization level setting. When set to true, the organization doesn't have access to Office Delve. This setting is read-only and can only be changed by administrators in the SharePoint admin center.
            @contribution_to_content_discovery_as_organization_disabled
            ## 
            # When set to true, documents in the user's Office Delve are disabled. Users can control this setting in Office Delve.
            @contribution_to_content_discovery_disabled
            ## 
            # The user's settings for the visibility of meeting hour insights, and insights derived between a user and other items in Microsoft 365, such as documents or sites. Get userInsightsSettings through this navigation property.
            @item_insights
            ## 
            # The user's preferences for languages, regional locale and date/time formatting.
            @regional_and_language_settings
            ## 
            # The shift preferences for the user.
            @shift_preferences
            ## 
            ## Instantiates a new userSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contactMergeSuggestions property value. The user's settings for the visibility of merge suggestion for the duplicate contacts in the user's contact list.
            ## @return a contact_merge_suggestions
            ## 
            def contact_merge_suggestions
                return @contact_merge_suggestions
            end
            ## 
            ## Sets the contactMergeSuggestions property value. The user's settings for the visibility of merge suggestion for the duplicate contacts in the user's contact list.
            ## @param value Value to set for the contactMergeSuggestions property.
            ## @return a void
            ## 
            def contact_merge_suggestions=(value)
                @contact_merge_suggestions = value
            end
            ## 
            ## Gets the contributionToContentDiscoveryAsOrganizationDisabled property value. Reflects the Office Delve organization level setting. When set to true, the organization doesn't have access to Office Delve. This setting is read-only and can only be changed by administrators in the SharePoint admin center.
            ## @return a boolean
            ## 
            def contribution_to_content_discovery_as_organization_disabled
                return @contribution_to_content_discovery_as_organization_disabled
            end
            ## 
            ## Sets the contributionToContentDiscoveryAsOrganizationDisabled property value. Reflects the Office Delve organization level setting. When set to true, the organization doesn't have access to Office Delve. This setting is read-only and can only be changed by administrators in the SharePoint admin center.
            ## @param value Value to set for the contributionToContentDiscoveryAsOrganizationDisabled property.
            ## @return a void
            ## 
            def contribution_to_content_discovery_as_organization_disabled=(value)
                @contribution_to_content_discovery_as_organization_disabled = value
            end
            ## 
            ## Gets the contributionToContentDiscoveryDisabled property value. When set to true, documents in the user's Office Delve are disabled. Users can control this setting in Office Delve.
            ## @return a boolean
            ## 
            def contribution_to_content_discovery_disabled
                return @contribution_to_content_discovery_disabled
            end
            ## 
            ## Sets the contributionToContentDiscoveryDisabled property value. When set to true, documents in the user's Office Delve are disabled. Users can control this setting in Office Delve.
            ## @param value Value to set for the contributionToContentDiscoveryDisabled property.
            ## @return a void
            ## 
            def contribution_to_content_discovery_disabled=(value)
                @contribution_to_content_discovery_disabled = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contactMergeSuggestions" => lambda {|n| @contact_merge_suggestions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ContactMergeSuggestions.create_from_discriminator_value(pn) }) },
                    "contributionToContentDiscoveryAsOrganizationDisabled" => lambda {|n| @contribution_to_content_discovery_as_organization_disabled = n.get_boolean_value() },
                    "contributionToContentDiscoveryDisabled" => lambda {|n| @contribution_to_content_discovery_disabled = n.get_boolean_value() },
                    "itemInsights" => lambda {|n| @item_insights = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserInsightsSettings.create_from_discriminator_value(pn) }) },
                    "regionalAndLanguageSettings" => lambda {|n| @regional_and_language_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RegionalAndLanguageSettings.create_from_discriminator_value(pn) }) },
                    "shiftPreferences" => lambda {|n| @shift_preferences = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ShiftPreferences.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the itemInsights property value. The user's settings for the visibility of meeting hour insights, and insights derived between a user and other items in Microsoft 365, such as documents or sites. Get userInsightsSettings through this navigation property.
            ## @return a user_insights_settings
            ## 
            def item_insights
                return @item_insights
            end
            ## 
            ## Sets the itemInsights property value. The user's settings for the visibility of meeting hour insights, and insights derived between a user and other items in Microsoft 365, such as documents or sites. Get userInsightsSettings through this navigation property.
            ## @param value Value to set for the itemInsights property.
            ## @return a void
            ## 
            def item_insights=(value)
                @item_insights = value
            end
            ## 
            ## Gets the regionalAndLanguageSettings property value. The user's preferences for languages, regional locale and date/time formatting.
            ## @return a regional_and_language_settings
            ## 
            def regional_and_language_settings
                return @regional_and_language_settings
            end
            ## 
            ## Sets the regionalAndLanguageSettings property value. The user's preferences for languages, regional locale and date/time formatting.
            ## @param value Value to set for the regionalAndLanguageSettings property.
            ## @return a void
            ## 
            def regional_and_language_settings=(value)
                @regional_and_language_settings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("contactMergeSuggestions", @contact_merge_suggestions)
                writer.write_boolean_value("contributionToContentDiscoveryAsOrganizationDisabled", @contribution_to_content_discovery_as_organization_disabled)
                writer.write_boolean_value("contributionToContentDiscoveryDisabled", @contribution_to_content_discovery_disabled)
                writer.write_object_value("itemInsights", @item_insights)
                writer.write_object_value("regionalAndLanguageSettings", @regional_and_language_settings)
                writer.write_object_value("shiftPreferences", @shift_preferences)
            end
            ## 
            ## Gets the shiftPreferences property value. The shift preferences for the user.
            ## @return a shift_preferences
            ## 
            def shift_preferences
                return @shift_preferences
            end
            ## 
            ## Sets the shiftPreferences property value. The shift preferences for the user.
            ## @param value Value to set for the shiftPreferences property.
            ## @return a void
            ## 
            def shift_preferences=(value)
                @shift_preferences = value
            end
        end
    end
end
