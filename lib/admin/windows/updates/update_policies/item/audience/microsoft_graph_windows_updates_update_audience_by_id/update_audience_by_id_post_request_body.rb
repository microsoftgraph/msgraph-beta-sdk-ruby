require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../admin'
require_relative '../../../../../windows'
require_relative '../../../../updates'
require_relative '../../../update_policies'
require_relative '../../item'
require_relative '../audience'
require_relative './microsoft_graph_windows_updates_update_audience_by_id'

module MicrosoftGraphBeta
    module Admin
        module Windows
            module Updates
                module UpdatePolicies
                    module Item
                        module Audience
                            module MicrosoftGraphWindowsUpdatesUpdateAudienceById
                                class UpdateAudienceByIdPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # The addExclusions property
                                    @add_exclusions
                                    ## 
                                    # The addMembers property
                                    @add_members
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The memberEntityType property
                                    @member_entity_type
                                    ## 
                                    # The removeExclusions property
                                    @remove_exclusions
                                    ## 
                                    # The removeMembers property
                                    @remove_members
                                    ## 
                                    ## Gets the addExclusions property value. The addExclusions property
                                    ## @return a string
                                    ## 
                                    def add_exclusions
                                        return @add_exclusions
                                    end
                                    ## 
                                    ## Sets the addExclusions property value. The addExclusions property
                                    ## @param value Value to set for the addExclusions property.
                                    ## @return a void
                                    ## 
                                    def add_exclusions=(value)
                                        @add_exclusions = value
                                    end
                                    ## 
                                    ## Gets the addMembers property value. The addMembers property
                                    ## @return a string
                                    ## 
                                    def add_members
                                        return @add_members
                                    end
                                    ## 
                                    ## Sets the addMembers property value. The addMembers property
                                    ## @param value Value to set for the addMembers property.
                                    ## @return a void
                                    ## 
                                    def add_members=(value)
                                        @add_members = value
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
                                    ## Instantiates a new updateAudienceByIdPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a update_audience_by_id_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return UpdateAudienceByIdPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "addExclusions" => lambda {|n| @add_exclusions = n.get_collection_of_primitive_values(String) },
                                            "addMembers" => lambda {|n| @add_members = n.get_collection_of_primitive_values(String) },
                                            "memberEntityType" => lambda {|n| @member_entity_type = n.get_string_value() },
                                            "removeExclusions" => lambda {|n| @remove_exclusions = n.get_collection_of_primitive_values(String) },
                                            "removeMembers" => lambda {|n| @remove_members = n.get_collection_of_primitive_values(String) },
                                        }
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
                                    ## Gets the removeExclusions property value. The removeExclusions property
                                    ## @return a string
                                    ## 
                                    def remove_exclusions
                                        return @remove_exclusions
                                    end
                                    ## 
                                    ## Sets the removeExclusions property value. The removeExclusions property
                                    ## @param value Value to set for the removeExclusions property.
                                    ## @return a void
                                    ## 
                                    def remove_exclusions=(value)
                                        @remove_exclusions = value
                                    end
                                    ## 
                                    ## Gets the removeMembers property value. The removeMembers property
                                    ## @return a string
                                    ## 
                                    def remove_members
                                        return @remove_members
                                    end
                                    ## 
                                    ## Sets the removeMembers property value. The removeMembers property
                                    ## @param value Value to set for the removeMembers property.
                                    ## @return a void
                                    ## 
                                    def remove_members=(value)
                                        @remove_members = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_collection_of_primitive_values("addExclusions", @add_exclusions)
                                        writer.write_collection_of_primitive_values("addMembers", @add_members)
                                        writer.write_string_value("memberEntityType", @member_entity_type)
                                        writer.write_collection_of_primitive_values("removeExclusions", @remove_exclusions)
                                        writer.write_collection_of_primitive_values("removeMembers", @remove_members)
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
