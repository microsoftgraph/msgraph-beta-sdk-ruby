require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ProjectParticipation < MicrosoftGraphBeta::Models::ItemFacet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Contains categories a user has associated with the project (for example, digital transformation, oil rig).
            @categories
            ## 
            # Contains detailed information about the client the project was for.
            @client
            ## 
            # Contains experience scenario tags a user has associated with the interest. Allowed values in the collection are: askMeAbout, ableToMentor, wantsToLearn, wantsToImprove.
            @collaboration_tags
            ## 
            # Lists people that also worked on the project.
            @colleagues
            ## 
            # Contains detail about the user's role on the project.
            @detail
            ## 
            # Contains a friendly name for the project.
            @display_name
            ## 
            # The Person or people who sponsored the project.
            @sponsors
            ## 
            # The thumbnailUrl property
            @thumbnail_url
            ## 
            ## Gets the categories property value. Contains categories a user has associated with the project (for example, digital transformation, oil rig).
            ## @return a string
            ## 
            def categories
                return @categories
            end
            ## 
            ## Sets the categories property value. Contains categories a user has associated with the project (for example, digital transformation, oil rig).
            ## @param value Value to set for the categories property.
            ## @return a void
            ## 
            def categories=(value)
                @categories = value
            end
            ## 
            ## Gets the client property value. Contains detailed information about the client the project was for.
            ## @return a company_detail
            ## 
            def client
                return @client
            end
            ## 
            ## Sets the client property value. Contains detailed information about the client the project was for.
            ## @param value Value to set for the client property.
            ## @return a void
            ## 
            def client=(value)
                @client = value
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
            ## Gets the colleagues property value. Lists people that also worked on the project.
            ## @return a related_person
            ## 
            def colleagues
                return @colleagues
            end
            ## 
            ## Sets the colleagues property value. Lists people that also worked on the project.
            ## @param value Value to set for the colleagues property.
            ## @return a void
            ## 
            def colleagues=(value)
                @colleagues = value
            end
            ## 
            ## Instantiates a new ProjectParticipation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.projectParticipation"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a project_participation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProjectParticipation.new
            end
            ## 
            ## Gets the detail property value. Contains detail about the user's role on the project.
            ## @return a position_detail
            ## 
            def detail
                return @detail
            end
            ## 
            ## Sets the detail property value. Contains detail about the user's role on the project.
            ## @param value Value to set for the detail property.
            ## @return a void
            ## 
            def detail=(value)
                @detail = value
            end
            ## 
            ## Gets the displayName property value. Contains a friendly name for the project.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Contains a friendly name for the project.
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
                    "client" => lambda {|n| @client = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CompanyDetail.create_from_discriminator_value(pn) }) },
                    "collaborationTags" => lambda {|n| @collaboration_tags = n.get_collection_of_primitive_values(String) },
                    "colleagues" => lambda {|n| @colleagues = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RelatedPerson.create_from_discriminator_value(pn) }) },
                    "detail" => lambda {|n| @detail = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PositionDetail.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "sponsors" => lambda {|n| @sponsors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RelatedPerson.create_from_discriminator_value(pn) }) },
                    "thumbnailUrl" => lambda {|n| @thumbnail_url = n.get_string_value() },
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
                writer.write_collection_of_primitive_values("categories", @categories)
                writer.write_object_value("client", @client)
                writer.write_collection_of_primitive_values("collaborationTags", @collaboration_tags)
                writer.write_collection_of_object_values("colleagues", @colleagues)
                writer.write_object_value("detail", @detail)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("sponsors", @sponsors)
                writer.write_string_value("thumbnailUrl", @thumbnail_url)
            end
            ## 
            ## Gets the sponsors property value. The Person or people who sponsored the project.
            ## @return a related_person
            ## 
            def sponsors
                return @sponsors
            end
            ## 
            ## Sets the sponsors property value. The Person or people who sponsored the project.
            ## @param value Value to set for the sponsors property.
            ## @return a void
            ## 
            def sponsors=(value)
                @sponsors = value
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
        end
    end
end
