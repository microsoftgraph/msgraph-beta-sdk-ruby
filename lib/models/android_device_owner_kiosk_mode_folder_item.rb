require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents an item that can be added to Android Device Owner folder (application or weblink)
        class AndroidDeviceOwnerKioskModeFolderItem < MicrosoftGraphBeta::Models::AndroidDeviceOwnerKioskModeHomeScreenItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            ## Instantiates a new androidDeviceOwnerKioskModeFolderItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidDeviceOwnerKioskModeFolderItem"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_device_owner_kiosk_mode_folder_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.androidDeviceOwnerKioskModeApp"
                            return AndroidDeviceOwnerKioskModeApp.new
                        when "#microsoft.graph.androidDeviceOwnerKioskModeWeblink"
                            return AndroidDeviceOwnerKioskModeWeblink.new
                    end
                end
                return AndroidDeviceOwnerKioskModeFolderItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
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
            end
        end
    end
end
