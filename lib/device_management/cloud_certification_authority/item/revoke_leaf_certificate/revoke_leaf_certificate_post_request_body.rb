require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../device_management'
require_relative '../../cloud_certification_authority'
require_relative '../item'
require_relative './revoke_leaf_certificate'

module MicrosoftGraphBeta
    module DeviceManagement
        module CloudCertificationAuthority
            module Item
                module RevokeLeafCertificate
                    class RevokeLeafCertificatePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The leafCertificateId property
                        @leaf_certificate_id
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
                        ## Instantiates a new RevokeLeafCertificatePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a revoke_leaf_certificate_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return RevokeLeafCertificatePostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "leafCertificateId" => lambda {|n| @leaf_certificate_id = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the leafCertificateId property value. The leafCertificateId property
                        ## @return a string
                        ## 
                        def leaf_certificate_id
                            return @leaf_certificate_id
                        end
                        ## 
                        ## Sets the leafCertificateId property value. The leafCertificateId property
                        ## @param value Value to set for the leafCertificateId property.
                        ## @return a void
                        ## 
                        def leaf_certificate_id=(value)
                            @leaf_certificate_id = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("leafCertificateId", @leaf_certificate_id)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
