require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class Person < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The person's birthday.
        @birthday
        ## 
        # The name of the person's company.
        @company_name
        ## 
        # The person's department.
        @department
        ## 
        # The person's display name.
        @display_name
        ## 
        # The person's email addresses.
        @email_addresses
        ## 
        # The person's given name.
        @given_name
        ## 
        # true if the user has flagged this person as a favorite.
        @is_favorite
        ## 
        # The type of mailbox that is represented by the person's email address.
        @mailbox_type
        ## 
        # The location of the person's office.
        @office_location
        ## 
        # Free-form notes that the user has taken about this person.
        @person_notes
        ## 
        # The type of person, for example distribution list.
        @person_type
        ## 
        # The person's phone numbers.
        @phones
        ## 
        # The person's addresses.
        @postal_addresses
        ## 
        # The person's profession.
        @profession
        ## 
        # The sources the user data comes from, for example Directory or Outlook Contacts.
        @sources
        ## 
        # The person's surname.
        @surname
        ## 
        # The person's title.
        @title
        ## 
        # The user principal name (UPN) of the person. The UPN is an Internet-style login name for the person based on the Internet standard RFC 822. By convention, this should map to the person's email name. The general format is alias@domain.
        @user_principal_name
        ## 
        # The person's websites.
        @websites
        ## 
        # The phonetic Japanese name of the person's company.
        @yomi_company
        ## 
        ## Gets the birthday property value. The person's birthday.
        ## @return a string
        ## 
        def birthday
            return @birthday
        end
        ## 
        ## Sets the birthday property value. The person's birthday.
        ## @param value Value to set for the birthday property.
        ## @return a void
        ## 
        def birthday=(value)
            @birthday = value
        end
        ## 
        ## Gets the companyName property value. The name of the person's company.
        ## @return a string
        ## 
        def company_name
            return @company_name
        end
        ## 
        ## Sets the companyName property value. The name of the person's company.
        ## @param value Value to set for the companyName property.
        ## @return a void
        ## 
        def company_name=(value)
            @company_name = value
        end
        ## 
        ## Instantiates a new person and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a person
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Person.new
        end
        ## 
        ## Gets the department property value. The person's department.
        ## @return a string
        ## 
        def department
            return @department
        end
        ## 
        ## Sets the department property value. The person's department.
        ## @param value Value to set for the department property.
        ## @return a void
        ## 
        def department=(value)
            @department = value
        end
        ## 
        ## Gets the displayName property value. The person's display name.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The person's display name.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the emailAddresses property value. The person's email addresses.
        ## @return a ranked_email_address
        ## 
        def email_addresses
            return @email_addresses
        end
        ## 
        ## Sets the emailAddresses property value. The person's email addresses.
        ## @param value Value to set for the emailAddresses property.
        ## @return a void
        ## 
        def email_addresses=(value)
            @email_addresses = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "birthday" => lambda {|n| @birthday = n.get_string_value() },
                "companyName" => lambda {|n| @company_name = n.get_string_value() },
                "department" => lambda {|n| @department = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "emailAddresses" => lambda {|n| @email_addresses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RankedEmailAddress.create_from_discriminator_value(pn) }) },
                "givenName" => lambda {|n| @given_name = n.get_string_value() },
                "isFavorite" => lambda {|n| @is_favorite = n.get_boolean_value() },
                "mailboxType" => lambda {|n| @mailbox_type = n.get_string_value() },
                "officeLocation" => lambda {|n| @office_location = n.get_string_value() },
                "personNotes" => lambda {|n| @person_notes = n.get_string_value() },
                "personType" => lambda {|n| @person_type = n.get_string_value() },
                "phones" => lambda {|n| @phones = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Phone.create_from_discriminator_value(pn) }) },
                "postalAddresses" => lambda {|n| @postal_addresses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Location.create_from_discriminator_value(pn) }) },
                "profession" => lambda {|n| @profession = n.get_string_value() },
                "sources" => lambda {|n| @sources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PersonDataSource.create_from_discriminator_value(pn) }) },
                "surname" => lambda {|n| @surname = n.get_string_value() },
                "title" => lambda {|n| @title = n.get_string_value() },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                "websites" => lambda {|n| @websites = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Website.create_from_discriminator_value(pn) }) },
                "yomiCompany" => lambda {|n| @yomi_company = n.get_string_value() },
            })
        end
        ## 
        ## Gets the givenName property value. The person's given name.
        ## @return a string
        ## 
        def given_name
            return @given_name
        end
        ## 
        ## Sets the givenName property value. The person's given name.
        ## @param value Value to set for the givenName property.
        ## @return a void
        ## 
        def given_name=(value)
            @given_name = value
        end
        ## 
        ## Gets the isFavorite property value. true if the user has flagged this person as a favorite.
        ## @return a boolean
        ## 
        def is_favorite
            return @is_favorite
        end
        ## 
        ## Sets the isFavorite property value. true if the user has flagged this person as a favorite.
        ## @param value Value to set for the isFavorite property.
        ## @return a void
        ## 
        def is_favorite=(value)
            @is_favorite = value
        end
        ## 
        ## Gets the mailboxType property value. The type of mailbox that is represented by the person's email address.
        ## @return a string
        ## 
        def mailbox_type
            return @mailbox_type
        end
        ## 
        ## Sets the mailboxType property value. The type of mailbox that is represented by the person's email address.
        ## @param value Value to set for the mailboxType property.
        ## @return a void
        ## 
        def mailbox_type=(value)
            @mailbox_type = value
        end
        ## 
        ## Gets the officeLocation property value. The location of the person's office.
        ## @return a string
        ## 
        def office_location
            return @office_location
        end
        ## 
        ## Sets the officeLocation property value. The location of the person's office.
        ## @param value Value to set for the officeLocation property.
        ## @return a void
        ## 
        def office_location=(value)
            @office_location = value
        end
        ## 
        ## Gets the personNotes property value. Free-form notes that the user has taken about this person.
        ## @return a string
        ## 
        def person_notes
            return @person_notes
        end
        ## 
        ## Sets the personNotes property value. Free-form notes that the user has taken about this person.
        ## @param value Value to set for the personNotes property.
        ## @return a void
        ## 
        def person_notes=(value)
            @person_notes = value
        end
        ## 
        ## Gets the personType property value. The type of person, for example distribution list.
        ## @return a string
        ## 
        def person_type
            return @person_type
        end
        ## 
        ## Sets the personType property value. The type of person, for example distribution list.
        ## @param value Value to set for the personType property.
        ## @return a void
        ## 
        def person_type=(value)
            @person_type = value
        end
        ## 
        ## Gets the phones property value. The person's phone numbers.
        ## @return a phone
        ## 
        def phones
            return @phones
        end
        ## 
        ## Sets the phones property value. The person's phone numbers.
        ## @param value Value to set for the phones property.
        ## @return a void
        ## 
        def phones=(value)
            @phones = value
        end
        ## 
        ## Gets the postalAddresses property value. The person's addresses.
        ## @return a location
        ## 
        def postal_addresses
            return @postal_addresses
        end
        ## 
        ## Sets the postalAddresses property value. The person's addresses.
        ## @param value Value to set for the postalAddresses property.
        ## @return a void
        ## 
        def postal_addresses=(value)
            @postal_addresses = value
        end
        ## 
        ## Gets the profession property value. The person's profession.
        ## @return a string
        ## 
        def profession
            return @profession
        end
        ## 
        ## Sets the profession property value. The person's profession.
        ## @param value Value to set for the profession property.
        ## @return a void
        ## 
        def profession=(value)
            @profession = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("birthday", @birthday)
            writer.write_string_value("companyName", @company_name)
            writer.write_string_value("department", @department)
            writer.write_string_value("displayName", @display_name)
            writer.write_collection_of_object_values("emailAddresses", @email_addresses)
            writer.write_string_value("givenName", @given_name)
            writer.write_boolean_value("isFavorite", @is_favorite)
            writer.write_string_value("mailboxType", @mailbox_type)
            writer.write_string_value("officeLocation", @office_location)
            writer.write_string_value("personNotes", @person_notes)
            writer.write_string_value("personType", @person_type)
            writer.write_collection_of_object_values("phones", @phones)
            writer.write_collection_of_object_values("postalAddresses", @postal_addresses)
            writer.write_string_value("profession", @profession)
            writer.write_collection_of_object_values("sources", @sources)
            writer.write_string_value("surname", @surname)
            writer.write_string_value("title", @title)
            writer.write_string_value("userPrincipalName", @user_principal_name)
            writer.write_collection_of_object_values("websites", @websites)
            writer.write_string_value("yomiCompany", @yomi_company)
        end
        ## 
        ## Gets the sources property value. The sources the user data comes from, for example Directory or Outlook Contacts.
        ## @return a person_data_source
        ## 
        def sources
            return @sources
        end
        ## 
        ## Sets the sources property value. The sources the user data comes from, for example Directory or Outlook Contacts.
        ## @param value Value to set for the sources property.
        ## @return a void
        ## 
        def sources=(value)
            @sources = value
        end
        ## 
        ## Gets the surname property value. The person's surname.
        ## @return a string
        ## 
        def surname
            return @surname
        end
        ## 
        ## Sets the surname property value. The person's surname.
        ## @param value Value to set for the surname property.
        ## @return a void
        ## 
        def surname=(value)
            @surname = value
        end
        ## 
        ## Gets the title property value. The person's title.
        ## @return a string
        ## 
        def title
            return @title
        end
        ## 
        ## Sets the title property value. The person's title.
        ## @param value Value to set for the title property.
        ## @return a void
        ## 
        def title=(value)
            @title = value
        end
        ## 
        ## Gets the userPrincipalName property value. The user principal name (UPN) of the person. The UPN is an Internet-style login name for the person based on the Internet standard RFC 822. By convention, this should map to the person's email name. The general format is alias@domain.
        ## @return a string
        ## 
        def user_principal_name
            return @user_principal_name
        end
        ## 
        ## Sets the userPrincipalName property value. The user principal name (UPN) of the person. The UPN is an Internet-style login name for the person based on the Internet standard RFC 822. By convention, this should map to the person's email name. The general format is alias@domain.
        ## @param value Value to set for the userPrincipalName property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
        ## 
        ## Gets the websites property value. The person's websites.
        ## @return a website
        ## 
        def websites
            return @websites
        end
        ## 
        ## Sets the websites property value. The person's websites.
        ## @param value Value to set for the websites property.
        ## @return a void
        ## 
        def websites=(value)
            @websites = value
        end
        ## 
        ## Gets the yomiCompany property value. The phonetic Japanese name of the person's company.
        ## @return a string
        ## 
        def yomi_company
            return @yomi_company
        end
        ## 
        ## Sets the yomiCompany property value. The phonetic Japanese name of the person's company.
        ## @param value Value to set for the yomiCompany property.
        ## @return a void
        ## 
        def yomi_company=(value)
            @yomi_company = value
        end
    end
end
