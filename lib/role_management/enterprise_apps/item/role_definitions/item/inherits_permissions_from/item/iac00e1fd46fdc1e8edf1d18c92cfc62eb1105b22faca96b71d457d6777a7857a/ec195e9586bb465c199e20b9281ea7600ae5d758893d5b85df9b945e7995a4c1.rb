require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../models/base_collection_pagination_count_response'
require_relative '../../../../../../../../models/directory_object'
require_relative '../../../../../../../role_management'
require_relative '../../../../../../enterprise_apps'
require_relative '../../../../../item'
require_relative '../../../../role_definitions'
require_relative '../../../item'
require_relative '../../inherits_permissions_from'
require_relative '../item'
require_relative './iac00e1fd46fdc1e8edf1d18c92cfc62eb1105b22faca96b71d457d6777a7857a'

module MicrosoftGraphBeta
    module RoleManagement
        module EnterpriseApps
            module Item
                module RoleDefinitions
                    module Item
                        module InheritsPermissionsFrom
                            module Item
                                module Iac00e1fd46fdc1e8edf1d18c92cfc62eb1105b22faca96b71d457d6777a7857a
                                    class AssignedPrincipalsWithTransitivedirectoryScopeTypeDirectoryScopeTypeDirectoryScopeIdDirectoryScopeIdResponse < MicrosoftGraphBeta::Models::BaseCollectionPaginationCountResponse
                                        include MicrosoftKiotaAbstractions::Parsable
                                        ## 
                                        # The value property
                                        @value
                                        ## 
                                        ## Instantiates a new assignedPrincipalsWithTransitivedirectoryScopeTypeDirectoryScopeTypeDirectoryScopeIdDirectoryScopeIdResponse and sets the default values.
                                        ## @return a void
                                        ## 
                                        def initialize()
                                            super
                                        end
                                        ## 
                                        ## Creates a new instance of the appropriate class based on discriminator value
                                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                                        ## @return a assigned_principals_with_transitivedirectory_scope_type_directory_scope_type_directory_scope_id_directory_scope_id_response
                                        ## 
                                        def self.create_from_discriminator_value(parse_node)
                                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                            return AssignedPrincipalsWithTransitivedirectoryScopeTypeDirectoryScopeTypeDirectoryScopeIdDirectoryScopeIdResponse.new
                                        end
                                        ## 
                                        ## The deserialization information for the current model
                                        ## @return a i_dictionary
                                        ## 
                                        def get_field_deserializers()
                                            return super.merge({
                                                "value" => lambda {|n| @value = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                                            })
                                        end
                                        ## 
                                        ## Serializes information the current object
                                        ## @param writer Serialization writer to use to serialize this model
                                        ## @return a void
                                        ## 
                                        def serialize(writer)
                                            raise StandardError, 'writer cannot be null' if writer.nil?
                                            super
                                            writer.write_collection_of_object_values("value", @value)
                                        end
                                        ## 
                                        ## Gets the value property value. The value property
                                        ## @return a directory_object
                                        ## 
                                        def value
                                            return @value
                                        end
                                        ## 
                                        ## Sets the value property value. The value property
                                        ## @param value Value to set for the value property.
                                        ## @return a void
                                        ## 
                                        def value=(value)
                                            @value = value
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
