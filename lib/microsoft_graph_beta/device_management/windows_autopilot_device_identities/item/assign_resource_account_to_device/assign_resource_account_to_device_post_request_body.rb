require 'microsoft_kiota_abstractions'
require_relative '../../../device_management'
require_relative '../../windows_autopilot_device_identities'
require_relative '../item'
require_relative './assign_resource_account_to_device'

module MicrosoftGraphBeta::DeviceManagement::WindowsAutopilotDeviceIdentities::Item::AssignResourceAccountToDevice
    ## 
    # Provides operations to call the assignResourceAccountToDevice method.
    class AssignResourceAccountToDevicePostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The addressableUserName property
        @addressable_user_name
        ## 
        # The resourceAccountName property
        @resource_account_name
        ## 
        # The userPrincipalName property
        @user_principal_name
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
        ## Gets the addressableUserName property value. The addressableUserName property
        ## @return a string
        ## 
        def addressable_user_name
            return @addressable_user_name
        end
        ## 
        ## Sets the addressableUserName property value. The addressableUserName property
        ## @param value Value to set for the addressableUserName property.
        ## @return a void
        ## 
        def addressable_user_name=(value)
            @addressable_user_name = value
        end
        ## 
        ## Instantiates a new assignResourceAccountToDevicePostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a assign_resource_account_to_device_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AssignResourceAccountToDevicePostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "addressableUserName" => lambda {|n| @addressable_user_name = n.get_string_value() },
                "resourceAccountName" => lambda {|n| @resource_account_name = n.get_string_value() },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
            }
        end
        ## 
        ## Gets the resourceAccountName property value. The resourceAccountName property
        ## @return a string
        ## 
        def resource_account_name
            return @resource_account_name
        end
        ## 
        ## Sets the resourceAccountName property value. The resourceAccountName property
        ## @param value Value to set for the resourceAccountName property.
        ## @return a void
        ## 
        def resource_account_name=(value)
            @resource_account_name = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("addressableUserName", @addressable_user_name)
            writer.write_string_value("resourceAccountName", @resource_account_name)
            writer.write_string_value("userPrincipalName", @user_principal_name)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the userPrincipalName property value. The userPrincipalName property
        ## @return a string
        ## 
        def user_principal_name
            return @user_principal_name
        end
        ## 
        ## Sets the userPrincipalName property value. The userPrincipalName property
        ## @param value Value to set for the userPrincipalName property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
    end
end
