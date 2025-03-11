require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DirectSharingAbilities
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether the current user can add existing guest recipients to this item using direct sharing.
            @add_existing_external_users
            ## 
            # Indicates whether the current user can add internal recipients to this item using direct sharing.
            @add_internal_users
            ## 
            # Indicates whether the current user can add new guest recipients to this item using direct sharing.
            @add_new_external_users
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates whether the user querying this endpoint can request access for the user or on behalf of other users, after which, site admins, can approve or deny the creation of a potential sharing link.
            @request_grant_access
            ## 
            ## Gets the addExistingExternalUsers property value. Indicates whether the current user can add existing guest recipients to this item using direct sharing.
            ## @return a sharing_operation_status
            ## 
            def add_existing_external_users
                return @add_existing_external_users
            end
            ## 
            ## Sets the addExistingExternalUsers property value. Indicates whether the current user can add existing guest recipients to this item using direct sharing.
            ## @param value Value to set for the addExistingExternalUsers property.
            ## @return a void
            ## 
            def add_existing_external_users=(value)
                @add_existing_external_users = value
            end
            ## 
            ## Gets the addInternalUsers property value. Indicates whether the current user can add internal recipients to this item using direct sharing.
            ## @return a sharing_operation_status
            ## 
            def add_internal_users
                return @add_internal_users
            end
            ## 
            ## Sets the addInternalUsers property value. Indicates whether the current user can add internal recipients to this item using direct sharing.
            ## @param value Value to set for the addInternalUsers property.
            ## @return a void
            ## 
            def add_internal_users=(value)
                @add_internal_users = value
            end
            ## 
            ## Gets the addNewExternalUsers property value. Indicates whether the current user can add new guest recipients to this item using direct sharing.
            ## @return a sharing_operation_status
            ## 
            def add_new_external_users
                return @add_new_external_users
            end
            ## 
            ## Sets the addNewExternalUsers property value. Indicates whether the current user can add new guest recipients to this item using direct sharing.
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
            ## Instantiates a new DirectSharingAbilities and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a direct_sharing_abilities
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DirectSharingAbilities.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "addExistingExternalUsers" => lambda {|n| @add_existing_external_users = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingOperationStatus.create_from_discriminator_value(pn) }) },
                    "addInternalUsers" => lambda {|n| @add_internal_users = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingOperationStatus.create_from_discriminator_value(pn) }) },
                    "addNewExternalUsers" => lambda {|n| @add_new_external_users = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingOperationStatus.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "requestGrantAccess" => lambda {|n| @request_grant_access = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingOperationStatus.create_from_discriminator_value(pn) }) },
                }
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
            ## Gets the requestGrantAccess property value. Indicates whether the user querying this endpoint can request access for the user or on behalf of other users, after which, site admins, can approve or deny the creation of a potential sharing link.
            ## @return a sharing_operation_status
            ## 
            def request_grant_access
                return @request_grant_access
            end
            ## 
            ## Sets the requestGrantAccess property value. Indicates whether the user querying this endpoint can request access for the user or on behalf of other users, after which, site admins, can approve or deny the creation of a potential sharing link.
            ## @param value Value to set for the requestGrantAccess property.
            ## @return a void
            ## 
            def request_grant_access=(value)
                @request_grant_access = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("addExistingExternalUsers", @add_existing_external_users)
                writer.write_object_value("addInternalUsers", @add_internal_users)
                writer.write_object_value("addNewExternalUsers", @add_new_external_users)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("requestGrantAccess", @request_grant_access)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
