require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamTemplateDefinition < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Describes the audience the team template is available to. The possible values are: organization, user, public, unknownFutureValue.
            @audience
            ## 
            # The assigned categories for the team template.
            @categories
            ## 
            # A brief description of the team template as it will appear to the users in Microsoft Teams.
            @description
            ## 
            # The user defined name of the team template.
            @display_name
            ## 
            # The icon url for the team template.
            @icon_url
            ## 
            # Language the template is available in.
            @language_tag
            ## 
            # The identity of the user who last modified the team template.
            @last_modified_by
            ## 
            # The date time of when the team template was last modified.
            @last_modified_date_time
            ## 
            # The templateId for the team template
            @parent_template_id
            ## 
            # The organization which published the team template.
            @publisher_name
            ## 
            # A short-description of the team template as it will appear to the users in Microsoft Teams.
            @short_description
            ## 
            # Collection of channel objects. A channel represents a topic, and therefore a logical isolation of discussion, within a team.
            @team_definition
            ## 
            ## Gets the audience property value. Describes the audience the team template is available to. The possible values are: organization, user, public, unknownFutureValue.
            ## @return a team_template_audience
            ## 
            def audience
                return @audience
            end
            ## 
            ## Sets the audience property value. Describes the audience the team template is available to. The possible values are: organization, user, public, unknownFutureValue.
            ## @param value Value to set for the audience property.
            ## @return a void
            ## 
            def audience=(value)
                @audience = value
            end
            ## 
            ## Gets the categories property value. The assigned categories for the team template.
            ## @return a string
            ## 
            def categories
                return @categories
            end
            ## 
            ## Sets the categories property value. The assigned categories for the team template.
            ## @param value Value to set for the categories property.
            ## @return a void
            ## 
            def categories=(value)
                @categories = value
            end
            ## 
            ## Instantiates a new TeamTemplateDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a team_template_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamTemplateDefinition.new
            end
            ## 
            ## Gets the description property value. A brief description of the team template as it will appear to the users in Microsoft Teams.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. A brief description of the team template as it will appear to the users in Microsoft Teams.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The user defined name of the team template.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The user defined name of the team template.
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
                    "audience" => lambda {|n| @audience = n.get_enum_value(MicrosoftGraphBeta::Models::TeamTemplateAudience) },
                    "categories" => lambda {|n| @categories = n.get_collection_of_primitive_values(String) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "iconUrl" => lambda {|n| @icon_url = n.get_string_value() },
                    "languageTag" => lambda {|n| @language_tag = n.get_string_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "parentTemplateId" => lambda {|n| @parent_template_id = n.get_string_value() },
                    "publisherName" => lambda {|n| @publisher_name = n.get_string_value() },
                    "shortDescription" => lambda {|n| @short_description = n.get_string_value() },
                    "teamDefinition" => lambda {|n| @team_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Team.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the iconUrl property value. The icon url for the team template.
            ## @return a string
            ## 
            def icon_url
                return @icon_url
            end
            ## 
            ## Sets the iconUrl property value. The icon url for the team template.
            ## @param value Value to set for the iconUrl property.
            ## @return a void
            ## 
            def icon_url=(value)
                @icon_url = value
            end
            ## 
            ## Gets the languageTag property value. Language the template is available in.
            ## @return a string
            ## 
            def language_tag
                return @language_tag
            end
            ## 
            ## Sets the languageTag property value. Language the template is available in.
            ## @param value Value to set for the languageTag property.
            ## @return a void
            ## 
            def language_tag=(value)
                @language_tag = value
            end
            ## 
            ## Gets the lastModifiedBy property value. The identity of the user who last modified the team template.
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The identity of the user who last modified the team template.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date time of when the team template was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date time of when the team template was last modified.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the parentTemplateId property value. The templateId for the team template
            ## @return a string
            ## 
            def parent_template_id
                return @parent_template_id
            end
            ## 
            ## Sets the parentTemplateId property value. The templateId for the team template
            ## @param value Value to set for the parentTemplateId property.
            ## @return a void
            ## 
            def parent_template_id=(value)
                @parent_template_id = value
            end
            ## 
            ## Gets the publisherName property value. The organization which published the team template.
            ## @return a string
            ## 
            def publisher_name
                return @publisher_name
            end
            ## 
            ## Sets the publisherName property value. The organization which published the team template.
            ## @param value Value to set for the publisherName property.
            ## @return a void
            ## 
            def publisher_name=(value)
                @publisher_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("audience", @audience)
                writer.write_collection_of_primitive_values("categories", @categories)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("iconUrl", @icon_url)
                writer.write_string_value("languageTag", @language_tag)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("parentTemplateId", @parent_template_id)
                writer.write_string_value("publisherName", @publisher_name)
                writer.write_string_value("shortDescription", @short_description)
                writer.write_object_value("teamDefinition", @team_definition)
            end
            ## 
            ## Gets the shortDescription property value. A short-description of the team template as it will appear to the users in Microsoft Teams.
            ## @return a string
            ## 
            def short_description
                return @short_description
            end
            ## 
            ## Sets the shortDescription property value. A short-description of the team template as it will appear to the users in Microsoft Teams.
            ## @param value Value to set for the shortDescription property.
            ## @return a void
            ## 
            def short_description=(value)
                @short_description = value
            end
            ## 
            ## Gets the teamDefinition property value. Collection of channel objects. A channel represents a topic, and therefore a logical isolation of discussion, within a team.
            ## @return a team
            ## 
            def team_definition
                return @team_definition
            end
            ## 
            ## Sets the teamDefinition property value. Collection of channel objects. A channel represents a topic, and therefore a logical isolation of discussion, within a team.
            ## @param value Value to set for the teamDefinition property.
            ## @return a void
            ## 
            def team_definition=(value)
                @team_definition = value
            end
        end
    end
end
