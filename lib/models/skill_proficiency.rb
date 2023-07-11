require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SkillProficiency < MicrosoftGraphBeta::Models::ItemFacet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains categories a user has associated with the skill (for example, personal, professional, hobby).
            @categories
            ## 
            # Contains experience scenario tags a user has associated with the interest. Allowed values in the collection are: askMeAbout, ableToMentor, wantsToLearn, wantsToImprove.
            @collaboration_tags
            ## 
            # Contains a friendly name for the skill.
            @display_name
            ## 
            # Detail of the users proficiency with this skill. Possible values are: elementary, limitedWorking, generalProfessional, advancedProfessional, expert, unknownFutureValue.
            @proficiency
            ## 
            # The thumbnailUrl property
            @thumbnail_url
            ## 
            # Contains a link to an information source about the skill.
            @web_url
            ## 
            ## Gets the categories property value. Contains categories a user has associated with the skill (for example, personal, professional, hobby).
            ## @return a string
            ## 
            def categories
                return @categories
            end
            ## 
            ## Sets the categories property value. Contains categories a user has associated with the skill (for example, personal, professional, hobby).
            ## @param value Value to set for the categories property.
            ## @return a void
            ## 
            def categories=(value)
                @categories = value
            end
            ## 
            ## Gets the collaborationTags property value. Contains experience scenario tags a user has associated with the interest. Allowed values in the collection are: askMeAbout, ableToMentor, wantsToLearn, wantsToImprove.
            ## @return a string
            ## 
            def collaboration_tags
                return @collaboration_tags
            end
            ## 
            ## Sets the collaborationTags property value. Contains experience scenario tags a user has associated with the interest. Allowed values in the collection are: askMeAbout, ableToMentor, wantsToLearn, wantsToImprove.
            ## @param value Value to set for the collaboration_tags property.
            ## @return a void
            ## 
            def collaboration_tags=(value)
                @collaboration_tags = value
            end
            ## 
            ## Instantiates a new skillProficiency and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.skillProficiency"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a skill_proficiency
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SkillProficiency.new
            end
            ## 
            ## Gets the displayName property value. Contains a friendly name for the skill.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Contains a friendly name for the skill.
            ## @param value Value to set for the display_name property.
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
                    "categories" => lambda {|n| @categories = n.get_collection_of_primitive_values(String) },
                    "collaborationTags" => lambda {|n| @collaboration_tags = n.get_collection_of_primitive_values(String) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "proficiency" => lambda {|n| @proficiency = n.get_enum_value(MicrosoftGraphBeta::Models::SkillProficiencyLevel) },
                    "thumbnailUrl" => lambda {|n| @thumbnail_url = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the proficiency property value. Detail of the users proficiency with this skill. Possible values are: elementary, limitedWorking, generalProfessional, advancedProfessional, expert, unknownFutureValue.
            ## @return a skill_proficiency_level
            ## 
            def proficiency
                return @proficiency
            end
            ## 
            ## Sets the proficiency property value. Detail of the users proficiency with this skill. Possible values are: elementary, limitedWorking, generalProfessional, advancedProfessional, expert, unknownFutureValue.
            ## @param value Value to set for the proficiency property.
            ## @return a void
            ## 
            def proficiency=(value)
                @proficiency = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("categories", @categories)
                writer.write_collection_of_primitive_values("collaborationTags", @collaboration_tags)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("proficiency", @proficiency)
                writer.write_string_value("thumbnailUrl", @thumbnail_url)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the thumbnailUrl property value. The thumbnailUrl property
            ## @return a string
            ## 
            def thumbnail_url
                return @thumbnail_url
            end
            ## 
            ## Sets the thumbnailUrl property value. The thumbnailUrl property
            ## @param value Value to set for the thumbnail_url property.
            ## @return a void
            ## 
            def thumbnail_url=(value)
                @thumbnail_url = value
            end
            ## 
            ## Gets the webUrl property value. Contains a link to an information source about the skill.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. Contains a link to an information source about the skill.
            ## @param value Value to set for the web_url property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
