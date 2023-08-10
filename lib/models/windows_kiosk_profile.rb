require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsKioskProfile
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The app base class used to identify the application info for the kiosk configuration
            @app_configuration
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Key of the entity.
            @profile_id
            ## 
            # This is a friendly name used to identify a group of applications, the layout of these apps on the start menu and the users to whom this kiosk configuration is assigned.
            @profile_name
            ## 
            # The user accounts that will be locked to this kiosk configuration. This collection can contain a maximum of 100 elements.
            @user_accounts_configuration
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the appConfiguration property value. The app base class used to identify the application info for the kiosk configuration
            ## @return a windows_kiosk_app_configuration
            ## 
            def app_configuration
                return @app_configuration
            end
            ## 
            ## Sets the appConfiguration property value. The app base class used to identify the application info for the kiosk configuration
            ## @param value Value to set for the appConfiguration property.
            ## @return a void
            ## 
            def app_configuration=(value)
                @app_configuration = value
            end
            ## 
            ## Instantiates a new windowsKioskProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_kiosk_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsKioskProfile.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "appConfiguration" => lambda {|n| @app_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsKioskAppConfiguration.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "profileId" => lambda {|n| @profile_id = n.get_string_value() },
                    "profileName" => lambda {|n| @profile_name = n.get_string_value() },
                    "userAccountsConfiguration" => lambda {|n| @user_accounts_configuration = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsKioskUser.create_from_discriminator_value(pn) }) },
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
            ## Gets the profileId property value. Key of the entity.
            ## @return a string
            ## 
            def profile_id
                return @profile_id
            end
            ## 
            ## Sets the profileId property value. Key of the entity.
            ## @param value Value to set for the profileId property.
            ## @return a void
            ## 
            def profile_id=(value)
                @profile_id = value
            end
            ## 
            ## Gets the profileName property value. This is a friendly name used to identify a group of applications, the layout of these apps on the start menu and the users to whom this kiosk configuration is assigned.
            ## @return a string
            ## 
            def profile_name
                return @profile_name
            end
            ## 
            ## Sets the profileName property value. This is a friendly name used to identify a group of applications, the layout of these apps on the start menu and the users to whom this kiosk configuration is assigned.
            ## @param value Value to set for the profileName property.
            ## @return a void
            ## 
            def profile_name=(value)
                @profile_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("appConfiguration", @app_configuration)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("profileId", @profile_id)
                writer.write_string_value("profileName", @profile_name)
                writer.write_collection_of_object_values("userAccountsConfiguration", @user_accounts_configuration)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userAccountsConfiguration property value. The user accounts that will be locked to this kiosk configuration. This collection can contain a maximum of 100 elements.
            ## @return a windows_kiosk_user
            ## 
            def user_accounts_configuration
                return @user_accounts_configuration
            end
            ## 
            ## Sets the userAccountsConfiguration property value. The user accounts that will be locked to this kiosk configuration. This collection can contain a maximum of 100 elements.
            ## @param value Value to set for the userAccountsConfiguration property.
            ## @return a void
            ## 
            def user_accounts_configuration=(value)
                @user_accounts_configuration = value
            end
        end
    end
end
