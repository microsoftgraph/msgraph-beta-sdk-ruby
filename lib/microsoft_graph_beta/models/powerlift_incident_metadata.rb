require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Collection of app diagnostics associated with a user.
    class PowerliftIncidentMetadata
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The name of the application the diagnostic is from. Example: com.microsoft.CompanyPortal
        @application
        ## 
        # The version of the application. Example: 5.2203.1
        @client_version
        ## 
        # The time the app diagnostic was created. Example: 2022-04-19T17:24:45.313Z
        @created_at_date_time
        ## 
        # The unique app diagnostic identifier as a user friendly 8 character hexadecimal string. Example: 8520467A
        @easy_id
        ## 
        # A list of files that are associated with the diagnostic.
        @file_names
        ## 
        # The locale information of the application. Example: en-US
        @locale
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The device's OS the diagnostic is from. Example: iOS
        @platform
        ## 
        # The unique identifier of the app diagnostic. Example: 8520467a-49a9-44a4-8447-8dfb8bec6726
        @powerlift_id
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the application property value. The name of the application the diagnostic is from. Example: com.microsoft.CompanyPortal
        ## @return a string
        ## 
        def application
            return @application
        end
        ## 
        ## Sets the application property value. The name of the application the diagnostic is from. Example: com.microsoft.CompanyPortal
        ## @param value Value to set for the application property.
        ## @return a void
        ## 
        def application=(value)
            @application = value
        end
        ## 
        ## Gets the clientVersion property value. The version of the application. Example: 5.2203.1
        ## @return a string
        ## 
        def client_version
            return @client_version
        end
        ## 
        ## Sets the clientVersion property value. The version of the application. Example: 5.2203.1
        ## @param value Value to set for the clientVersion property.
        ## @return a void
        ## 
        def client_version=(value)
            @client_version = value
        end
        ## 
        ## Instantiates a new powerliftIncidentMetadata and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Gets the createdAtDateTime property value. The time the app diagnostic was created. Example: 2022-04-19T17:24:45.313Z
        ## @return a date_time
        ## 
        def created_at_date_time
            return @created_at_date_time
        end
        ## 
        ## Sets the createdAtDateTime property value. The time the app diagnostic was created. Example: 2022-04-19T17:24:45.313Z
        ## @param value Value to set for the createdAtDateTime property.
        ## @return a void
        ## 
        def created_at_date_time=(value)
            @created_at_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a powerlift_incident_metadata
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PowerliftIncidentMetadata.new
        end
        ## 
        ## Gets the easyId property value. The unique app diagnostic identifier as a user friendly 8 character hexadecimal string. Example: 8520467A
        ## @return a string
        ## 
        def easy_id
            return @easy_id
        end
        ## 
        ## Sets the easyId property value. The unique app diagnostic identifier as a user friendly 8 character hexadecimal string. Example: 8520467A
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
                "application" => lambda {|n| @application = n.get_string_value() },
                "clientVersion" => lambda {|n| @client_version = n.get_string_value() },
                "createdAtDateTime" => lambda {|n| @created_at_date_time = n.get_date_time_value() },
                "easyId" => lambda {|n| @easy_id = n.get_string_value() },
                "fileNames" => lambda {|n| @file_names = n.get_collection_of_primitive_values(String) },
                "locale" => lambda {|n| @locale = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "platform" => lambda {|n| @platform = n.get_string_value() },
                "powerliftId" => lambda {|n| @powerlift_id = n.get_guid_value() },
            }
        end
        ## 
        ## Gets the locale property value. The locale information of the application. Example: en-US
        ## @return a string
        ## 
        def locale
            return @locale
        end
        ## 
        ## Sets the locale property value. The locale information of the application. Example: en-US
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the platform property value. The device's OS the diagnostic is from. Example: iOS
        ## @return a string
        ## 
        def platform
            return @platform
        end
        ## 
        ## Sets the platform property value. The device's OS the diagnostic is from. Example: iOS
        ## @param value Value to set for the platform property.
        ## @return a void
        ## 
        def platform=(value)
            @platform = value
        end
        ## 
        ## Gets the powerliftId property value. The unique identifier of the app diagnostic. Example: 8520467a-49a9-44a4-8447-8dfb8bec6726
        ## @return a guid
        ## 
        def powerlift_id
            return @powerlift_id
        end
        ## 
        ## Sets the powerliftId property value. The unique identifier of the app diagnostic. Example: 8520467a-49a9-44a4-8447-8dfb8bec6726
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
            writer.write_string_value("application", @application)
            writer.write_string_value("clientVersion", @client_version)
            writer.write_date_time_value("createdAtDateTime", @created_at_date_time)
            writer.write_string_value("easyId", @easy_id)
            writer.write_collection_of_primitive_values("fileNames", @file_names)
            writer.write_string_value("locale", @locale)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("platform", @platform)
            writer.write_guid_value("powerliftId", @powerlift_id)
            writer.write_additional_data(@additional_data)
        end
    end
end
