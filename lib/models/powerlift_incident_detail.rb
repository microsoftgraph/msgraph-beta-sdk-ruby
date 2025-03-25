require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # This type contains specific information regarding a Powerlift incident, such as when it was uploaded, the platform the device was on, and a string array of files associated to the incident.
        class PowerliftIncidentDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # TThe name of the application for which the diagnostic is collected. Example: com.microsoft.CompanyPortal
            @application_name
            ## 
            # The version of the application for which the diagnostic is collected. Example: 5.2203.1
            @client_application_version
            ## 
            # The time the app diagnostic was created. The value cannot be modified and is automatically populated when the diagnostic is uploaded. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.Example: 2022-04-19T17:24:45.313Z
            @created_date_time
            ## 
            # The unique app diagnostic identifier as a user friendly 8 character hexadecimal string. This id is smaller compared to the powerliftId. Th Example: 8520467A
            @easy_id
            ## 
            # A list of files that are associated with the diagnostic.
            @file_names
            ## 
            # The locale information of the application for which the diagnostic is collected. Example: en-US
            @locale
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The operating system of the device from which diagnostics are collected. Example: iOS
            @platform_display_name
            ## 
            # The unique identifier of the app diagnostic. This id is assigned to a diagnostic when it is uploaded to Powerlift. Example: 8520467a-49a9-44a4-8447-8dfb8bec6726
            @powerlift_id
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
            ## Gets the applicationName property value. TThe name of the application for which the diagnostic is collected. Example: com.microsoft.CompanyPortal
            ## @return a string
            ## 
            def application_name
                return @application_name
            end
            ## 
            ## Sets the applicationName property value. TThe name of the application for which the diagnostic is collected. Example: com.microsoft.CompanyPortal
            ## @param value Value to set for the applicationName property.
            ## @return a void
            ## 
            def application_name=(value)
                @application_name = value
            end
            ## 
            ## Gets the clientApplicationVersion property value. The version of the application for which the diagnostic is collected. Example: 5.2203.1
            ## @return a string
            ## 
            def client_application_version
                return @client_application_version
            end
            ## 
            ## Sets the clientApplicationVersion property value. The version of the application for which the diagnostic is collected. Example: 5.2203.1
            ## @param value Value to set for the clientApplicationVersion property.
            ## @return a void
            ## 
            def client_application_version=(value)
                @client_application_version = value
            end
            ## 
            ## Instantiates a new PowerliftIncidentDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the createdDateTime property value. The time the app diagnostic was created. The value cannot be modified and is automatically populated when the diagnostic is uploaded. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.Example: 2022-04-19T17:24:45.313Z
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The time the app diagnostic was created. The value cannot be modified and is automatically populated when the diagnostic is uploaded. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time.Example: 2022-04-19T17:24:45.313Z
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a powerlift_incident_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PowerliftIncidentDetail.new
            end
            ## 
            ## Gets the easyId property value. The unique app diagnostic identifier as a user friendly 8 character hexadecimal string. This id is smaller compared to the powerliftId. Th Example: 8520467A
            ## @return a string
            ## 
            def easy_id
                return @easy_id
            end
            ## 
            ## Sets the easyId property value. The unique app diagnostic identifier as a user friendly 8 character hexadecimal string. This id is smaller compared to the powerliftId. Th Example: 8520467A
            ## @param value Value to set for the easyId property.
            ## @return a void
            ## 
            def easy_id=(value)
                @easy_id = value
            end
            ## 
            ## Gets the fileNames property value. A list of files that are associated with the diagnostic.
            ## @return a string
            ## 
            def file_names
                return @file_names
            end
            ## 
            ## Sets the fileNames property value. A list of files that are associated with the diagnostic.
            ## @param value Value to set for the fileNames property.
            ## @return a void
            ## 
            def file_names=(value)
                @file_names = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "applicationName" => lambda {|n| @application_name = n.get_string_value() },
                    "clientApplicationVersion" => lambda {|n| @client_application_version = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "easyId" => lambda {|n| @easy_id = n.get_string_value() },
                    "fileNames" => lambda {|n| @file_names = n.get_collection_of_primitive_values(String) },
                    "locale" => lambda {|n| @locale = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "platformDisplayName" => lambda {|n| @platform_display_name = n.get_string_value() },
                    "powerliftId" => lambda {|n| @powerlift_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the locale property value. The locale information of the application for which the diagnostic is collected. Example: en-US
            ## @return a string
            ## 
            def locale
                return @locale
            end
            ## 
            ## Sets the locale property value. The locale information of the application for which the diagnostic is collected. Example: en-US
            ## @param value Value to set for the locale property.
            ## @return a void
            ## 
            def locale=(value)
                @locale = value
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
            ## Gets the platformDisplayName property value. The operating system of the device from which diagnostics are collected. Example: iOS
            ## @return a string
            ## 
            def platform_display_name
                return @platform_display_name
            end
            ## 
            ## Sets the platformDisplayName property value. The operating system of the device from which diagnostics are collected. Example: iOS
            ## @param value Value to set for the platformDisplayName property.
            ## @return a void
            ## 
            def platform_display_name=(value)
                @platform_display_name = value
            end
            ## 
            ## Gets the powerliftId property value. The unique identifier of the app diagnostic. This id is assigned to a diagnostic when it is uploaded to Powerlift. Example: 8520467a-49a9-44a4-8447-8dfb8bec6726
            ## @return a string
            ## 
            def powerlift_id
                return @powerlift_id
            end
            ## 
            ## Sets the powerliftId property value. The unique identifier of the app diagnostic. This id is assigned to a diagnostic when it is uploaded to Powerlift. Example: 8520467a-49a9-44a4-8447-8dfb8bec6726
            ## @param value Value to set for the powerliftId property.
            ## @return a void
            ## 
            def powerlift_id=(value)
                @powerlift_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("applicationName", @application_name)
                writer.write_string_value("clientApplicationVersion", @client_application_version)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("easyId", @easy_id)
                writer.write_collection_of_primitive_values("fileNames", @file_names)
                writer.write_string_value("locale", @locale)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("platformDisplayName", @platform_display_name)
                writer.write_string_value("powerliftId", @powerlift_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
