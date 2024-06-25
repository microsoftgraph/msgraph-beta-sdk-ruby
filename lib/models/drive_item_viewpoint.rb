require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DriveItemViewpoint
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether the user can perform the described actions on this item.
            @access_operations
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates sharing operations the current user can take on the specified item.
            @sharing
            ## 
            ## Gets the accessOperations property value. Indicates whether the user can perform the described actions on this item.
            ## @return a drive_item_access_operations_viewpoint
            ## 
            def access_operations
                return @access_operations
            end
            ## 
            ## Sets the accessOperations property value. Indicates whether the user can perform the described actions on this item.
            ## @param value Value to set for the accessOperations property.
            ## @return a void
            ## 
            def access_operations=(value)
                @access_operations = value
            end
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new DriveItemViewpoint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a drive_item_viewpoint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DriveItemViewpoint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "accessOperations" => lambda {|n| @access_operations = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DriveItemAccessOperationsViewpoint.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sharing" => lambda {|n| @sharing = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SharingViewpoint.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("accessOperations", @access_operations)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("sharing", @sharing)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sharing property value. Indicates sharing operations the current user can take on the specified item.
            ## @return a sharing_viewpoint
            ## 
            def sharing
                return @sharing
            end
            ## 
            ## Sets the sharing property value. Indicates sharing operations the current user can take on the specified item.
            ## @param value Value to set for the sharing property.
            ## @return a void
            ## 
            def sharing=(value)
                @sharing = value
            end
        end
    end
end
