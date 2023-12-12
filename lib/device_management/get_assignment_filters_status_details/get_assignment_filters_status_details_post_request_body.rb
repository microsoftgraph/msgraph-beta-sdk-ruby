require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../device_management'
require_relative './get_assignment_filters_status_details'

module MicrosoftGraphBeta
    module DeviceManagement
        module GetAssignmentFiltersStatusDetails
            class GetAssignmentFiltersStatusDetailsPostRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The assignmentFilterIds property
                @assignment_filter_ids
                ## 
                # The managedDeviceId property
                @managed_device_id
                ## 
                # The payloadId property
                @payload_id
                ## 
                # The skip property
                @skip
                ## 
                # The top property
                @top
                ## 
                # The userId property
                @user_id
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
                ## Gets the assignmentFilterIds property value. The assignmentFilterIds property
                ## @return a string
                ## 
                def assignment_filter_ids
                    return @assignment_filter_ids
                end
                ## 
                ## Sets the assignmentFilterIds property value. The assignmentFilterIds property
                ## @param value Value to set for the assignmentFilterIds property.
                ## @return a void
                ## 
                def assignment_filter_ids=(value)
                    @assignment_filter_ids = value
                end
                ## 
                ## Instantiates a new getAssignmentFiltersStatusDetailsPostRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a get_assignment_filters_status_details_post_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GetAssignmentFiltersStatusDetailsPostRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "assignmentFilterIds" => lambda {|n| @assignment_filter_ids = n.get_collection_of_primitive_values(String) },
                        "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                        "payloadId" => lambda {|n| @payload_id = n.get_string_value() },
                        "skip" => lambda {|n| @skip = n.get_number_value() },
                        "top" => lambda {|n| @top = n.get_number_value() },
                        "userId" => lambda {|n| @user_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the managedDeviceId property value. The managedDeviceId property
                ## @return a string
                ## 
                def managed_device_id
                    return @managed_device_id
                end
                ## 
                ## Sets the managedDeviceId property value. The managedDeviceId property
                ## @param value Value to set for the managedDeviceId property.
                ## @return a void
                ## 
                def managed_device_id=(value)
                    @managed_device_id = value
                end
                ## 
                ## Gets the payloadId property value. The payloadId property
                ## @return a string
                ## 
                def payload_id
                    return @payload_id
                end
                ## 
                ## Sets the payloadId property value. The payloadId property
                ## @param value Value to set for the payloadId property.
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
                    writer.write_collection_of_primitive_values("assignmentFilterIds", @assignment_filter_ids)
                    writer.write_string_value("managedDeviceId", @managed_device_id)
                    writer.write_string_value("payloadId", @payload_id)
                    writer.write_number_value("skip", @skip)
                    writer.write_number_value("top", @top)
                    writer.write_string_value("userId", @user_id)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the skip property value. The skip property
                ## @return a integer
                ## 
                def skip
                    return @skip
                end
                ## 
                ## Sets the skip property value. The skip property
                ## @param value Value to set for the skip property.
                ## @return a void
                ## 
                def skip=(value)
                    @skip = value
                end
                ## 
                ## Gets the top property value. The top property
                ## @return a integer
                ## 
                def top
                    return @top
                end
                ## 
                ## Sets the top property value. The top property
                ## @param value Value to set for the top property.
                ## @return a void
                ## 
                def top=(value)
                    @top = value
                end
                ## 
                ## Gets the userId property value. The userId property
                ## @return a string
                ## 
                def user_id
                    return @user_id
                end
                ## 
                ## Sets the userId property value. The userId property
                ## @param value Value to set for the userId property.
                ## @return a void
                ## 
                def user_id=(value)
                    @user_id = value
                end
            end
        end
    end
end
