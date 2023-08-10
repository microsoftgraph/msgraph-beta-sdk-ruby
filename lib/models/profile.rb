require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Profile < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The account property
            @account
            ## 
            # Represents details of addresses associated with the user.
            @addresses
            ## 
            # Represents the details of meaningful dates associated with a person.
            @anniversaries
            ## 
            # Represents the details of awards or honors associated with a person.
            @awards
            ## 
            # Represents the details of certifications associated with a person.
            @certifications
            ## 
            # Represents data that a user has supplied related to undergraduate, graduate, postgraduate or other educational activities.
            @educational_activities
            ## 
            # Represents detailed information about email addresses associated with the user.
            @emails
            ## 
            # Provides detailed information about interests the user has associated with themselves in various services.
            @interests
            ## 
            # Represents detailed information about languages that a user has added to their profile.
            @languages
            ## 
            # Represents the names a user has added to their profile.
            @names
            ## 
            # Represents notes that a user has added to their profile.
            @notes
            ## 
            # Represents patents that a user has added to their profile.
            @patents
            ## 
            # Represents detailed information about phone numbers associated with a user in various services.
            @phones
            ## 
            # Represents detailed information about work positions associated with a user's profile.
            @positions
            ## 
            # Represents detailed information about projects associated with a user.
            @projects
            ## 
            # Represents details of any publications a user has added to their profile.
            @publications
            ## 
            # Represents detailed information about skills associated with a user in various services.
            @skills
            ## 
            # Represents web accounts the user has indicated they use or has added to their user profile.
            @web_accounts
            ## 
            # Represents detailed information about websites associated with a user in various services.
            @websites
            ## 
            ## Gets the account property value. The account property
            ## @return a user_account_information
            ## 
            def account
                return @account
            end
            ## 
            ## Sets the account property value. The account property
            ## @param value Value to set for the account property.
            ## @return a void
            ## 
            def account=(value)
                @account = value
            end
            ## 
            ## Gets the addresses property value. Represents details of addresses associated with the user.
            ## @return a item_address
            ## 
            def addresses
                return @addresses
            end
            ## 
            ## Sets the addresses property value. Represents details of addresses associated with the user.
            ## @param value Value to set for the addresses property.
            ## @return a void
            ## 
            def addresses=(value)
                @addresses = value
            end
            ## 
            ## Gets the anniversaries property value. Represents the details of meaningful dates associated with a person.
            ## @return a person_annual_event
            ## 
            def anniversaries
                return @anniversaries
            end
            ## 
            ## Sets the anniversaries property value. Represents the details of meaningful dates associated with a person.
            ## @param value Value to set for the anniversaries property.
            ## @return a void
            ## 
            def anniversaries=(value)
                @anniversaries = value
            end
            ## 
            ## Gets the awards property value. Represents the details of awards or honors associated with a person.
            ## @return a person_award
            ## 
            def awards
                return @awards
            end
            ## 
            ## Sets the awards property value. Represents the details of awards or honors associated with a person.
            ## @param value Value to set for the awards property.
            ## @return a void
            ## 
            def awards=(value)
                @awards = value
            end
            ## 
            ## Gets the certifications property value. Represents the details of certifications associated with a person.
            ## @return a person_certification
            ## 
            def certifications
                return @certifications
            end
            ## 
            ## Sets the certifications property value. Represents the details of certifications associated with a person.
            ## @param value Value to set for the certifications property.
            ## @return a void
            ## 
            def certifications=(value)
                @certifications = value
            end
            ## 
            ## Instantiates a new profile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Profile.new
            end
            ## 
            ## Gets the educationalActivities property value. Represents data that a user has supplied related to undergraduate, graduate, postgraduate or other educational activities.
            ## @return a educational_activity
            ## 
            def educational_activities
                return @educational_activities
            end
            ## 
            ## Sets the educationalActivities property value. Represents data that a user has supplied related to undergraduate, graduate, postgraduate or other educational activities.
            ## @param value Value to set for the educationalActivities property.
            ## @return a void
            ## 
            def educational_activities=(value)
                @educational_activities = value
            end
            ## 
            ## Gets the emails property value. Represents detailed information about email addresses associated with the user.
            ## @return a item_email
            ## 
            def emails
                return @emails
            end
            ## 
            ## Sets the emails property value. Represents detailed information about email addresses associated with the user.
            ## @param value Value to set for the emails property.
            ## @return a void
            ## 
            def emails=(value)
                @emails = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "account" => lambda {|n| @account = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserAccountInformation.create_from_discriminator_value(pn) }) },
                    "addresses" => lambda {|n| @addresses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ItemAddress.create_from_discriminator_value(pn) }) },
                    "anniversaries" => lambda {|n| @anniversaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PersonAnnualEvent.create_from_discriminator_value(pn) }) },
                    "awards" => lambda {|n| @awards = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PersonAward.create_from_discriminator_value(pn) }) },
                    "certifications" => lambda {|n| @certifications = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PersonCertification.create_from_discriminator_value(pn) }) },
                    "educationalActivities" => lambda {|n| @educational_activities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EducationalActivity.create_from_discriminator_value(pn) }) },
                    "emails" => lambda {|n| @emails = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ItemEmail.create_from_discriminator_value(pn) }) },
                    "interests" => lambda {|n| @interests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PersonInterest.create_from_discriminator_value(pn) }) },
                    "languages" => lambda {|n| @languages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::LanguageProficiency.create_from_discriminator_value(pn) }) },
                    "names" => lambda {|n| @names = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PersonName.create_from_discriminator_value(pn) }) },
                    "notes" => lambda {|n| @notes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PersonAnnotation.create_from_discriminator_value(pn) }) },
                    "patents" => lambda {|n| @patents = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ItemPatent.create_from_discriminator_value(pn) }) },
                    "phones" => lambda {|n| @phones = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ItemPhone.create_from_discriminator_value(pn) }) },
                    "positions" => lambda {|n| @positions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WorkPosition.create_from_discriminator_value(pn) }) },
                    "projects" => lambda {|n| @projects = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ProjectParticipation.create_from_discriminator_value(pn) }) },
                    "publications" => lambda {|n| @publications = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ItemPublication.create_from_discriminator_value(pn) }) },
                    "skills" => lambda {|n| @skills = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SkillProficiency.create_from_discriminator_value(pn) }) },
                    "webAccounts" => lambda {|n| @web_accounts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WebAccount.create_from_discriminator_value(pn) }) },
                    "websites" => lambda {|n| @websites = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PersonWebsite.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the interests property value. Provides detailed information about interests the user has associated with themselves in various services.
            ## @return a person_interest
            ## 
            def interests
                return @interests
            end
            ## 
            ## Sets the interests property value. Provides detailed information about interests the user has associated with themselves in various services.
            ## @param value Value to set for the interests property.
            ## @return a void
            ## 
            def interests=(value)
                @interests = value
            end
            ## 
            ## Gets the languages property value. Represents detailed information about languages that a user has added to their profile.
            ## @return a language_proficiency
            ## 
            def languages
                return @languages
            end
            ## 
            ## Sets the languages property value. Represents detailed information about languages that a user has added to their profile.
            ## @param value Value to set for the languages property.
            ## @return a void
            ## 
            def languages=(value)
                @languages = value
            end
            ## 
            ## Gets the names property value. Represents the names a user has added to their profile.
            ## @return a person_name
            ## 
            def names
                return @names
            end
            ## 
            ## Sets the names property value. Represents the names a user has added to their profile.
            ## @param value Value to set for the names property.
            ## @return a void
            ## 
            def names=(value)
                @names = value
            end
            ## 
            ## Gets the notes property value. Represents notes that a user has added to their profile.
            ## @return a person_annotation
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. Represents notes that a user has added to their profile.
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
            end
            ## 
            ## Gets the patents property value. Represents patents that a user has added to their profile.
            ## @return a item_patent
            ## 
            def patents
                return @patents
            end
            ## 
            ## Sets the patents property value. Represents patents that a user has added to their profile.
            ## @param value Value to set for the patents property.
            ## @return a void
            ## 
            def patents=(value)
                @patents = value
            end
            ## 
            ## Gets the phones property value. Represents detailed information about phone numbers associated with a user in various services.
            ## @return a item_phone
            ## 
            def phones
                return @phones
            end
            ## 
            ## Sets the phones property value. Represents detailed information about phone numbers associated with a user in various services.
            ## @param value Value to set for the phones property.
            ## @return a void
            ## 
            def phones=(value)
                @phones = value
            end
            ## 
            ## Gets the positions property value. Represents detailed information about work positions associated with a user's profile.
            ## @return a work_position
            ## 
            def positions
                return @positions
            end
            ## 
            ## Sets the positions property value. Represents detailed information about work positions associated with a user's profile.
            ## @param value Value to set for the positions property.
            ## @return a void
            ## 
            def positions=(value)
                @positions = value
            end
            ## 
            ## Gets the projects property value. Represents detailed information about projects associated with a user.
            ## @return a project_participation
            ## 
            def projects
                return @projects
            end
            ## 
            ## Sets the projects property value. Represents detailed information about projects associated with a user.
            ## @param value Value to set for the projects property.
            ## @return a void
            ## 
            def projects=(value)
                @projects = value
            end
            ## 
            ## Gets the publications property value. Represents details of any publications a user has added to their profile.
            ## @return a item_publication
            ## 
            def publications
                return @publications
            end
            ## 
            ## Sets the publications property value. Represents details of any publications a user has added to their profile.
            ## @param value Value to set for the publications property.
            ## @return a void
            ## 
            def publications=(value)
                @publications = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("account", @account)
                writer.write_collection_of_object_values("addresses", @addresses)
                writer.write_collection_of_object_values("anniversaries", @anniversaries)
                writer.write_collection_of_object_values("awards", @awards)
                writer.write_collection_of_object_values("certifications", @certifications)
                writer.write_collection_of_object_values("educationalActivities", @educational_activities)
                writer.write_collection_of_object_values("emails", @emails)
                writer.write_collection_of_object_values("interests", @interests)
                writer.write_collection_of_object_values("languages", @languages)
                writer.write_collection_of_object_values("names", @names)
                writer.write_collection_of_object_values("notes", @notes)
                writer.write_collection_of_object_values("patents", @patents)
                writer.write_collection_of_object_values("phones", @phones)
                writer.write_collection_of_object_values("positions", @positions)
                writer.write_collection_of_object_values("projects", @projects)
                writer.write_collection_of_object_values("publications", @publications)
                writer.write_collection_of_object_values("skills", @skills)
                writer.write_collection_of_object_values("webAccounts", @web_accounts)
                writer.write_collection_of_object_values("websites", @websites)
            end
            ## 
            ## Gets the skills property value. Represents detailed information about skills associated with a user in various services.
            ## @return a skill_proficiency
            ## 
            def skills
                return @skills
            end
            ## 
            ## Sets the skills property value. Represents detailed information about skills associated with a user in various services.
            ## @param value Value to set for the skills property.
            ## @return a void
            ## 
            def skills=(value)
                @skills = value
            end
            ## 
            ## Gets the webAccounts property value. Represents web accounts the user has indicated they use or has added to their user profile.
            ## @return a web_account
            ## 
            def web_accounts
                return @web_accounts
            end
            ## 
            ## Sets the webAccounts property value. Represents web accounts the user has indicated they use or has added to their user profile.
            ## @param value Value to set for the webAccounts property.
            ## @return a void
            ## 
            def web_accounts=(value)
                @web_accounts = value
            end
            ## 
            ## Gets the websites property value. Represents detailed information about websites associated with a user in various services.
            ## @return a person_website
            ## 
            def websites
                return @websites
            end
            ## 
            ## Sets the websites property value. Represents detailed information about websites associated with a user in various services.
            ## @param value Value to set for the websites property.
            ## @return a void
            ## 
            def websites=(value)
                @websites = value
            end
        end
    end
end
