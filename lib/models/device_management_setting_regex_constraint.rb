require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Constraint enforcing the setting matches against a given RegEx pattern
        class DeviceManagementSettingRegexConstraint < MicrosoftGraphBeta::Models::DeviceManagementConstraint
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The RegEx pattern to match against
            @regex
            ## 
            ## Instantiates a new deviceManagementSettingRegexConstraint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementSettingRegexConstraint"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_setting_regex_constraint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementSettingRegexConstraint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "regex" => lambda {|n| @regex = n.get_string_value() },
                })
            end
            ## 
            ## Gets the regex property value. The RegEx pattern to match against
            ## @return a string
            ## 
            def regex
                return @regex
            end
            ## 
            ## Sets the regex property value. The RegEx pattern to match against
            ## @param value Value to set for the regex property.
            ## @return a void
            ## 
            def regex=(value)
                @regex = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("regex", @regex)
            end
        end
    end
end
