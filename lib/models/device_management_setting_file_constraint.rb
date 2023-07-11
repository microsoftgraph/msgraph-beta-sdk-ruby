require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Base entity for a constraint
        class DeviceManagementSettingFileConstraint < MicrosoftGraphBeta::Models::DeviceManagementConstraint
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Acceptable file extensions to upload for this setting
            @supported_extensions
            ## 
            ## Instantiates a new deviceManagementSettingFileConstraint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceManagementSettingFileConstraint"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_setting_file_constraint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementSettingFileConstraint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "supportedExtensions" => lambda {|n| @supported_extensions = n.get_collection_of_primitive_values(String) },
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
                writer.write_collection_of_primitive_values("supportedExtensions", @supported_extensions)
            end
            ## 
            ## Gets the supportedExtensions property value. Acceptable file extensions to upload for this setting
            ## @return a string
            ## 
            def supported_extensions
                return @supported_extensions
            end
            ## 
            ## Sets the supportedExtensions property value. Acceptable file extensions to upload for this setting
            ## @param value Value to set for the supported_extensions property.
            ## @return a void
            ## 
            def supported_extensions=(value)
                @supported_extensions = value
            end
        end
    end
end
