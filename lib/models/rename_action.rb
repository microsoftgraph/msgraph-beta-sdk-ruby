require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RenameAction
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The new name of the item.
            @new_name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The previous name of the item.
            @old_name
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new renameAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a rename_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RenameAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "newName" => lambda {|n| @new_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "oldName" => lambda {|n| @old_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the newName property value. The new name of the item.
            ## @return a string
            ## 
            def new_name
                return @new_name
            end
            ## 
            ## Sets the newName property value. The new name of the item.
            ## @param value Value to set for the new_name property.
            ## @return a void
            ## 
            def new_name=(value)
                @new_name = value
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the oldName property value. The previous name of the item.
            ## @return a string
            ## 
            def old_name
                return @old_name
            end
            ## 
            ## Sets the oldName property value. The previous name of the item.
            ## @param value Value to set for the old_name property.
            ## @return a void
            ## 
            def old_name=(value)
                @old_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("newName", @new_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("oldName", @old_name)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
