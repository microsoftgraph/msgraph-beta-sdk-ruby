require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class LinkRoleAbilities
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates if the current user can add existing external user recipients to this sharing link.
            @add_existing_external_users
            ## 
            # Indicates if the current user can add new external user recipients to this sharing link.
            @add_new_external_users
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates the status of the potential sharing link variants. If selected, it generates a separate sharing link from the sharing link that would otherwise be generated without the variant, yet with an identical role and scope.
            @apply_variants
            ## 
            # Indicates if links of this role can be created.
            @create_link
            ## 
            # Indicates if links of this role can be deleted.
            @delete_link
            ## 
            # Indicates if this link can include external users.
            @link_allows_external_users
            ## 
            # Indicates if links must expire, meaning the link is no longer usable after a specified time. If link expiration is enabled, a default link expiration time is provided.
            @link_expiration
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates if links of this role can be retrieved.
            @retrieve_link
            ## 
            # Indicates if links of this role can be updated.
            @update_link
            ## 
            ## Gets the addExistingExternalUsers property value. Indicates if the current user can add existing external user recipients to this sharing link.
            ## @return a sharing_operation_status
            ## 
            def add_existing_external_users
                return @add_existing_external_users
            end
            ## 
            ## Sets the addExistingExternalUsers property value. Indicates if the current user can add existing external user recipients to this sharing link.
            ## @param value Value to set for the addExistingExternalUsers property.
            ## @return a void
            ## 
            def add_existing_external_users=(value)
                @add_existing_external_users = value
            end
            ## 
            ## Gets the addNewExternalUsers property value. Indicates if the current user can add new external user recipients to this sharing link.
            ## @return a sharing_operation_status
            ## 
            def add_new_external_users
                return @add_new_external_users
            end
            ## 
            ## Sets the addNewExternalUsers property value. Indicates if the current user can add new external user recipients to this sharing link.
            ## @param value Value to set for the addNewExternalUsers property.
            ## @return a void
            ## 
            def add_new_external_users=(value)
                @add_new_external_users = value
            end
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
            ## Gets the applyVariants property value. Indicates the status of the potential sharing link variants. If selected, it generates a separate sharing link from the sharing link that would otherwise be generated without the variant, yet with an identical role and scope.
            ## @return a sharing_link_variants
            ## 
            def apply_variants
                return @apply_variants
            end
            ## 
            ## Sets the applyVariants property value. Indicates the status of the potential sharing link variants. If selected, it generates a separate sharing link from the sharing link that would otherwise be generated without the variant, yet with an identical role and scope.
            ## @param value Value to set for the applyVariants property.
            ## @return a void
            ## 
            def apply_variants=(value)
                @apply_variants = value
            end
            ## 
            ## Instantiates a new LinkRoleAbilities and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the createLink property value. Indicates if links of this role can be created.
            ## @return a sharing_operation_status
            ## 
            def create_link
                return @create_link
            end
            ## 
            ## Sets the createLink property value. Indicates if links of this role can be created.
            ## @param value Value to set for the createLink property.
            ## @return a void
            ## 
            def create_link=(value)
                @create_link = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a link_role_abilities
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LinkRoleAbilities.new
            end
            ## 
            ## Gets the deleteLink property value. Indicates if links of this role can be deleted.
            ## @return a sharing_operation_status
            ## 
            def delete_link
                return @delete_link
            end
            ## 
            ## Sets the deleteLink property value. Indicates if links of this role can be deleted.
            ## @param value Value to set for the deleteLink property.
            ## @return a void
            ## 
            def delete_link=(value)
                @delete_link = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "addExistingExternalUsers" => lambda {|n| @add_existing_external_users = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingOperationStatus.create_from_discriminator_value(pn) }) },
                    "addNewExternalUsers" => lambda {|n| @add_new_external_users = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingOperationStatus.create_from_discriminator_value(pn) }) },
                    "applyVariants" => lambda {|n| @apply_variants = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingLinkVariants.create_from_discriminator_value(pn) }) },
                    "createLink" => lambda {|n| @create_link = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingOperationStatus.create_from_discriminator_value(pn) }) },
                    "deleteLink" => lambda {|n| @delete_link = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingOperationStatus.create_from_discriminator_value(pn) }) },
                    "linkAllowsExternalUsers" => lambda {|n| @link_allows_external_users = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingOperationStatus.create_from_discriminator_value(pn) }) },
                    "linkExpiration" => lambda {|n| @link_expiration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingLinkExpirationStatus.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "retrieveLink" => lambda {|n| @retrieve_link = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingOperationStatus.create_from_discriminator_value(pn) }) },
                    "updateLink" => lambda {|n| @update_link = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingOperationStatus.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the linkAllowsExternalUsers property value. Indicates if this link can include external users.
            ## @return a sharing_operation_status
            ## 
            def link_allows_external_users
                return @link_allows_external_users
            end
            ## 
            ## Sets the linkAllowsExternalUsers property value. Indicates if this link can include external users.
            ## @param value Value to set for the linkAllowsExternalUsers property.
            ## @return a void
            ## 
            def link_allows_external_users=(value)
                @link_allows_external_users = value
            end
            ## 
            ## Gets the linkExpiration property value. Indicates if links must expire, meaning the link is no longer usable after a specified time. If link expiration is enabled, a default link expiration time is provided.
            ## @return a sharing_link_expiration_status
            ## 
            def link_expiration
                return @link_expiration
            end
            ## 
            ## Sets the linkExpiration property value. Indicates if links must expire, meaning the link is no longer usable after a specified time. If link expiration is enabled, a default link expiration time is provided.
            ## @param value Value to set for the linkExpiration property.
            ## @return a void
            ## 
            def link_expiration=(value)
                @link_expiration = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the retrieveLink property value. Indicates if links of this role can be retrieved.
            ## @return a sharing_operation_status
            ## 
            def retrieve_link
                return @retrieve_link
            end
            ## 
            ## Sets the retrieveLink property value. Indicates if links of this role can be retrieved.
            ## @param value Value to set for the retrieveLink property.
            ## @return a void
            ## 
            def retrieve_link=(value)
                @retrieve_link = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("addExistingExternalUsers", @add_existing_external_users)
                writer.write_object_value("addNewExternalUsers", @add_new_external_users)
                writer.write_object_value("applyVariants", @apply_variants)
                writer.write_object_value("createLink", @create_link)
                writer.write_object_value("deleteLink", @delete_link)
                writer.write_object_value("linkAllowsExternalUsers", @link_allows_external_users)
                writer.write_object_value("linkExpiration", @link_expiration)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("retrieveLink", @retrieve_link)
                writer.write_object_value("updateLink", @update_link)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the updateLink property value. Indicates if links of this role can be updated.
            ## @return a sharing_operation_status
            ## 
            def update_link
                return @update_link
            end
            ## 
            ## Sets the updateLink property value. Indicates if links of this role can be updated.
            ## @param value Value to set for the updateLink property.
            ## @return a void
            ## 
            def update_link=(value)
                @update_link = value
            end
        end
    end
end
