require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesUpdateManagementEnrollment < MicrosoftGraphBeta::Models::WindowsUpdatesUpdatableAssetEnrollment
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The updateCategory property
            @update_category
            ## 
            ## Instantiates a new windowsUpdatesUpdateManagementEnrollment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsUpdates.updateManagementEnrollment"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_update_management_enrollment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesUpdateManagementEnrollment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "updateCategory" => lambda {|n| @update_category = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdatesUpdateCategory) },
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
                writer.write_enum_value("updateCategory", @update_category)
            end
            ## 
            ## Gets the updateCategory property value. The updateCategory property
            ## @return a windows_updates_update_category
            ## 
            def update_category
                return @update_category
            end
            ## 
            ## Sets the updateCategory property value. The updateCategory property
            ## @param value Value to set for the updateCategory property.
            ## @return a void
            ## 
            def update_category=(value)
                @update_category = value
            end
        end
    end
end
