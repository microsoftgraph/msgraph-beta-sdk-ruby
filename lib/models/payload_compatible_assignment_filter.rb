require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A class containing the properties used for Payload Compatible Assignment Filter.
        class PayloadCompatibleAssignmentFilter < MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentFilter
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the payload type AssignmentFilter is being assigned to.
            @payload_type
            ## 
            ## Instantiates a new payloadCompatibleAssignmentFilter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.payloadCompatibleAssignmentFilter"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a payload_compatible_assignment_filter
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PayloadCompatibleAssignmentFilter.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "payloadType" => lambda {|n| @payload_type = n.get_enum_value(MicrosoftGraphBeta::Models::AssignmentFilterPayloadType) },
                })
            end
            ## 
            ## Gets the payloadType property value. Represents the payload type AssignmentFilter is being assigned to.
            ## @return a assignment_filter_payload_type
            ## 
            def payload_type
                return @payload_type
            end
            ## 
            ## Sets the payloadType property value. Represents the payload type AssignmentFilter is being assigned to.
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
                super
                writer.write_enum_value("payloadType", @payload_type)
            end
        end
    end
end
