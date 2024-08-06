require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../admin'
require_relative '../../../../../../../windows'
require_relative '../../../../../../updates'
require_relative '../../../../../update_policies'
require_relative '../../../../item'
require_relative '../../../audience'
require_relative '../../members'
require_relative '../item'
require_relative './microsoft_graph_windows_updates_remove_members_by_id'

module MicrosoftGraphBeta
    module Admin
        module Windows
            module Updates
                module UpdatePolicies
                    module Item
                        module Audience
                            module Members
                                module Item
                                    module MicrosoftGraphWindowsUpdatesRemoveMembersById
                                        class RemoveMembersByIdPostRequestBody
                                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                            ## 
                                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                            @additional_data
                                            ## 
                                            # The ids property
                                            @ids
                                            ## 
                                            # The memberEntityType property
                                            @member_entity_type
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
                                            ## Instantiates a new RemoveMembersByIdPostRequestBody and sets the default values.
                                            ## @return a void
                                            ## 
                                            def initialize()
                                                @additional_data = Hash.new
                                            end
                                            ## 
                                            ## Creates a new instance of the appropriate class based on discriminator value
                                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                                            ## @return a remove_members_by_id_post_request_body
                                            ## 
                                            def self.create_from_discriminator_value(parse_node)
                                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                                return RemoveMembersByIdPostRequestBody.new
                                            end
                                            ## 
                                            ## The deserialization information for the current model
                                            ## @return a i_dictionary
                                            ## 
                                            def get_field_deserializers()
                                                return {
                                                    "ids" => lambda {|n| @ids = n.get_collection_of_primitive_values(String) },
                                                    "memberEntityType" => lambda {|n| @member_entity_type = n.get_string_value() },
                                                }
                                            end
                                            ## 
                                            ## Gets the ids property value. The ids property
                                            ## @return a string
                                            ## 
                                            def ids
                                                return @ids
                                            end
                                            ## 
                                            ## Sets the ids property value. The ids property
                                            ## @param value Value to set for the ids property.
                                            ## @return a void
                                            ## 
                                            def ids=(value)
                                                @ids = value
                                            end
                                            ## 
                                            ## Gets the memberEntityType property value. The memberEntityType property
                                            ## @return a string
                                            ## 
                                            def member_entity_type
                                                return @member_entity_type
                                            end
                                            ## 
                                            ## Sets the memberEntityType property value. The memberEntityType property
                                            ## @param value Value to set for the memberEntityType property.
                                            ## @return a void
                                            ## 
                                            def member_entity_type=(value)
                                                @member_entity_type = value
                                            end
                                            ## 
                                            ## Serializes information the current object
                                            ## @param writer Serialization writer to use to serialize this model
                                            ## @return a void
                                            ## 
                                            def serialize(writer)
                                                raise StandardError, 'writer cannot be null' if writer.nil?
                                                writer.write_collection_of_primitive_values("ids", @ids)
                                                writer.write_string_value("memberEntityType", @member_entity_type)
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
