require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The class used to identify an Azure Directory group for the kiosk configuration
        class WindowsKioskActiveDirectoryGroup < MicrosoftGraphBeta::Models::WindowsKioskUser
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the AD group that will be locked to this kiosk configuration
            @group_name
            ## 
            ## Instantiates a new windowsKioskActiveDirectoryGroup and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsKioskActiveDirectoryGroup"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_kiosk_active_directory_group
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsKioskActiveDirectoryGroup.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "groupName" => lambda {|n| @group_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the groupName property value. The name of the AD group that will be locked to this kiosk configuration
            ## @return a string
            ## 
            def group_name
                return @group_name
            end
            ## 
            ## Sets the groupName property value. The name of the AD group that will be locked to this kiosk configuration
            ## @param value Value to set for the groupName property.
            ## @return a void
            ## 
            def group_name=(value)
                @group_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("groupName", @group_name)
            end
        end
    end
end
