require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsDeviceAzureADAccount < MicrosoftGraphBeta::Models::WindowsDeviceAccount
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Not yet documented
            @user_principal_name
            ## 
            ## Instantiates a new windowsDeviceAzureADAccount and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsDeviceAzureADAccount"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_device_azure_a_d_account
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsDeviceAzureADAccount.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
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
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the userPrincipalName property value. Not yet documented
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. Not yet documented
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
