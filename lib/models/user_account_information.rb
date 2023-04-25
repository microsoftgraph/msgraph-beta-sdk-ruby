require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserAccountInformation < MicrosoftGraphBeta::Models::ItemFacet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Shows the age group of user. Allowed values null, minor, notAdult and adult are generated by the directory and cannot be changed.
            @age_group
            ## 
            # Contains the two-character country code associated with the users account.
            @country_code
            ## 
            # The preferredLanguageTag property
            @preferred_language_tag
            ## 
            # The user principal name (UPN) of the user associated with the account.
            @user_principal_name
            ## 
            ## Gets the ageGroup property value. Shows the age group of user. Allowed values null, minor, notAdult and adult are generated by the directory and cannot be changed.
            ## @return a string
            ## 
            def age_group
                return @age_group
            end
            ## 
            ## Sets the ageGroup property value. Shows the age group of user. Allowed values null, minor, notAdult and adult are generated by the directory and cannot be changed.
            ## @param value Value to set for the age_group property.
            ## @return a void
            ## 
            def age_group=(value)
                @age_group = value
            end
            ## 
            ## Instantiates a new UserAccountInformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.userAccountInformation"
            end
            ## 
            ## Gets the countryCode property value. Contains the two-character country code associated with the users account.
            ## @return a string
            ## 
            def country_code
                return @country_code
            end
            ## 
            ## Sets the countryCode property value. Contains the two-character country code associated with the users account.
            ## @param value Value to set for the country_code property.
            ## @return a void
            ## 
            def country_code=(value)
                @country_code = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_account_information
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserAccountInformation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "ageGroup" => lambda {|n| @age_group = n.get_string_value() },
                    "countryCode" => lambda {|n| @country_code = n.get_string_value() },
                    "preferredLanguageTag" => lambda {|n| @preferred_language_tag = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LocaleInfo.create_from_discriminator_value(pn) }) },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the preferredLanguageTag property value. The preferredLanguageTag property
            ## @return a locale_info
            ## 
            def preferred_language_tag
                return @preferred_language_tag
            end
            ## 
            ## Sets the preferredLanguageTag property value. The preferredLanguageTag property
            ## @param value Value to set for the preferred_language_tag property.
            ## @return a void
            ## 
            def preferred_language_tag=(value)
                @preferred_language_tag = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("ageGroup", @age_group)
                writer.write_string_value("countryCode", @country_code)
                writer.write_object_value("preferredLanguageTag", @preferred_language_tag)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the userPrincipalName property value. The user principal name (UPN) of the user associated with the account.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The user principal name (UPN) of the user associated with the account.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
