require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Employee
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The address property
            @address
            ## 
            # The birthDate property
            @birth_date
            ## 
            # The displayName property
            @display_name
            ## 
            # The email property
            @email
            ## 
            # The employmentDate property
            @employment_date
            ## 
            # The givenName property
            @given_name
            ## 
            # The id property
            @id
            ## 
            # The jobTitle property
            @job_title
            ## 
            # The lastModifiedDateTime property
            @last_modified_date_time
            ## 
            # The middleName property
            @middle_name
            ## 
            # The mobilePhone property
            @mobile_phone
            ## 
            # The number property
            @number
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The personalEmail property
            @personal_email
            ## 
            # The phoneNumber property
            @phone_number
            ## 
            # The picture property
            @picture
            ## 
            # The statisticsGroupCode property
            @statistics_group_code
            ## 
            # The status property
            @status
            ## 
            # The surname property
            @surname
            ## 
            # The terminationDate property
            @termination_date
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
            ## Gets the birthDate property value. The birthDate property
            ## @return a date
            ## 
            def birth_date
                return @birth_date
            end
            ## 
            ## Sets the birthDate property value. The birthDate property
            ## @param value Value to set for the birthDate property.
            ## @return a void
            ## 
            def birth_date=(value)
                @birth_date = value
            end
            ## 
            ## Instantiates a new Employee and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a employee
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Employee.new
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
            ## @param value Value to set for the displayName property.
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
            ## Gets the employmentDate property value. The employmentDate property
            ## @return a date
            ## 
            def employment_date
                return @employment_date
            end
            ## 
            ## Sets the employmentDate property value. The employmentDate property
            ## @param value Value to set for the employmentDate property.
            ## @return a void
            ## 
            def employment_date=(value)
                @employment_date = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "address" => lambda {|n| @address = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PostalAddressType.create_from_discriminator_value(pn) }) },
                    "birthDate" => lambda {|n| @birth_date = n.get_date_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "employmentDate" => lambda {|n| @employment_date = n.get_date_value() },
                    "givenName" => lambda {|n| @given_name = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_guid_value() },
                    "jobTitle" => lambda {|n| @job_title = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "middleName" => lambda {|n| @middle_name = n.get_string_value() },
                    "mobilePhone" => lambda {|n| @mobile_phone = n.get_string_value() },
                    "number" => lambda {|n| @number = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "personalEmail" => lambda {|n| @personal_email = n.get_string_value() },
                    "phoneNumber" => lambda {|n| @phone_number = n.get_string_value() },
                    "picture" => lambda {|n| @picture = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Picture.create_from_discriminator_value(pn) }) },
                    "statisticsGroupCode" => lambda {|n| @statistics_group_code = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
                    "surname" => lambda {|n| @surname = n.get_string_value() },
                    "terminationDate" => lambda {|n| @termination_date = n.get_date_value() },
                }
            end
            ## 
            ## Gets the givenName property value. The givenName property
            ## @return a string
            ## 
            def given_name
                return @given_name
            end
            ## 
            ## Sets the givenName property value. The givenName property
            ## @param value Value to set for the givenName property.
            ## @return a void
            ## 
            def given_name=(value)
                @given_name = value
            end
            ## 
            ## Gets the id property value. The id property
            ## @return a guid
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The id property
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the jobTitle property value. The jobTitle property
            ## @return a string
            ## 
            def job_title
                return @job_title
            end
            ## 
            ## Sets the jobTitle property value. The jobTitle property
            ## @param value Value to set for the jobTitle property.
            ## @return a void
            ## 
            def job_title=(value)
                @job_title = value
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
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the middleName property value. The middleName property
            ## @return a string
            ## 
            def middle_name
                return @middle_name
            end
            ## 
            ## Sets the middleName property value. The middleName property
            ## @param value Value to set for the middleName property.
            ## @return a void
            ## 
            def middle_name=(value)
                @middle_name = value
            end
            ## 
            ## Gets the mobilePhone property value. The mobilePhone property
            ## @return a string
            ## 
            def mobile_phone
                return @mobile_phone
            end
            ## 
            ## Sets the mobilePhone property value. The mobilePhone property
            ## @param value Value to set for the mobilePhone property.
            ## @return a void
            ## 
            def mobile_phone=(value)
                @mobile_phone = value
            end
            ## 
            ## Gets the number property value. The number property
            ## @return a string
            ## 
            def number
                return @number
            end
            ## 
            ## Sets the number property value. The number property
            ## @param value Value to set for the number property.
            ## @return a void
            ## 
            def number=(value)
                @number = value
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
            ## Gets the personalEmail property value. The personalEmail property
            ## @return a string
            ## 
            def personal_email
                return @personal_email
            end
            ## 
            ## Sets the personalEmail property value. The personalEmail property
            ## @param value Value to set for the personalEmail property.
            ## @return a void
            ## 
            def personal_email=(value)
                @personal_email = value
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
            ## @param value Value to set for the phoneNumber property.
            ## @return a void
            ## 
            def phone_number=(value)
                @phone_number = value
            end
            ## 
            ## Gets the picture property value. The picture property
            ## @return a picture
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
                writer.write_object_value("address", @address)
                writer.write_date_value("birthDate", @birth_date)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("email", @email)
                writer.write_date_value("employmentDate", @employment_date)
                writer.write_string_value("givenName", @given_name)
                writer.write_guid_value("id", @id)
                writer.write_string_value("jobTitle", @job_title)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("middleName", @middle_name)
                writer.write_string_value("mobilePhone", @mobile_phone)
                writer.write_string_value("number", @number)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("personalEmail", @personal_email)
                writer.write_string_value("phoneNumber", @phone_number)
                writer.write_collection_of_object_values("picture", @picture)
                writer.write_string_value("statisticsGroupCode", @statistics_group_code)
                writer.write_string_value("status", @status)
                writer.write_string_value("surname", @surname)
                writer.write_date_value("terminationDate", @termination_date)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the statisticsGroupCode property value. The statisticsGroupCode property
            ## @return a string
            ## 
            def statistics_group_code
                return @statistics_group_code
            end
            ## 
            ## Sets the statisticsGroupCode property value. The statisticsGroupCode property
            ## @param value Value to set for the statisticsGroupCode property.
            ## @return a void
            ## 
            def statistics_group_code=(value)
                @statistics_group_code = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the surname property value. The surname property
            ## @return a string
            ## 
            def surname
                return @surname
            end
            ## 
            ## Sets the surname property value. The surname property
            ## @param value Value to set for the surname property.
            ## @return a void
            ## 
            def surname=(value)
                @surname = value
            end
            ## 
            ## Gets the terminationDate property value. The terminationDate property
            ## @return a date
            ## 
            def termination_date
                return @termination_date
            end
            ## 
            ## Sets the terminationDate property value. The terminationDate property
            ## @param value Value to set for the terminationDate property.
            ## @return a void
            ## 
            def termination_date=(value)
                @termination_date = value
            end
        end
    end
end
