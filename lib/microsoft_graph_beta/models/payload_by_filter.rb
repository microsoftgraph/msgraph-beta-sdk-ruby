require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # This entity represents a single payload with requested assignment filter Id
    class PayloadByFilter
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Represents type of the assignment filter.
        @assignment_filter_type
        ## 
        # The Azure AD security group ID
        @group_id
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The policy identifier
        @payload_id
        ## 
        # This enum represents associated assignment payload type
        @payload_type
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
        ## Gets the assignmentFilterType property value. Represents type of the assignment filter.
        ## @return a device_and_app_management_assignment_filter_type
        ## 
        def assignment_filter_type
            return @assignment_filter_type
        end
        ## 
        ## Sets the assignmentFilterType property value. Represents type of the assignment filter.
        ## @param value Value to set for the assignmentFilterType property.
        ## @return a void
        ## 
        def assignment_filter_type=(value)
            @assignment_filter_type = value
        end
        ## 
        ## Instantiates a new payloadByFilter and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a payload_by_filter
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PayloadByFilter.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "assignmentFilterType" => lambda {|n| @assignment_filter_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentFilterType) },
                "groupId" => lambda {|n| @group_id = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "payloadId" => lambda {|n| @payload_id = n.get_string_value() },
                "payloadType" => lambda {|n| @payload_type = n.get_enum_value(MicrosoftGraphBeta::Models::AssociatedAssignmentPayloadType) },
            }
        end
        ## 
        ## Gets the groupId property value. The Azure AD security group ID
        ## @return a string
        ## 
        def group_id
            return @group_id
        end
        ## 
        ## Sets the groupId property value. The Azure AD security group ID
        ## @param value Value to set for the groupId property.
        ## @return a void
        ## 
        def group_id=(value)
            @group_id = value
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the payloadId property value. The policy identifier
        ## @return a string
        ## 
        def payload_id
            return @payload_id
        end
        ## 
        ## Sets the payloadId property value. The policy identifier
        ## @param value Value to set for the payloadId property.
        ## @return a void
        ## 
        def payload_id=(value)
            @payload_id = value
        end
        ## 
        ## Gets the payloadType property value. This enum represents associated assignment payload type
        ## @return a associated_assignment_payload_type
        ## 
        def payload_type
            return @payload_type
        end
        ## 
        ## Sets the payloadType property value. This enum represents associated assignment payload type
        ## @param value Value to set for the payloadType property.
        ## @return a void
        ## 
        def payload_type=(value)
            @payload_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_enum_value("assignmentFilterType", @assignment_filter_type)
            writer.write_string_value("groupId", @group_id)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("payloadId", @payload_id)
            writer.write_enum_value("payloadType", @payload_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
