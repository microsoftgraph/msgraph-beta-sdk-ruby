require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PersonCertification < MicrosoftGraphBeta::Models::ItemFacet
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The referenceable identifier for the certification.
        @certification_id
        ## 
        # Description of the certification.
        @description
        ## 
        # Title of the certification.
        @display_name
        ## 
        # The date that the certification expires.
        @end_date
        ## 
        # The date that the certification was issued.
        @issued_date
        ## 
        # Authority which granted the certification.
        @issuing_authority
        ## 
        # Company which granted the certification.
        @issuing_company
        ## 
        # The date that the certification became valid.
        @start_date
        ## 
        # URL referencing a thumbnail of the certification.
        @thumbnail_url
        ## 
        # URL referencing the certification.
        @web_url
        ## 
        ## Gets the certificationId property value. The referenceable identifier for the certification.
        ## @return a string
        ## 
        def certification_id
            return @certification_id
        end
        ## 
        ## Sets the certificationId property value. The referenceable identifier for the certification.
        ## @param value Value to set for the certificationId property.
        ## @return a void
        ## 
        def certification_id=(value)
            @certification_id = value
        end
        ## 
        ## Instantiates a new PersonCertification and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.personCertification"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a person_certification
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PersonCertification.new
        end
        ## 
        ## Gets the description property value. Description of the certification.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Description of the certification.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. Title of the certification.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Title of the certification.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the endDate property value. The date that the certification expires.
        ## @return a date
        ## 
        def end_date
            return @end_date
        end
        ## 
        ## Sets the endDate property value. The date that the certification expires.
        ## @param value Value to set for the endDate property.
        ## @return a void
        ## 
        def end_date=(value)
            @end_date = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "certificationId" => lambda {|n| @certification_id = n.get_string_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "endDate" => lambda {|n| @end_date = n.get_date_value() },
                "issuedDate" => lambda {|n| @issued_date = n.get_date_value() },
                "issuingAuthority" => lambda {|n| @issuing_authority = n.get_string_value() },
                "issuingCompany" => lambda {|n| @issuing_company = n.get_string_value() },
                "startDate" => lambda {|n| @start_date = n.get_date_value() },
                "thumbnailUrl" => lambda {|n| @thumbnail_url = n.get_string_value() },
                "webUrl" => lambda {|n| @web_url = n.get_string_value() },
            })
        end
        ## 
        ## Gets the issuedDate property value. The date that the certification was issued.
        ## @return a date
        ## 
        def issued_date
            return @issued_date
        end
        ## 
        ## Sets the issuedDate property value. The date that the certification was issued.
        ## @param value Value to set for the issuedDate property.
        ## @return a void
        ## 
        def issued_date=(value)
            @issued_date = value
        end
        ## 
        ## Gets the issuingAuthority property value. Authority which granted the certification.
        ## @return a string
        ## 
        def issuing_authority
            return @issuing_authority
        end
        ## 
        ## Sets the issuingAuthority property value. Authority which granted the certification.
        ## @param value Value to set for the issuingAuthority property.
        ## @return a void
        ## 
        def issuing_authority=(value)
            @issuing_authority = value
        end
        ## 
        ## Gets the issuingCompany property value. Company which granted the certification.
        ## @return a string
        ## 
        def issuing_company
            return @issuing_company
        end
        ## 
        ## Sets the issuingCompany property value. Company which granted the certification.
        ## @param value Value to set for the issuingCompany property.
        ## @return a void
        ## 
        def issuing_company=(value)
            @issuing_company = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("certificationId", @certification_id)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_date_value("endDate", @end_date)
            writer.write_date_value("issuedDate", @issued_date)
            writer.write_string_value("issuingAuthority", @issuing_authority)
            writer.write_string_value("issuingCompany", @issuing_company)
            writer.write_date_value("startDate", @start_date)
            writer.write_string_value("thumbnailUrl", @thumbnail_url)
            writer.write_string_value("webUrl", @web_url)
        end
        ## 
        ## Gets the startDate property value. The date that the certification became valid.
        ## @return a date
        ## 
        def start_date
            return @start_date
        end
        ## 
        ## Sets the startDate property value. The date that the certification became valid.
        ## @param value Value to set for the startDate property.
        ## @return a void
        ## 
        def start_date=(value)
            @start_date = value
        end
        ## 
        ## Gets the thumbnailUrl property value. URL referencing a thumbnail of the certification.
        ## @return a string
        ## 
        def thumbnail_url
            return @thumbnail_url
        end
        ## 
        ## Sets the thumbnailUrl property value. URL referencing a thumbnail of the certification.
        ## @param value Value to set for the thumbnailUrl property.
        ## @return a void
        ## 
        def thumbnail_url=(value)
            @thumbnail_url = value
        end
        ## 
        ## Gets the webUrl property value. URL referencing the certification.
        ## @return a string
        ## 
        def web_url
            return @web_url
        end
        ## 
        ## Sets the webUrl property value. URL referencing the certification.
        ## @param value Value to set for the webUrl property.
        ## @return a void
        ## 
        def web_url=(value)
            @web_url = value
        end
    end
end
