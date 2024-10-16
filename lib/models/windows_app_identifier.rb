require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The identifier for a Windows app.
        class WindowsAppIdentifier < MicrosoftGraphBeta::Models::MobileAppIdentifier
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier for an app, as specified in the app store.
            @windows_app_id
            ## 
            ## Instantiates a new WindowsAppIdentifier and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsAppIdentifier"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_app_identifier
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsAppIdentifier.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "windowsAppId" => lambda {|n| @windows_app_id = n.get_string_value() },
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
                writer.write_string_value("windowsAppId", @windows_app_id)
            end
            ## 
            ## Gets the windowsAppId property value. The identifier for an app, as specified in the app store.
            ## @return a string
            ## 
            def windows_app_id
                return @windows_app_id
            end
            ## 
            ## Sets the windowsAppId property value. The identifier for an app, as specified in the app store.
            ## @param value Value to set for the windowsAppId property.
            ## @return a void
            ## 
            def windows_app_id=(value)
                @windows_app_id = value
            end
        end
    end
end
