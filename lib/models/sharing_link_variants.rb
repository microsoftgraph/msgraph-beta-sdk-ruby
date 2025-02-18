require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SharingLinkVariants
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates the most permissive role with which an address bar link can be created. The possible values are: none, view, edit, manageList, review, restrictedView, submitOnly, unknownFutureValue.
            @address_bar_link_permission
            ## 
            # Indicates whether a link can be embedded.
            @allow_embed
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates whether a link can be password protected, meaning that link users would need to enter a password to access the item for which the sharing link is produced. Creating a passwordProtected link for the first time requires providing a password.
            @password_protected
            ## 
            # Indicates whether a link requires identity authentication for recipients. Users can be verified through either an email address or identity.
            @requires_authentication
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
            ## Gets the addressBarLinkPermission property value. Indicates the most permissive role with which an address bar link can be created. The possible values are: none, view, edit, manageList, review, restrictedView, submitOnly, unknownFutureValue.
            ## @return a sharing_role
            ## 
            def address_bar_link_permission
                return @address_bar_link_permission
            end
            ## 
            ## Sets the addressBarLinkPermission property value. Indicates the most permissive role with which an address bar link can be created. The possible values are: none, view, edit, manageList, review, restrictedView, submitOnly, unknownFutureValue.
            ## @param value Value to set for the addressBarLinkPermission property.
            ## @return a void
            ## 
            def address_bar_link_permission=(value)
                @address_bar_link_permission = value
            end
            ## 
            ## Gets the allowEmbed property value. Indicates whether a link can be embedded.
            ## @return a sharing_operation_status
            ## 
            def allow_embed
                return @allow_embed
            end
            ## 
            ## Sets the allowEmbed property value. Indicates whether a link can be embedded.
            ## @param value Value to set for the allowEmbed property.
            ## @return a void
            ## 
            def allow_embed=(value)
                @allow_embed = value
            end
            ## 
            ## Instantiates a new SharingLinkVariants and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a sharing_link_variants
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SharingLinkVariants.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "addressBarLinkPermission" => lambda {|n| @address_bar_link_permission = n.get_enum_value(MicrosoftGraphBeta::Models::SharingRole) },
                    "allowEmbed" => lambda {|n| @allow_embed = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingOperationStatus.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "passwordProtected" => lambda {|n| @password_protected = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingOperationStatus.create_from_discriminator_value(pn) }) },
                    "requiresAuthentication" => lambda {|n| @requires_authentication = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingOperationStatus.create_from_discriminator_value(pn) }) },
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
            ## Gets the passwordProtected property value. Indicates whether a link can be password protected, meaning that link users would need to enter a password to access the item for which the sharing link is produced. Creating a passwordProtected link for the first time requires providing a password.
            ## @return a sharing_operation_status
            ## 
            def password_protected
                return @password_protected
            end
            ## 
            ## Sets the passwordProtected property value. Indicates whether a link can be password protected, meaning that link users would need to enter a password to access the item for which the sharing link is produced. Creating a passwordProtected link for the first time requires providing a password.
            ## @param value Value to set for the passwordProtected property.
            ## @return a void
            ## 
            def password_protected=(value)
                @password_protected = value
            end
            ## 
            ## Gets the requiresAuthentication property value. Indicates whether a link requires identity authentication for recipients. Users can be verified through either an email address or identity.
            ## @return a sharing_operation_status
            ## 
            def requires_authentication
                return @requires_authentication
            end
            ## 
            ## Sets the requiresAuthentication property value. Indicates whether a link requires identity authentication for recipients. Users can be verified through either an email address or identity.
            ## @param value Value to set for the requiresAuthentication property.
            ## @return a void
            ## 
            def requires_authentication=(value)
                @requires_authentication = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("addressBarLinkPermission", @address_bar_link_permission)
                writer.write_object_value("allowEmbed", @allow_embed)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("passwordProtected", @password_protected)
                writer.write_object_value("requiresAuthentication", @requires_authentication)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
