require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/password_profile'
require_relative '../../users'
require_relative '../item'
require_relative './convert_external_to_internal_member_user'

module MicrosoftGraphBeta
    module Users
        module Item
            module ConvertExternalToInternalMemberUser
                class ConvertExternalToInternalMemberUserPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The mail property
                    @mail
                    ## 
                    # The passwordProfile property
                    @password_profile
                    ## 
                    # The userPrincipalName property
                    @user_principal_name
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
                    ## Instantiates a new ConvertExternalToInternalMemberUserPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a convert_external_to_internal_member_user_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ConvertExternalToInternalMemberUserPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "mail" => lambda {|n| @mail = n.get_string_value() },
                            "passwordProfile" => lambda {|n| @password_profile = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PasswordProfile.create_from_discriminator_value(pn) }) },
                            "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the mail property value. The mail property
                    ## @return a string
                    ## 
                    def mail
                        return @mail
                    end
                    ## 
                    ## Sets the mail property value. The mail property
                    ## @param value Value to set for the mail property.
                    ## @return a void
                    ## 
                    def mail=(value)
                        @mail = value
                    end
                    ## 
                    ## Gets the passwordProfile property value. The passwordProfile property
                    ## @return a password_profile
                    ## 
                    def password_profile
                        return @password_profile
                    end
                    ## 
                    ## Sets the passwordProfile property value. The passwordProfile property
                    ## @param value Value to set for the passwordProfile property.
                    ## @return a void
                    ## 
                    def password_profile=(value)
                        @password_profile = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("mail", @mail)
                        writer.write_object_value("passwordProfile", @password_profile)
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
        end
    end
end
