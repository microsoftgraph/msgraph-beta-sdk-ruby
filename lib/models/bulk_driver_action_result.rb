require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A complex type to represent the result of bulk driver action.
        class BulkDriverActionResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # List of driver Ids where the action is failed.
            @failed_driver_ids
            ## 
            # List of driver Ids that are not found.
            @not_found_driver_ids
            ## 
            # The OdataType property
            @odata_type
            ## 
            # List of driver Ids where the action is successful.
            @successful_driver_ids
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
            ## Instantiates a new bulkDriverActionResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a bulk_driver_action_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BulkDriverActionResult.new
            end
            ## 
            ## Gets the failedDriverIds property value. List of driver Ids where the action is failed.
            ## @return a string
            ## 
            def failed_driver_ids
                return @failed_driver_ids
            end
            ## 
            ## Sets the failedDriverIds property value. List of driver Ids where the action is failed.
            ## @param value Value to set for the failed_driver_ids property.
            ## @return a void
            ## 
            def failed_driver_ids=(value)
                @failed_driver_ids = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "failedDriverIds" => lambda {|n| @failed_driver_ids = n.get_collection_of_primitive_values(String) },
                    "notFoundDriverIds" => lambda {|n| @not_found_driver_ids = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "successfulDriverIds" => lambda {|n| @successful_driver_ids = n.get_collection_of_primitive_values(String) },
                }
            end
            ## 
            ## Gets the notFoundDriverIds property value. List of driver Ids that are not found.
            ## @return a string
            ## 
            def not_found_driver_ids
                return @not_found_driver_ids
            end
            ## 
            ## Sets the notFoundDriverIds property value. List of driver Ids that are not found.
            ## @param value Value to set for the not_found_driver_ids property.
            ## @return a void
            ## 
            def not_found_driver_ids=(value)
                @not_found_driver_ids = value
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
                writer.write_collection_of_primitive_values("failedDriverIds", @failed_driver_ids)
                writer.write_collection_of_primitive_values("notFoundDriverIds", @not_found_driver_ids)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_primitive_values("successfulDriverIds", @successful_driver_ids)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the successfulDriverIds property value. List of driver Ids where the action is successful.
            ## @return a string
            ## 
            def successful_driver_ids
                return @successful_driver_ids
            end
            ## 
            ## Sets the successfulDriverIds property value. List of driver Ids where the action is successful.
            ## @param value Value to set for the successful_driver_ids property.
            ## @return a void
            ## 
            def successful_driver_ids=(value)
                @successful_driver_ids = value
            end
        end
    end
end
