require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AppleExpeditedCheckinConfigurationBase < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Gets or sets whether to enable expedited device check-ins.
        @enable_expedited_checkin
        ## 
        ## Instantiates a new AppleExpeditedCheckinConfigurationBase and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.appleExpeditedCheckinConfigurationBase"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a apple_expedited_checkin_configuration_base
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.iosExpeditedCheckinConfiguration"
                        return IosExpeditedCheckinConfiguration.new
                end
            end
            return AppleExpeditedCheckinConfigurationBase.new
        end
        ## 
        ## Gets the enableExpeditedCheckin property value. Gets or sets whether to enable expedited device check-ins.
        ## @return a boolean
        ## 
        def enable_expedited_checkin
            return @enable_expedited_checkin
        end
        ## 
        ## Sets the enableExpeditedCheckin property value. Gets or sets whether to enable expedited device check-ins.
        ## @param value Value to set for the enableExpeditedCheckin property.
        ## @return a void
        ## 
        def enable_expedited_checkin=(value)
            @enable_expedited_checkin = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "enableExpeditedCheckin" => lambda {|n| @enable_expedited_checkin = n.get_boolean_value() },
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
            writer.write_boolean_value("enableExpeditedCheckin", @enable_expedited_checkin)
        end
    end
end
