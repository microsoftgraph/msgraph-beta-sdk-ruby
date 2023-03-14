require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Request for assignment filter evaluation for devices.
        class AssignmentFilterEvaluateRequest
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Order the devices should be sorted in. Default is ascending on device name.
            @order_by
            ## 
            # Supported platform types.
            @platform
            ## 
            # Rule definition of the Assignment Filter.
            @rule
            ## 
            # Search keyword applied to scope found devices.
            @search
            ## 
            # Number of records to skip. Default value is 0
            @skip
            ## 
            # Limit of records per request. Default value is 100, if provided less than 0 or greater than 100
            @top
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
            ## Instantiates a new assignmentFilterEvaluateRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a assignment_filter_evaluate_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AssignmentFilterEvaluateRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "orderBy" => lambda {|n| @order_by = n.get_collection_of_primitive_values(String) },
                    "platform" => lambda {|n| @platform = n.get_enum_value(MicrosoftGraphBeta::Models::DevicePlatformType) },
                    "rule" => lambda {|n| @rule = n.get_string_value() },
                    "search" => lambda {|n| @search = n.get_string_value() },
                    "skip" => lambda {|n| @skip = n.get_number_value() },
                    "top" => lambda {|n| @top = n.get_number_value() },
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the orderBy property value. Order the devices should be sorted in. Default is ascending on device name.
            ## @return a string
            ## 
            def order_by
                return @order_by
            end
            ## 
            ## Sets the orderBy property value. Order the devices should be sorted in. Default is ascending on device name.
            ## @param value Value to set for the order_by property.
            ## @return a void
            ## 
            def order_by=(value)
                @order_by = value
            end
            ## 
            ## Gets the platform property value. Supported platform types.
            ## @return a device_platform_type
            ## 
            def platform
                return @platform
            end
            ## 
            ## Sets the platform property value. Supported platform types.
            ## @param value Value to set for the platform property.
            ## @return a void
            ## 
            def platform=(value)
                @platform = value
            end
            ## 
            ## Gets the rule property value. Rule definition of the Assignment Filter.
            ## @return a string
            ## 
            def rule
                return @rule
            end
            ## 
            ## Sets the rule property value. Rule definition of the Assignment Filter.
            ## @param value Value to set for the rule property.
            ## @return a void
            ## 
            def rule=(value)
                @rule = value
            end
            ## 
            ## Gets the search property value. Search keyword applied to scope found devices.
            ## @return a string
            ## 
            def search
                return @search
            end
            ## 
            ## Sets the search property value. Search keyword applied to scope found devices.
            ## @param value Value to set for the search property.
            ## @return a void
            ## 
            def search=(value)
                @search = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_primitive_values("orderBy", @order_by)
                writer.write_enum_value("platform", @platform)
                writer.write_string_value("rule", @rule)
                writer.write_string_value("search", @search)
                writer.write_number_value("skip", @skip)
                writer.write_number_value("top", @top)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the skip property value. Number of records to skip. Default value is 0
            ## @return a integer
            ## 
            def skip
                return @skip
            end
            ## 
            ## Sets the skip property value. Number of records to skip. Default value is 0
            ## @param value Value to set for the skip property.
            ## @return a void
            ## 
            def skip=(value)
                @skip = value
            end
            ## 
            ## Gets the top property value. Limit of records per request. Default value is 100, if provided less than 0 or greater than 100
            ## @return a integer
            ## 
            def top
                return @top
            end
            ## 
            ## Sets the top property value. Limit of records per request. Default value is 100, if provided less than 0 or greater than 100
            ## @param value Value to set for the top property.
            ## @return a void
            ## 
            def top=(value)
                @top = value
            end
        end
    end
end
