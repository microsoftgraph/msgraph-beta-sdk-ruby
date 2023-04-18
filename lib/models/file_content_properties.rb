require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class FileContentProperties < MicrosoftGraphBeta::Models::ContentProperties
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The isVisibleOnlyToOneDriveOwner property
            @is_visible_only_to_one_drive_owner
            ## 
            ## Instantiates a new FileContentProperties and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.fileContentProperties"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a file_content_properties
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return FileContentProperties.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isVisibleOnlyToOneDriveOwner" => lambda {|n| @is_visible_only_to_one_drive_owner = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isVisibleOnlyToOneDriveOwner property value. The isVisibleOnlyToOneDriveOwner property
            ## @return a boolean
            ## 
            def is_visible_only_to_one_drive_owner
                return @is_visible_only_to_one_drive_owner
            end
            ## 
            ## Sets the isVisibleOnlyToOneDriveOwner property value. The isVisibleOnlyToOneDriveOwner property
            ## @param value Value to set for the is_visible_only_to_one_drive_owner property.
            ## @return a void
            ## 
            def is_visible_only_to_one_drive_owner=(value)
                @is_visible_only_to_one_drive_owner = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isVisibleOnlyToOneDriveOwner", @is_visible_only_to_one_drive_owner)
            end
        end
    end
end
