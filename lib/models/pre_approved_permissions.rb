require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PreApprovedPermissions
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates the scope of permissions that are included in this condition set. Possible values: all for all permissions, enumerated for a given list of permissions, or allPermissionsOnResourceApp for all permissions from a given API. Required.
            @permission_kind
            ## 
            # The type of permission being granted. Possible values: application for application permissions, or delegated for delegated permissions. Required.
            @permission_type
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
            ## Instantiates a new PreApprovedPermissions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a pre_approved_permissions
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.allPreApprovedPermissions"
                            return AllPreApprovedPermissions.new
                        when "#microsoft.graph.allPreApprovedPermissionsOnResourceApp"
                            return AllPreApprovedPermissionsOnResourceApp.new
                        when "#microsoft.graph.enumeratedPreApprovedPermissions"
                            return EnumeratedPreApprovedPermissions.new
                    end
                end
                return PreApprovedPermissions.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "permissionKind" => lambda {|n| @permission_kind = n.get_enum_value(MicrosoftGraphBeta::Models::PermissionKind) },
                    "permissionType" => lambda {|n| @permission_type = n.get_enum_value(MicrosoftGraphBeta::Models::PermissionType) },
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
            ## Gets the permissionKind property value. Indicates the scope of permissions that are included in this condition set. Possible values: all for all permissions, enumerated for a given list of permissions, or allPermissionsOnResourceApp for all permissions from a given API. Required.
            ## @return a permission_kind
            ## 
            def permission_kind
                return @permission_kind
            end
            ## 
            ## Sets the permissionKind property value. Indicates the scope of permissions that are included in this condition set. Possible values: all for all permissions, enumerated for a given list of permissions, or allPermissionsOnResourceApp for all permissions from a given API. Required.
            ## @param value Value to set for the permissionKind property.
            ## @return a void
            ## 
            def permission_kind=(value)
                @permission_kind = value
            end
            ## 
            ## Gets the permissionType property value. The type of permission being granted. Possible values: application for application permissions, or delegated for delegated permissions. Required.
            ## @return a permission_type
            ## 
            def permission_type
                return @permission_type
            end
            ## 
            ## Sets the permissionType property value. The type of permission being granted. Possible values: application for application permissions, or delegated for delegated permissions. Required.
            ## @param value Value to set for the permissionType property.
            ## @return a void
            ## 
            def permission_type=(value)
                @permission_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("permissionKind", @permission_kind)
                writer.write_enum_value("permissionType", @permission_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
