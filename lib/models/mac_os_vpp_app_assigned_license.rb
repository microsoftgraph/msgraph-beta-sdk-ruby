require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # MacOS Volume Purchase Program license assignment. This class does not support Create, Delete, or Update.
        class MacOsVppAppAssignedLicense < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The user email address.
            @user_email_address
            ## 
            # The user ID.
            @user_id
            ## 
            # The user name.
            @user_name
            ## 
            # The user principal name.
            @user_principal_name
            ## 
            ## Instantiates a new macOsVppAppAssignedLicense and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mac_os_vpp_app_assigned_license
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOsVppAppAssignedLicense.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "userEmailAddress" => lambda {|n| @user_email_address = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userName" => lambda {|n| @user_name = n.get_string_value() },
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
                writer.write_string_value("userEmailAddress", @user_email_address)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userName", @user_name)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the userEmailAddress property value. The user email address.
            ## @return a string
            ## 
            def user_email_address
                return @user_email_address
            end
            ## 
            ## Sets the userEmailAddress property value. The user email address.
            ## @param value Value to set for the user_email_address property.
            ## @return a void
            ## 
            def user_email_address=(value)
                @user_email_address = value
            end
            ## 
            ## Gets the userId property value. The user ID.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The user ID.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userName property value. The user name.
            ## @return a string
            ## 
            def user_name
                return @user_name
            end
            ## 
            ## Sets the userName property value. The user name.
            ## @param value Value to set for the user_name property.
            ## @return a void
            ## 
            def user_name=(value)
                @user_name = value
            end
            ## 
            ## Gets the userPrincipalName property value. The user principal name.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The user principal name.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
