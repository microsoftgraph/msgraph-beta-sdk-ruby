require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OrganizationSettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains the properties that are configured by an administrator as a tenant-level privacy control whether to identify duplicate contacts among a user's contacts list and suggest the user to merge those contacts to have a cleaner contacts list. List contactInsights returns the settings to display or return contact insights in an organization.
            @contact_insights
            ## 
            # Contains the properties that are configured by an administrator for the visibility of Microsoft Graph-derived insights, between a user and other items in Microsoft 365, such as documents or sites. List itemInsights returns the settings to display or return item insights in an organization.
            @item_insights
            ## 
            # The microsoftApplicationDataAccess property
            @microsoft_application_data_access
            ## 
            # Contains the properties that are configured by an administrator for the visibility of a list of people relevant and working with a user in Microsoft 365. List peopleInsights returns the settings to display or return people insights in an organization.
            @people_insights
            ## 
            ## Instantiates a new organizationSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contactInsights property value. Contains the properties that are configured by an administrator as a tenant-level privacy control whether to identify duplicate contacts among a user's contacts list and suggest the user to merge those contacts to have a cleaner contacts list. List contactInsights returns the settings to display or return contact insights in an organization.
            ## @return a insights_settings
            ## 
            def contact_insights
                return @contact_insights
            end
            ## 
            ## Sets the contactInsights property value. Contains the properties that are configured by an administrator as a tenant-level privacy control whether to identify duplicate contacts among a user's contacts list and suggest the user to merge those contacts to have a cleaner contacts list. List contactInsights returns the settings to display or return contact insights in an organization.
            ## @param value Value to set for the contactInsights property.
            ## @return a void
            ## 
            def contact_insights=(value)
                @contact_insights = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a organization_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OrganizationSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contactInsights" => lambda {|n| @contact_insights = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::InsightsSettings.create_from_discriminator_value(pn) }) },
                    "itemInsights" => lambda {|n| @item_insights = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::InsightsSettings.create_from_discriminator_value(pn) }) },
                    "microsoftApplicationDataAccess" => lambda {|n| @microsoft_application_data_access = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MicrosoftApplicationDataAccessSettings.create_from_discriminator_value(pn) }) },
                    "peopleInsights" => lambda {|n| @people_insights = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::InsightsSettings.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the itemInsights property value. Contains the properties that are configured by an administrator for the visibility of Microsoft Graph-derived insights, between a user and other items in Microsoft 365, such as documents or sites. List itemInsights returns the settings to display or return item insights in an organization.
            ## @return a insights_settings
            ## 
            def item_insights
                return @item_insights
            end
            ## 
            ## Sets the itemInsights property value. Contains the properties that are configured by an administrator for the visibility of Microsoft Graph-derived insights, between a user and other items in Microsoft 365, such as documents or sites. List itemInsights returns the settings to display or return item insights in an organization.
            ## @param value Value to set for the itemInsights property.
            ## @return a void
            ## 
            def item_insights=(value)
                @item_insights = value
            end
            ## 
            ## Gets the microsoftApplicationDataAccess property value. The microsoftApplicationDataAccess property
            ## @return a microsoft_application_data_access_settings
            ## 
            def microsoft_application_data_access
                return @microsoft_application_data_access
            end
            ## 
            ## Sets the microsoftApplicationDataAccess property value. The microsoftApplicationDataAccess property
            ## @param value Value to set for the microsoftApplicationDataAccess property.
            ## @return a void
            ## 
            def microsoft_application_data_access=(value)
                @microsoft_application_data_access = value
            end
            ## 
            ## Gets the peopleInsights property value. Contains the properties that are configured by an administrator for the visibility of a list of people relevant and working with a user in Microsoft 365. List peopleInsights returns the settings to display or return people insights in an organization.
            ## @return a insights_settings
            ## 
            def people_insights
                return @people_insights
            end
            ## 
            ## Sets the peopleInsights property value. Contains the properties that are configured by an administrator for the visibility of a list of people relevant and working with a user in Microsoft 365. List peopleInsights returns the settings to display or return people insights in an organization.
            ## @param value Value to set for the peopleInsights property.
            ## @return a void
            ## 
            def people_insights=(value)
                @people_insights = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("contactInsights", @contact_insights)
                writer.write_object_value("itemInsights", @item_insights)
                writer.write_object_value("microsoftApplicationDataAccess", @microsoft_application_data_access)
                writer.write_object_value("peopleInsights", @people_insights)
            end
        end
    end
end
