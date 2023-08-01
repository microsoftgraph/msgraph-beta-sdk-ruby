require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationSynchronizationLicenseAssignment
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The user role type to assign to license. Possible values are: student, teacher, faculty.
            @applies_to
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Represents the SKU identifiers of the licenses to assign.
            @sku_ids
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the appliesTo property value. The user role type to assign to license. Possible values are: student, teacher, faculty.
            ## @return a education_user_role
            ## 
            def applies_to
                return @applies_to
            end
            ## 
            ## Sets the appliesTo property value. The user role type to assign to license. Possible values are: student, teacher, faculty.
            ## @param value Value to set for the appliesTo property.
            ## @return a void
            ## 
            def applies_to=(value)
                @applies_to = value
            end
            ## 
            ## Instantiates a new educationSynchronizationLicenseAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_synchronization_license_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationSynchronizationLicenseAssignment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "appliesTo" => lambda {|n| @applies_to = n.get_enum_value(MicrosoftGraphBeta::Models::EducationUserRole) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "skuIds" => lambda {|n| @sku_ids = n.get_collection_of_primitive_values(String) },
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
                writer.write_enum_value("appliesTo", @applies_to)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_primitive_values("skuIds", @sku_ids)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the skuIds property value. Represents the SKU identifiers of the licenses to assign.
            ## @return a string
            ## 
            def sku_ids
                return @sku_ids
            end
            ## 
            ## Sets the skuIds property value. Represents the SKU identifiers of the licenses to assign.
            ## @param value Value to set for the skuIds property.
            ## @return a void
            ## 
            def sku_ids=(value)
                @sku_ids = value
            end
        end
    end
end
