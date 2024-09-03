require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Mapping between an Android app permission and the action Android should take when that permission is requested.
        class AndroidPermissionAction
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Android action taken when an app requests a dangerous permission.
            @action
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Android permission string, defined in the official Android documentation.  Example 'android.permission.READ_CONTACTS'.
            @permission
            ## 
            ## Gets the action property value. Android action taken when an app requests a dangerous permission.
            ## @return a android_permission_action_type
            ## 
            def action
                return @action
            end
            ## 
            ## Sets the action property value. Android action taken when an app requests a dangerous permission.
            ## @param value Value to set for the action property.
            ## @return a void
            ## 
            def action=(value)
                @action = value
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
            ## Instantiates a new AndroidPermissionAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_permission_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidPermissionAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidPermissionActionType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "permission" => lambda {|n| @permission = n.get_string_value() },
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
            ## Gets the permission property value. Android permission string, defined in the official Android documentation.  Example 'android.permission.READ_CONTACTS'.
            ## @return a string
            ## 
            def permission
                return @permission
            end
            ## 
            ## Sets the permission property value. Android permission string, defined in the official Android documentation.  Example 'android.permission.READ_CONTACTS'.
            ## @param value Value to set for the permission property.
            ## @return a void
            ## 
            def permission=(value)
                @permission = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("action", @action)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("permission", @permission)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
