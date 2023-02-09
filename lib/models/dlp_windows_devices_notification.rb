require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DlpWindowsDevicesNotification < MicrosoftGraphBeta::Models::DlpNotification
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The contentName property
            @content_name
            ## 
            # The lastModfiedBy property
            @last_modfied_by
            ## 
            ## Instantiates a new DlpWindowsDevicesNotification and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.dlpWindowsDevicesNotification"
            end
            ## 
            ## Gets the contentName property value. The contentName property
            ## @return a string
            ## 
            def content_name
                return @content_name
            end
            ## 
            ## Sets the contentName property value. The contentName property
            ## @param value Value to set for the content_name property.
            ## @return a void
            ## 
            def content_name=(value)
                @content_name = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a dlp_windows_devices_notification
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DlpWindowsDevicesNotification.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contentName" => lambda {|n| @content_name = n.get_string_value() },
                    "lastModfiedBy" => lambda {|n| @last_modfied_by = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastModfiedBy property value. The lastModfiedBy property
            ## @return a string
            ## 
            def last_modfied_by
                return @last_modfied_by
            end
            ## 
            ## Sets the lastModfiedBy property value. The lastModfiedBy property
            ## @param value Value to set for the last_modfied_by property.
            ## @return a void
            ## 
            def last_modfied_by=(value)
                @last_modfied_by = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("contentName", @content_name)
                writer.write_string_value("lastModfiedBy", @last_modfied_by)
            end
        end
    end
end
