require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DlpEvaluationWindowsDevicesInput < MicrosoftGraphBeta::Models::DlpEvaluationInput
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The contentProperties property
            @content_properties
            ## 
            # The sharedBy property
            @shared_by
            ## 
            ## Instantiates a new dlpEvaluationWindowsDevicesInput and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.dlpEvaluationWindowsDevicesInput"
            end
            ## 
            ## Gets the contentProperties property value. The contentProperties property
            ## @return a content_properties
            ## 
            def content_properties
                return @content_properties
            end
            ## 
            ## Sets the contentProperties property value. The contentProperties property
            ## @param value Value to set for the content_properties property.
            ## @return a void
            ## 
            def content_properties=(value)
                @content_properties = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a dlp_evaluation_windows_devices_input
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DlpEvaluationWindowsDevicesInput.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "contentProperties" => lambda {|n| @content_properties = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ContentProperties.create_from_discriminator_value(pn) }) },
                    "sharedBy" => lambda {|n| @shared_by = n.get_string_value() },
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
                writer.write_object_value("contentProperties", @content_properties)
                writer.write_string_value("sharedBy", @shared_by)
            end
            ## 
            ## Gets the sharedBy property value. The sharedBy property
            ## @return a string
            ## 
            def shared_by
                return @shared_by
            end
            ## 
            ## Sets the sharedBy property value. The sharedBy property
            ## @param value Value to set for the shared_by property.
            ## @return a void
            ## 
            def shared_by=(value)
                @shared_by = value
            end
        end
    end
end
