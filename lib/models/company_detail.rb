require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CompanyDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Address of the company.
            @address
            ## 
            # Legal entity number of the company or its subdivision. For information on how to set the value for the companyCode, see profileSourceAnnotation.
            @company_code
            ## 
            # Department Name within a company.
            @department
            ## 
            # Company name.
            @display_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Office Location of the person referred to.
            @office_location
            ## 
            # Pronunciation guide for the company name.
            @pronunciation
            ## 
            # The secondaryDepartment property
            @secondary_department
            ## 
            # Link to the company home page.
            @web_url
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the address property value. Address of the company.
            ## @return a physical_address
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. Address of the company.
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Gets the companyCode property value. Legal entity number of the company or its subdivision. For information on how to set the value for the companyCode, see profileSourceAnnotation.
            ## @return a string
            ## 
            def company_code
                return @company_code
            end
            ## 
            ## Sets the companyCode property value. Legal entity number of the company or its subdivision. For information on how to set the value for the companyCode, see profileSourceAnnotation.
            ## @param value Value to set for the companyCode property.
            ## @return a void
            ## 
            def company_code=(value)
                @company_code = value
            end
            ## 
            ## Instantiates a new CompanyDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a company_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CompanyDetail.new
            end
            ## 
            ## Gets the department property value. Department Name within a company.
            ## @return a string
            ## 
            def department
                return @department
            end
            ## 
            ## Sets the department property value. Department Name within a company.
            ## @param value Value to set for the department property.
            ## @return a void
            ## 
            def department=(value)
                @department = value
            end
            ## 
            ## Gets the displayName property value. Company name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Company name.
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
                return {
                    "address" => lambda {|n| @address = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PhysicalAddress.create_from_discriminator_value(pn) }) },
                    "companyCode" => lambda {|n| @company_code = n.get_string_value() },
                    "department" => lambda {|n| @department = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "officeLocation" => lambda {|n| @office_location = n.get_string_value() },
                    "pronunciation" => lambda {|n| @pronunciation = n.get_string_value() },
                    "secondaryDepartment" => lambda {|n| @secondary_department = n.get_string_value() },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the officeLocation property value. Office Location of the person referred to.
            ## @return a string
            ## 
            def office_location
                return @office_location
            end
            ## 
            ## Sets the officeLocation property value. Office Location of the person referred to.
            ## @param value Value to set for the officeLocation property.
            ## @return a void
            ## 
            def office_location=(value)
                @office_location = value
            end
            ## 
            ## Gets the pronunciation property value. Pronunciation guide for the company name.
            ## @return a string
            ## 
            def pronunciation
                return @pronunciation
            end
            ## 
            ## Sets the pronunciation property value. Pronunciation guide for the company name.
            ## @param value Value to set for the pronunciation property.
            ## @return a void
            ## 
            def pronunciation=(value)
                @pronunciation = value
            end
            ## 
            ## Gets the secondaryDepartment property value. The secondaryDepartment property
            ## @return a string
            ## 
            def secondary_department
                return @secondary_department
            end
            ## 
            ## Sets the secondaryDepartment property value. The secondaryDepartment property
            ## @param value Value to set for the secondaryDepartment property.
            ## @return a void
            ## 
            def secondary_department=(value)
                @secondary_department = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("address", @address)
                writer.write_string_value("companyCode", @company_code)
                writer.write_string_value("department", @department)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("officeLocation", @office_location)
                writer.write_string_value("pronunciation", @pronunciation)
                writer.write_string_value("secondaryDepartment", @secondary_department)
                writer.write_string_value("webUrl", @web_url)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the webUrl property value. Link to the company home page.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. Link to the company home page.
            ## @param value Value to set for the webUrl property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
