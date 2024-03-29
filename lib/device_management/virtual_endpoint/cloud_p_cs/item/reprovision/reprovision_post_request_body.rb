require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/cloud_pc_operating_system'
require_relative '../../../../../models/cloud_pc_user_account_type'
require_relative '../../../../device_management'
require_relative '../../../virtual_endpoint'
require_relative '../../cloud_p_cs'
require_relative '../item'
require_relative './reprovision'

module MicrosoftGraphBeta
    module DeviceManagement
        module VirtualEndpoint
            module CloudPCs
                module Item
                    module Reprovision
                        class ReprovisionPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            # The osVersion property
                            @os_version
                            ## 
                            # The userAccountType property
                            @user_account_type
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
                            ## Instantiates a new reprovisionPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a reprovision_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return ReprovisionPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "osVersion" => lambda {|n| @os_version = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcOperatingSystem) },
                                    "userAccountType" => lambda {|n| @user_account_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcUserAccountType) },
                                }
                            end
                            ## 
                            ## Gets the osVersion property value. The osVersion property
                            ## @return a cloud_pc_operating_system
                            ## 
                            def os_version
                                return @os_version
                            end
                            ## 
                            ## Sets the osVersion property value. The osVersion property
                            ## @param value Value to set for the osVersion property.
                            ## @return a void
                            ## 
                            def os_version=(value)
                                @os_version = value
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_enum_value("osVersion", @os_version)
                                writer.write_enum_value("userAccountType", @user_account_type)
                                writer.write_additional_data(@additional_data)
                            end
                            ## 
                            ## Gets the userAccountType property value. The userAccountType property
                            ## @return a cloud_pc_user_account_type
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
