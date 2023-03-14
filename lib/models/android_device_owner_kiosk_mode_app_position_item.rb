require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # An item in the list of app positions that sets the order of items on the Managed Home Screen
        class AndroidDeviceOwnerKioskModeAppPositionItem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Represents an item on the Android Device Owner Managed Home Screen (application, weblink or folder
            @item
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Position of the item on the grid. Valid values 0 to 9999999
            @position
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new androidDeviceOwnerKioskModeAppPositionItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a android_device_owner_kiosk_mode_app_position_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidDeviceOwnerKioskModeAppPositionItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "item" => lambda {|n| @item = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerKioskModeHomeScreenItem.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "position" => lambda {|n| @position = n.get_number_value() },
                }
            end
            ## 
            ## Gets the item property value. Represents an item on the Android Device Owner Managed Home Screen (application, weblink or folder
            ## @return a android_device_owner_kiosk_mode_home_screen_item
            ## 
            def item
                return @item
            end
            ## 
            ## Sets the item property value. Represents an item on the Android Device Owner Managed Home Screen (application, weblink or folder
            ## @param value Value to set for the item property.
            ## @return a void
            ## 
            def item=(value)
                @item = value
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the position property value. Position of the item on the grid. Valid values 0 to 9999999
            ## @return a integer
            ## 
            def position
                return @position
            end
            ## 
            ## Sets the position property value. Position of the item on the grid. Valid values 0 to 9999999
            ## @param value Value to set for the position property.
            ## @return a void
            ## 
            def position=(value)
                @position = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("item", @item)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("position", @position)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
