require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../device_management'
require_relative '../../group_policy_migration_reports'
require_relative '../item'
require_relative './update_scope_tags'

module MicrosoftGraphBeta
    module DeviceManagement
        module GroupPolicyMigrationReports
            module Item
                module UpdateScopeTags
                    class UpdateScopeTagsPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The roleScopeTagIds property
                        @role_scope_tag_ids
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
                        ## Instantiates a new updateScopeTagsPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a update_scope_tags_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return UpdateScopeTagsPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                            }
                        end
                        ## 
                        ## Gets the roleScopeTagIds property value. The roleScopeTagIds property
                        ## @return a string
                        ## 
                        def role_scope_tag_ids
                            return @role_scope_tag_ids
                        end
                        ## 
                        ## Sets the roleScopeTagIds property value. The roleScopeTagIds property
                        ## @param value Value to set for the roleScopeTagIds property.
                        ## @return a void
                        ## 
                        def role_scope_tag_ids=(value)
                            @role_scope_tag_ids = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
