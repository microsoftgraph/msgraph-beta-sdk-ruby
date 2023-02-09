require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CompanyInformation < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The address property
            @address
            ## 
            # The currencyCode property
            @currency_code
            ## 
            # The currentFiscalYearStartDate property
            @current_fiscal_year_start_date
            ## 
            # The displayName property
            @display_name
            ## 
            # The email property
            @email
            ## 
            # The faxNumber property
            @fax_number
            ## 
            # The industry property
            @industry
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The phoneNumber property
            @phone_number
            ## 
            # The picture property
            @picture
            ## 
            # The taxRegistrationNumber property
            @tax_registration_number
            ## 
            # The website property
            @website
            ## 
            ## Gets the address property value. The address property
            ## @return a postal_address_type
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. The address property
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Instantiates a new companyInformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a company_information
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CompanyInformation.new
            end
            ## 
            ## Gets the currencyCode property value. The currencyCode property
            ## @return a string
            ## 
            def currency_code
                return @currency_code
            end
            ## 
            ## Sets the currencyCode property value. The currencyCode property
            ## @param value Value to set for the currency_code property.
            ## @return a void
            ## 
            def currency_code=(value)
                @currency_code = value
            end
            ## 
            ## Gets the currentFiscalYearStartDate property value. The currentFiscalYearStartDate property
            ## @return a date
            ## 
            def current_fiscal_year_start_date
                return @current_fiscal_year_start_date
            end
            ## 
            ## Sets the currentFiscalYearStartDate property value. The currentFiscalYearStartDate property
            ## @param value Value to set for the current_fiscal_year_start_date property.
            ## @return a void
            ## 
            def current_fiscal_year_start_date=(value)
                @current_fiscal_year_start_date = value
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
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the email property value. The email property
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. The email property
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## Gets the faxNumber property value. The faxNumber property
            ## @return a string
            ## 
            def fax_number
                return @fax_number
            end
            ## 
            ## Sets the faxNumber property value. The faxNumber property
            ## @param value Value to set for the fax_number property.
            ## @return a void
            ## 
            def fax_number=(value)
                @fax_number = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "address" => lambda {|n| @address = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PostalAddressType.create_from_discriminator_value(pn) }) },
                    "currencyCode" => lambda {|n| @currency_code = n.get_string_value() },
                    "currentFiscalYearStartDate" => lambda {|n| @current_fiscal_year_start_date = n.get_date_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "faxNumber" => lambda {|n| @fax_number = n.get_string_value() },
                    "industry" => lambda {|n| @industry = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "phoneNumber" => lambda {|n| @phone_number = n.get_string_value() },
                    "picture" => lambda {|n| @picture = n.get_string_value() },
                    "taxRegistrationNumber" => lambda {|n| @tax_registration_number = n.get_string_value() },
                    "website" => lambda {|n| @website = n.get_string_value() },
                })
            end
            ## 
            ## Gets the industry property value. The industry property
            ## @return a string
            ## 
            def industry
                return @industry
            end
            ## 
            ## Sets the industry property value. The industry property
            ## @param value Value to set for the industry property.
            ## @return a void
            ## 
            def industry=(value)
                @industry = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the phoneNumber property value. The phoneNumber property
            ## @return a string
            ## 
            def phone_number
                return @phone_number
            end
            ## 
            ## Sets the phoneNumber property value. The phoneNumber property
            ## @param value Value to set for the phone_number property.
            ## @return a void
            ## 
            def phone_number=(value)
                @phone_number = value
            end
            ## 
            ## Gets the picture property value. The picture property
            ## @return a binary
            ## 
            def picture
                return @picture
            end
            ## 
            ## Sets the picture property value. The picture property
            ## @param value Value to set for the picture property.
            ## @return a void
            ## 
            def picture=(value)
                @picture = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("address", @address)
                writer.write_string_value("currencyCode", @currency_code)
                writer.write_date_value("currentFiscalYearStartDate", @current_fiscal_year_start_date)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("email", @email)
                writer.write_string_value("faxNumber", @fax_number)
                writer.write_string_value("industry", @industry)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("phoneNumber", @phone_number)
                writer.write_object_value("picture", @picture)
                writer.write_string_value("taxRegistrationNumber", @tax_registration_number)
                writer.write_string_value("website", @website)
            end
            ## 
            ## Gets the taxRegistrationNumber property value. The taxRegistrationNumber property
            ## @return a string
            ## 
            def tax_registration_number
                return @tax_registration_number
            end
            ## 
            ## Sets the taxRegistrationNumber property value. The taxRegistrationNumber property
            ## @param value Value to set for the tax_registration_number property.
            ## @return a void
            ## 
            def tax_registration_number=(value)
                @tax_registration_number = value
            end
            ## 
            ## Gets the website property value. The website property
            ## @return a string
            ## 
            def website
                return @website
            end
            ## 
            ## Sets the website property value. The website property
            ## @param value Value to set for the website property.
            ## @return a void
            ## 
            def website=(value)
                @website = value
            end
        end
    end
end
