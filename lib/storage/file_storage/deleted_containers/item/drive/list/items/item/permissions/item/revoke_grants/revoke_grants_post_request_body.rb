require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../../../models/drive_recipient'
require_relative '../../../../../../../../../../storage'
require_relative '../../../../../../../../../file_storage'
require_relative '../../../../../../../../deleted_containers'
require_relative '../../../../../../../item'
require_relative '../../../../../../drive'
require_relative '../../../../../list'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../permissions'
require_relative '../item'
require_relative './revoke_grants'

module MicrosoftGraphBeta
    module Storage
        module FileStorage
            module DeletedContainers
                module Item
                    module Drive
                        module List
                            module Items
                                module Item
                                    module Permissions
                                        module Item
                                            module RevokeGrants
                                                class RevokeGrantsPostRequestBody
                                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                                    ## 
                                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                                    @additional_data
                                                    ## 
                                                    # The grantees property
                                                    @grantees
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
                                                    ## Instantiates a new RevokeGrantsPostRequestBody and sets the default values.
                                                    ## @return a void
                                                    ## 
                                                    def initialize()
                                                        @additional_data = Hash.new
                                                    end
                                                    ## 
                                                    ## Creates a new instance of the appropriate class based on discriminator value
                                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                                    ## @return a revoke_grants_post_request_body
                                                    ## 
                                                    def self.create_from_discriminator_value(parse_node)
                                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                        return RevokeGrantsPostRequestBody.new
                                                    end
                                                    ## 
                                                    ## The deserialization information for the current model
                                                    ## @return a i_dictionary
                                                    ## 
                                                    def get_field_deserializers()
                                                        return {
                                                            "grantees" => lambda {|n| @grantees = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DriveRecipient.create_from_discriminator_value(pn) }) },
                                                        }
                                                    end
                                                    ## 
                                                    ## Gets the grantees property value. The grantees property
                                                    ## @return a drive_recipient
                                                    ## 
                                                    def grantees
                                                        return @grantees
                                                    end
                                                    ## 
                                                    ## Sets the grantees property value. The grantees property
                                                    ## @param value Value to set for the grantees property.
                                                    ## @return a void
                                                    ## 
                                                    def grantees=(value)
                                                        @grantees = value
                                                    end
                                                    ## 
                                                    ## Serializes information the current object
                                                    ## @param writer Serialization writer to use to serialize this model
                                                    ## @return a void
                                                    ## 
                                                    def serialize(writer)
                                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                                        writer.write_collection_of_object_values("grantees", @grantees)
                                                        writer.write_additional_data(@additional_data)
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
