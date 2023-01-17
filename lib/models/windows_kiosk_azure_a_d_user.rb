require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class WindowsKioskAzureADUser < MicrosoftGraphBeta::Models::WindowsKioskUser
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The ID of the AzureAD user that will be locked to this kiosk configuration
        @user_id
        ## 
        # The user accounts that will be locked to this kiosk configuration
        @user_principal_name
        ## 
        ## Instantiates a new WindowsKioskAzureADUser and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsKioskAzureADUser"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_kiosk_azure_a_d_user
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsKioskAzureADUser.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "userId" => lambda {|n| @user_id = n.get_string_value() },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("userId", @user_id)
            writer.write_string_value("userPrincipalName", @user_principal_name)
        end
        ## 
        ## Gets the userId property value. The ID of the AzureAD user that will be locked to this kiosk configuration
        ## @return a string
        ## 
        def user_id
            return @user_id
        end
        ## 
        ## Sets the userId property value. The ID of the AzureAD user that will be locked to this kiosk configuration
        ## @param value Value to set for the userId property.
        ## @return a void
        ## 
        def user_id=(value)
            @user_id = value
        end
        ## 
        ## Gets the userPrincipalName property value. The user accounts that will be locked to this kiosk configuration
        ## @return a string
        ## 
        def user_principal_name
            return @user_principal_name
        end
        ## 
        ## Sets the userPrincipalName property value. The user accounts that will be locked to this kiosk configuration
        ## @param value Value to set for the userPrincipalName property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
    end
end
