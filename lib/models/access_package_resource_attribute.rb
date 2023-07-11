require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AccessPackageResourceAttribute
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Information about how to set the attribute, currently a accessPackageUserDirectoryAttributeStore object type.
            @attribute_destination
            ## 
            # The name of the attribute in the end system. If the destination is accessPackageUserDirectoryAttributeStore, then a user property such as jobTitle or a directory schema extension for the user object type, such as extension_2b676109c7c74ae2b41549205f1947ed_personalTitle.
            @attribute_name
            ## 
            # Information about how to populate the attribute value when an accessPackageAssignmentRequest is being fulfilled, currently a accessPackageResourceAttributeQuestion object type.
            @attribute_source
            ## 
            # Unique identifier for the attribute on the access package resource. Read-only.
            @id
            ## 
            # Specifies whether or not an existing attribute value can be edited by the requester.
            @is_editable
            ## 
            # Specifies whether the attribute will remain in the end system after an assignment ends.
            @is_persisted_on_assignment_removal
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the attributeDestination property value. Information about how to set the attribute, currently a accessPackageUserDirectoryAttributeStore object type.
            ## @return a access_package_resource_attribute_destination
            ## 
            def attribute_destination
                return @attribute_destination
            end
            ## 
            ## Sets the attributeDestination property value. Information about how to set the attribute, currently a accessPackageUserDirectoryAttributeStore object type.
            ## @param value Value to set for the attribute_destination property.
            ## @return a void
            ## 
            def attribute_destination=(value)
                @attribute_destination = value
            end
            ## 
            ## Gets the attributeName property value. The name of the attribute in the end system. If the destination is accessPackageUserDirectoryAttributeStore, then a user property such as jobTitle or a directory schema extension for the user object type, such as extension_2b676109c7c74ae2b41549205f1947ed_personalTitle.
            ## @return a string
            ## 
            def attribute_name
                return @attribute_name
            end
            ## 
            ## Sets the attributeName property value. The name of the attribute in the end system. If the destination is accessPackageUserDirectoryAttributeStore, then a user property such as jobTitle or a directory schema extension for the user object type, such as extension_2b676109c7c74ae2b41549205f1947ed_personalTitle.
            ## @param value Value to set for the attribute_name property.
            ## @return a void
            ## 
            def attribute_name=(value)
                @attribute_name = value
            end
            ## 
            ## Gets the attributeSource property value. Information about how to populate the attribute value when an accessPackageAssignmentRequest is being fulfilled, currently a accessPackageResourceAttributeQuestion object type.
            ## @return a access_package_resource_attribute_source
            ## 
            def attribute_source
                return @attribute_source
            end
            ## 
            ## Sets the attributeSource property value. Information about how to populate the attribute value when an accessPackageAssignmentRequest is being fulfilled, currently a accessPackageResourceAttributeQuestion object type.
            ## @param value Value to set for the attribute_source property.
            ## @return a void
            ## 
            def attribute_source=(value)
                @attribute_source = value
            end
            ## 
            ## Instantiates a new accessPackageResourceAttribute and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_resource_attribute
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageResourceAttribute.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attributeDestination" => lambda {|n| @attribute_destination = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceAttributeDestination.create_from_discriminator_value(pn) }) },
                    "attributeName" => lambda {|n| @attribute_name = n.get_string_value() },
                    "attributeSource" => lambda {|n| @attribute_source = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceAttributeSource.create_from_discriminator_value(pn) }) },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "isEditable" => lambda {|n| @is_editable = n.get_boolean_value() },
                    "isPersistedOnAssignmentRemoval" => lambda {|n| @is_persisted_on_assignment_removal = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. Unique identifier for the attribute on the access package resource. Read-only.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. Unique identifier for the attribute on the access package resource. Read-only.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the isEditable property value. Specifies whether or not an existing attribute value can be edited by the requester.
            ## @return a boolean
            ## 
            def is_editable
                return @is_editable
            end
            ## 
            ## Sets the isEditable property value. Specifies whether or not an existing attribute value can be edited by the requester.
            ## @param value Value to set for the is_editable property.
            ## @return a void
            ## 
            def is_editable=(value)
                @is_editable = value
            end
            ## 
            ## Gets the isPersistedOnAssignmentRemoval property value. Specifies whether the attribute will remain in the end system after an assignment ends.
            ## @return a boolean
            ## 
            def is_persisted_on_assignment_removal
                return @is_persisted_on_assignment_removal
            end
            ## 
            ## Sets the isPersistedOnAssignmentRemoval property value. Specifies whether the attribute will remain in the end system after an assignment ends.
            ## @param value Value to set for the is_persisted_on_assignment_removal property.
            ## @return a void
            ## 
            def is_persisted_on_assignment_removal=(value)
                @is_persisted_on_assignment_removal = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("attributeDestination", @attribute_destination)
                writer.write_string_value("attributeName", @attribute_name)
                writer.write_object_value("attributeSource", @attribute_source)
                writer.write_string_value("id", @id)
                writer.write_boolean_value("isEditable", @is_editable)
                writer.write_boolean_value("isPersistedOnAssignmentRemoval", @is_persisted_on_assignment_removal)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
