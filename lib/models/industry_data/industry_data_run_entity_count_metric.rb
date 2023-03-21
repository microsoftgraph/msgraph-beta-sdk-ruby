require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './industry_data'

module MicrosoftGraphBeta
    module Models
        module IndustryData
            class IndustryDataRunEntityCountMetric
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # The count of entries for the entity marked as Active.
                @active
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The count of entries for the entity marked as Inactive.
                @inactive
                ## 
                # The OdataType property
                @odata_type
                ## 
                # Total count of the entity.
                @total
                ## 
                ## Gets the active property value. The count of entries for the entity marked as Active.
                ## @return a integer
                ## 
                def active
                    return @active
                end
                ## 
                ## Sets the active property value. The count of entries for the entity marked as Active.
                ## @param value Value to set for the active property.
                ## @return a void
                ## 
                def active=(value)
                    @active = value
                end
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
                ## Instantiates a new industryDataRunEntityCountMetric and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a industry_data_run_entity_count_metric
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return IndustryDataRunEntityCountMetric.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "active" => lambda {|n| @active = n.get_number_value() },
                        "inactive" => lambda {|n| @inactive = n.get_number_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "total" => lambda {|n| @total = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the inactive property value. The count of entries for the entity marked as Inactive.
                ## @return a integer
                ## 
                def inactive
                    return @inactive
                end
                ## 
                ## Sets the inactive property value. The count of entries for the entity marked as Inactive.
                ## @param value Value to set for the inactive property.
                ## @return a void
                ## 
                def inactive=(value)
                    @inactive = value
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
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the total property value. Total count of the entity.
                ## @return a integer
                ## 
                def total
                    return @total
                end
                ## 
                ## Sets the total property value. Total count of the entity.
                ## @param value Value to set for the total property.
                ## @return a void
                ## 
                def total=(value)
                    @total = value
                end
            end
        end
    end
end
