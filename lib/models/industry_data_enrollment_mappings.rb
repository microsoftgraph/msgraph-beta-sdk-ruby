require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataEnrollmentMappings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The enrollmentMappings member for the class group.
            @member_enrollment_mappings
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The enrollmentMappings owner for the class group.
            @owner_enrollment_mappings
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
            ## Instantiates a new IndustryDataEnrollmentMappings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_enrollment_mappings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IndustryDataEnrollmentMappings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "memberEnrollmentMappings" => lambda {|n| @member_enrollment_mappings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataSectionRoleReferenceValue.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "ownerEnrollmentMappings" => lambda {|n| @owner_enrollment_mappings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataSectionRoleReferenceValue.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the memberEnrollmentMappings property value. The enrollmentMappings member for the class group.
            ## @return a industry_data_section_role_reference_value
            ## 
            def member_enrollment_mappings
                return @member_enrollment_mappings
            end
            ## 
            ## Sets the memberEnrollmentMappings property value. The enrollmentMappings member for the class group.
            ## @param value Value to set for the memberEnrollmentMappings property.
            ## @return a void
            ## 
            def member_enrollment_mappings=(value)
                @member_enrollment_mappings = value
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
            ## Gets the ownerEnrollmentMappings property value. The enrollmentMappings owner for the class group.
            ## @return a industry_data_section_role_reference_value
            ## 
            def owner_enrollment_mappings
                return @owner_enrollment_mappings
            end
            ## 
            ## Sets the ownerEnrollmentMappings property value. The enrollmentMappings owner for the class group.
            ## @param value Value to set for the ownerEnrollmentMappings property.
            ## @return a void
            ## 
            def owner_enrollment_mappings=(value)
                @owner_enrollment_mappings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("memberEnrollmentMappings", @member_enrollment_mappings)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("ownerEnrollmentMappings", @owner_enrollment_mappings)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
