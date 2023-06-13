require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsKioskAzureADGroup < MicrosoftGraphBeta::Models::WindowsKioskUser
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name of the AzureAD group that will be locked to this kiosk configuration
            @display_name
            ## 
            # The ID of the AzureAD group that will be locked to this kiosk configuration
            @group_id
            ## 
            ## Instantiates a new WindowsKioskAzureADGroup and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsKioskAzureADGroup"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_kiosk_azure_a_d_group
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsKioskAzureADGroup.new
            end
            ## 
            ## Gets the displayName property value. The display name of the AzureAD group that will be locked to this kiosk configuration
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the AzureAD group that will be locked to this kiosk configuration
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "groupId" => lambda {|n| @group_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the groupId property value. The ID of the AzureAD group that will be locked to this kiosk configuration
            ## @return a string
            ## 
            def group_id
                return @group_id
            end
            ## 
            ## Sets the groupId property value. The ID of the AzureAD group that will be locked to this kiosk configuration
            ## @param value Value to set for the group_id property.
            ## @return a void
            ## 
            def group_id=(value)
                @group_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("groupId", @group_id)
            end
        end
    end
end
