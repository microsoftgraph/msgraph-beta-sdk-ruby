require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AndroidDeviceOwnerKioskModeWeblink < MicrosoftGraphBeta::Models::AndroidDeviceOwnerKioskModeFolderItem
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Display name for weblink
        @label
        ## 
        # Link for weblink
        @link
        ## 
        ## Instantiates a new AndroidDeviceOwnerKioskModeWeblink and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.androidDeviceOwnerKioskModeWeblink"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a android_device_owner_kiosk_mode_weblink
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AndroidDeviceOwnerKioskModeWeblink.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "label" => lambda {|n| @label = n.get_string_value() },
                "link" => lambda {|n| @link = n.get_string_value() },
            })
        end
        ## 
        ## Gets the label property value. Display name for weblink
        ## @return a string
        ## 
        def label
            return @label
        end
        ## 
        ## Sets the label property value. Display name for weblink
        ## @param value Value to set for the label property.
        ## @return a void
        ## 
        def label=(value)
            @label = value
        end
        ## 
        ## Gets the link property value. Link for weblink
        ## @return a string
        ## 
        def link
            return @link
        end
        ## 
        ## Sets the link property value. Link for weblink
        ## @param value Value to set for the link property.
        ## @return a void
        ## 
        def link=(value)
            @link = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("label", @label)
            writer.write_string_value("link", @link)
        end
    end
end
