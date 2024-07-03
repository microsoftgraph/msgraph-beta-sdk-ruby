require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataClassGroupConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The different attributes to sync for the class groups. The possible values are: courseTitle, courseCode, courseSubject, courseGradeLevel, courseExternalId, academicSessionTitle, academicSessionExternalId, classCode, unknownFutureValue.
            @additional_attributes
            ## 
            # The additionalOptions property
            @additional_options
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The enrollmentMappings property
            @enrollment_mappings
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the additionalAttributes property value. The different attributes to sync for the class groups. The possible values are: courseTitle, courseCode, courseSubject, courseGradeLevel, courseExternalId, academicSessionTitle, academicSessionExternalId, classCode, unknownFutureValue.
            ## @return a industry_data_additional_class_group_attributes
            ## 
            def additional_attributes
                return @additional_attributes
            end
            ## 
            ## Sets the additionalAttributes property value. The different attributes to sync for the class groups. The possible values are: courseTitle, courseCode, courseSubject, courseGradeLevel, courseExternalId, academicSessionTitle, academicSessionExternalId, classCode, unknownFutureValue.
            ## @param value Value to set for the additionalAttributes property.
            ## @return a void
            ## 
            def additional_attributes=(value)
                @additional_attributes = value
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
            ## Gets the additionalOptions property value. The additionalOptions property
            ## @return a industry_data_additional_class_group_options
            ## 
            def additional_options
                return @additional_options
            end
            ## 
            ## Sets the additionalOptions property value. The additionalOptions property
            ## @param value Value to set for the additionalOptions property.
            ## @return a void
            ## 
            def additional_options=(value)
                @additional_options = value
            end
            ## 
            ## Instantiates a new IndustryDataClassGroupConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_class_group_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IndustryDataClassGroupConfiguration.new
            end
            ## 
            ## Gets the enrollmentMappings property value. The enrollmentMappings property
            ## @return a industry_data_enrollment_mappings
            ## 
            def enrollment_mappings
                return @enrollment_mappings
            end
            ## 
            ## Sets the enrollmentMappings property value. The enrollmentMappings property
            ## @param value Value to set for the enrollmentMappings property.
            ## @return a void
            ## 
            def enrollment_mappings=(value)
                @enrollment_mappings = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "additionalAttributes" => lambda {|n| @additional_attributes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataAdditionalClassGroupAttributes.create_from_discriminator_value(pn) }) },
                    "additionalOptions" => lambda {|n| @additional_options = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataAdditionalClassGroupOptions.create_from_discriminator_value(pn) }) },
                    "enrollmentMappings" => lambda {|n| @enrollment_mappings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataEnrollmentMappings.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_collection_of_object_values("additionalAttributes", @additional_attributes)
                writer.write_object_value("additionalOptions", @additional_options)
                writer.write_object_value("enrollmentMappings", @enrollment_mappings)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
