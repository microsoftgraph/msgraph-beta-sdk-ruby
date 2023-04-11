require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represent status details for device and payload and all associated applied filters.
        class AssignmentFilterStatusDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Device properties used for filter evaluation during device check-in time.
            @device_properties
            ## 
            # Evaluation result summaries for each filter associated to device and payload
            @evalution_summaries
            ## 
            # Unique identifier for the device object.
            @managed_device_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Unique identifier for payload object.
            @payload_id
            ## 
            # Unique identifier for UserId object. Can be null
            @user_id
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
            ## Instantiates a new assignmentFilterStatusDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a assignment_filter_status_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AssignmentFilterStatusDetails.new
            end
            ## 
            ## Gets the deviceProperties property value. Device properties used for filter evaluation during device check-in time.
            ## @return a key_value_pair
            ## 
            def device_properties
                return @device_properties
            end
            ## 
            ## Sets the deviceProperties property value. Device properties used for filter evaluation during device check-in time.
            ## @param value Value to set for the device_properties property.
            ## @return a void
            ## 
            def device_properties=(value)
                @device_properties = value
            end
            ## 
            ## Gets the evalutionSummaries property value. Evaluation result summaries for each filter associated to device and payload
            ## @return a assignment_filter_evaluation_summary
            ## 
            def evalution_summaries
                return @evalution_summaries
            end
            ## 
            ## Sets the evalutionSummaries property value. Evaluation result summaries for each filter associated to device and payload
            ## @param value Value to set for the evalution_summaries property.
            ## @return a void
            ## 
            def evalution_summaries=(value)
                @evalution_summaries = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceProperties" => lambda {|n| @device_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "evalutionSummaries" => lambda {|n| @evalution_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AssignmentFilterEvaluationSummary.create_from_discriminator_value(pn) }) },
                    "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "payloadId" => lambda {|n| @payload_id = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the managedDeviceId property value. Unique identifier for the device object.
            ## @return a string
            ## 
            def managed_device_id
                return @managed_device_id
            end
            ## 
            ## Sets the managedDeviceId property value. Unique identifier for the device object.
            ## @param value Value to set for the managed_device_id property.
            ## @return a void
            ## 
            def managed_device_id=(value)
                @managed_device_id = value
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
            ## Gets the payloadId property value. Unique identifier for payload object.
            ## @return a string
            ## 
            def payload_id
                return @payload_id
            end
            ## 
            ## Sets the payloadId property value. Unique identifier for payload object.
            ## @param value Value to set for the payload_id property.
            ## @return a void
            ## 
            def payload_id=(value)
                @payload_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("deviceProperties", @device_properties)
                writer.write_collection_of_object_values("evalutionSummaries", @evalution_summaries)
                writer.write_string_value("managedDeviceId", @managed_device_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("payloadId", @payload_id)
                writer.write_string_value("userId", @user_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userId property value. Unique identifier for UserId object. Can be null
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. Unique identifier for UserId object. Can be null
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
