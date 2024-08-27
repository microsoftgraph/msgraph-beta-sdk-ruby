require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # OMA Settings Integer definition.
        class OmaSettingInteger < MicrosoftGraphBeta::Models::OmaSetting
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # By setting to true, the CSP (configuration service provider) specified in the OMA-URI will perform a get, instead of set
            @is_read_only
            ## 
            # Value.
            @value
            ## 
            ## Instantiates a new OmaSettingInteger and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.omaSettingInteger"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a oma_setting_integer
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OmaSettingInteger.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isReadOnly" => lambda {|n| @is_read_only = n.get_boolean_value() },
                    "value" => lambda {|n| @value = n.get_number_value() },
                })
            end
            ## 
            ## Gets the isReadOnly property value. By setting to true, the CSP (configuration service provider) specified in the OMA-URI will perform a get, instead of set
            ## @return a boolean
            ## 
            def is_read_only
                return @is_read_only
            end
            ## 
            ## Sets the isReadOnly property value. By setting to true, the CSP (configuration service provider) specified in the OMA-URI will perform a get, instead of set
            ## @param value Value to set for the isReadOnly property.
            ## @return a void
            ## 
            def is_read_only=(value)
                @is_read_only = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isReadOnly", @is_read_only)
                writer.write_number_value("value", @value)
            end
            ## 
            ## Gets the value property value. Value.
            ## @return a integer
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. Value.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
