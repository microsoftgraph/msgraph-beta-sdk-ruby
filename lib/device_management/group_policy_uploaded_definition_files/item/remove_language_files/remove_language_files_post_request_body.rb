require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/group_policy_uploaded_language_file'
require_relative '../../../device_management'
require_relative '../../group_policy_uploaded_definition_files'
require_relative '../item'
require_relative './remove_language_files'

module MicrosoftGraphBeta
    module DeviceManagement
        module GroupPolicyUploadedDefinitionFiles
            module Item
                module RemoveLanguageFiles
                    class RemoveLanguageFilesPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The groupPolicyUploadedLanguageFiles property
                        @group_policy_uploaded_language_files
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
                        ## Instantiates a new removeLanguageFilesPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a remove_language_files_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return RemoveLanguageFilesPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "groupPolicyUploadedLanguageFiles" => lambda {|n| @group_policy_uploaded_language_files = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyUploadedLanguageFile.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Gets the groupPolicyUploadedLanguageFiles property value. The groupPolicyUploadedLanguageFiles property
                        ## @return a group_policy_uploaded_language_file
                        ## 
                        def group_policy_uploaded_language_files
                            return @group_policy_uploaded_language_files
                        end
                        ## 
                        ## Sets the groupPolicyUploadedLanguageFiles property value. The groupPolicyUploadedLanguageFiles property
                        ## @param value Value to set for the groupPolicyUploadedLanguageFiles property.
                        ## @return a void
                        ## 
                        def group_policy_uploaded_language_files=(value)
                            @group_policy_uploaded_language_files = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("groupPolicyUploadedLanguageFiles", @group_policy_uploaded_language_files)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
