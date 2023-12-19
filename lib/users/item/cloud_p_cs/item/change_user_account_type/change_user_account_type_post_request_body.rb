require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../users'
require_relative '../../../item'
require_relative '../../cloud_p_cs'
require_relative '../item'
require_relative './change_user_account_type'

module MicrosoftGraphBeta
    module Users
        module Item
            module CloudPCs
                module Item
                    module ChangeUserAccountType
                        class ChangeUserAccountTypePostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The userAccountType property
                            @user_account_type
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
                            ## Instantiates a new changeUserAccountTypePostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a change_user_account_type_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return ChangeUserAccountTypePostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "userAccountType" => lambda {|n| @user_account_type = n.get_enum_value(MicrosoftGraphBeta::Users::Item::CloudPCs::Item::ChangeUserAccountType::ChangeUserAccountTypePostRequestBodyUserAccountType) },
                                }
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_enum_value("userAccountType", @user_account_type)
                                writer.write_additional_data(@additional_data)
                            end
                            ## 
                            ## Gets the userAccountType property value. The userAccountType property
                            ## @return a change_user_account_type_post_request_body_user_account_type
                            ## 
                            def user_account_type
                                return @user_account_type
                            end
                            ## 
                            ## Sets the userAccountType property value. The userAccountType property
                            ## @param value Value to set for the userAccountType property.
                            ## @return a void
                            ## 
                            def user_account_type=(value)
                                @user_account_type = value
                            end
                        end
                    end
                end
            end
        end
    end
end
