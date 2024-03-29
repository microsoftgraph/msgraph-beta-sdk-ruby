require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../device_management'
require_relative '../../../virtual_endpoint'
require_relative '../../on_premises_connections'
require_relative '../item'
require_relative './update_ad_domain_password'

module MicrosoftGraphBeta
    module DeviceManagement
        module VirtualEndpoint
            module OnPremisesConnections
                module Item
                    module UpdateAdDomainPassword
                        class UpdateAdDomainPasswordPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # The adDomainPassword property
                            @ad_domain_password
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            ## Gets the adDomainPassword property value. The adDomainPassword property
                            ## @return a string
                            ## 
                            def ad_domain_password
                                return @ad_domain_password
                            end
                            ## 
                            ## Sets the adDomainPassword property value. The adDomainPassword property
                            ## @param value Value to set for the adDomainPassword property.
                            ## @return a void
                            ## 
                            def ad_domain_password=(value)
                                @ad_domain_password = value
                            end
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
                            ## Instantiates a new updateAdDomainPasswordPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a update_ad_domain_password_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return UpdateAdDomainPasswordPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "adDomainPassword" => lambda {|n| @ad_domain_password = n.get_string_value() },
                                }
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_string_value("adDomainPassword", @ad_domain_password)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end
