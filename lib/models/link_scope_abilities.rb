require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class LinkScopeAbilities
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The blockDownload link abilities.
            @block_download_link_abilities
            ## 
            # The editLinkAbilities property
            @edit_link_abilities
            ## 
            # The manageList link abilities.
            @manage_list_link_abilities
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The readLinkAbilities property
            @read_link_abilities
            ## 
            # The review link abilities.
            @review_link_abilities
            ## 
            # The submitOnly link abilities.
            @submit_only_link_abilities
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
            ## Gets the blockDownloadLinkAbilities property value. The blockDownload link abilities.
            ## @return a link_role_abilities
            ## 
            def block_download_link_abilities
                return @block_download_link_abilities
            end
            ## 
            ## Sets the blockDownloadLinkAbilities property value. The blockDownload link abilities.
            ## @param value Value to set for the blockDownloadLinkAbilities property.
            ## @return a void
            ## 
            def block_download_link_abilities=(value)
                @block_download_link_abilities = value
            end
            ## 
            ## Instantiates a new LinkScopeAbilities and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a link_scope_abilities
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return LinkScopeAbilities.new
            end
            ## 
            ## Gets the editLinkAbilities property value. The editLinkAbilities property
            ## @return a link_role_abilities
            ## 
            def edit_link_abilities
                return @edit_link_abilities
            end
            ## 
            ## Sets the editLinkAbilities property value. The editLinkAbilities property
            ## @param value Value to set for the editLinkAbilities property.
            ## @return a void
            ## 
            def edit_link_abilities=(value)
                @edit_link_abilities = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "blockDownloadLinkAbilities" => lambda {|n| @block_download_link_abilities = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LinkRoleAbilities.create_from_discriminator_value(pn) }) },
                    "editLinkAbilities" => lambda {|n| @edit_link_abilities = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LinkRoleAbilities.create_from_discriminator_value(pn) }) },
                    "manageListLinkAbilities" => lambda {|n| @manage_list_link_abilities = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LinkRoleAbilities.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "readLinkAbilities" => lambda {|n| @read_link_abilities = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LinkRoleAbilities.create_from_discriminator_value(pn) }) },
                    "reviewLinkAbilities" => lambda {|n| @review_link_abilities = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LinkRoleAbilities.create_from_discriminator_value(pn) }) },
                    "submitOnlyLinkAbilities" => lambda {|n| @submit_only_link_abilities = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LinkRoleAbilities.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the manageListLinkAbilities property value. The manageList link abilities.
            ## @return a link_role_abilities
            ## 
            def manage_list_link_abilities
                return @manage_list_link_abilities
            end
            ## 
            ## Sets the manageListLinkAbilities property value. The manageList link abilities.
            ## @param value Value to set for the manageListLinkAbilities property.
            ## @return a void
            ## 
            def manage_list_link_abilities=(value)
                @manage_list_link_abilities = value
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
            ## Gets the readLinkAbilities property value. The readLinkAbilities property
            ## @return a link_role_abilities
            ## 
            def read_link_abilities
                return @read_link_abilities
            end
            ## 
            ## Sets the readLinkAbilities property value. The readLinkAbilities property
            ## @param value Value to set for the readLinkAbilities property.
            ## @return a void
            ## 
            def read_link_abilities=(value)
                @read_link_abilities = value
            end
            ## 
            ## Gets the reviewLinkAbilities property value. The review link abilities.
            ## @return a link_role_abilities
            ## 
            def review_link_abilities
                return @review_link_abilities
            end
            ## 
            ## Sets the reviewLinkAbilities property value. The review link abilities.
            ## @param value Value to set for the reviewLinkAbilities property.
            ## @return a void
            ## 
            def review_link_abilities=(value)
                @review_link_abilities = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("blockDownloadLinkAbilities", @block_download_link_abilities)
                writer.write_object_value("editLinkAbilities", @edit_link_abilities)
                writer.write_object_value("manageListLinkAbilities", @manage_list_link_abilities)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("readLinkAbilities", @read_link_abilities)
                writer.write_object_value("reviewLinkAbilities", @review_link_abilities)
                writer.write_object_value("submitOnlyLinkAbilities", @submit_only_link_abilities)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the submitOnlyLinkAbilities property value. The submitOnly link abilities.
            ## @return a link_role_abilities
            ## 
            def submit_only_link_abilities
                return @submit_only_link_abilities
            end
            ## 
            ## Sets the submitOnlyLinkAbilities property value. The submitOnly link abilities.
            ## @param value Value to set for the submitOnlyLinkAbilities property.
            ## @return a void
            ## 
            def submit_only_link_abilities=(value)
                @submit_only_link_abilities = value
            end
        end
    end
end
