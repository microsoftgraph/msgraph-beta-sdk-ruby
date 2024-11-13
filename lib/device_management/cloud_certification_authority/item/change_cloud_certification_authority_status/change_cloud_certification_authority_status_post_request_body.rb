require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/cloud_certification_authority_status'
require_relative '../../../device_management'
require_relative '../../cloud_certification_authority'
require_relative '../item'
require_relative './change_cloud_certification_authority_status'

module MicrosoftGraphBeta
    module DeviceManagement
        module CloudCertificationAuthority
            module Item
                module ChangeCloudCertificationAuthorityStatus
                    class ChangeCloudCertificationAuthorityStatusPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # Enum type of possible certification authority statuses. These statuses indicate whether a certification authority is currently able to issue certificates or temporarily paused or permanently revoked.
                        @certification_authority_status
                        ## 
                        # The certificationAuthorityVersion property
                        @certification_authority_version
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
                        ## Gets the certificationAuthorityStatus property value. Enum type of possible certification authority statuses. These statuses indicate whether a certification authority is currently able to issue certificates or temporarily paused or permanently revoked.
                        ## @return a cloud_certification_authority_status
                        ## 
                        def certification_authority_status
                            return @certification_authority_status
                        end
                        ## 
                        ## Sets the certificationAuthorityStatus property value. Enum type of possible certification authority statuses. These statuses indicate whether a certification authority is currently able to issue certificates or temporarily paused or permanently revoked.
                        ## @param value Value to set for the certificationAuthorityStatus property.
                        ## @return a void
                        ## 
                        def certification_authority_status=(value)
                            @certification_authority_status = value
                        end
                        ## 
                        ## Gets the certificationAuthorityVersion property value. The certificationAuthorityVersion property
                        ## @return a integer
                        ## 
                        def certification_authority_version
                            return @certification_authority_version
                        end
                        ## 
                        ## Sets the certificationAuthorityVersion property value. The certificationAuthorityVersion property
                        ## @param value Value to set for the certificationAuthorityVersion property.
                        ## @return a void
                        ## 
                        def certification_authority_version=(value)
                            @certification_authority_version = value
                        end
                        ## 
                        ## Instantiates a new ChangeCloudCertificationAuthorityStatusPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a change_cloud_certification_authority_status_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return ChangeCloudCertificationAuthorityStatusPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "certificationAuthorityStatus" => lambda {|n| @certification_authority_status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudCertificationAuthorityStatus) },
                                "certificationAuthorityVersion" => lambda {|n| @certification_authority_version = n.get_number_value() },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_enum_value("certificationAuthorityStatus", @certification_authority_status)
                            writer.write_number_value("certificationAuthorityVersion", @certification_authority_version)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
