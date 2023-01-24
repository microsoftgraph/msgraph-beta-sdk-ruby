require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../privileged_role_assignments'
require_relative '../../item'
require_relative '../role_info'
require_relative './self_activate'

module MicrosoftGraphBeta::PrivilegedRoleAssignments::Item::RoleInfo::SelfActivate
    class SelfActivatePostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The duration property
        @duration
        ## 
        # The reason property
        @reason
        ## 
        # The ticketNumber property
        @ticket_number
        ## 
        # The ticketSystem property
        @ticket_system
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
        ## Instantiates a new selfActivatePostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a self_activate_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return SelfActivatePostRequestBody.new
        end
        ## 
        ## Gets the duration property value. The duration property
        ## @return a string
        ## 
        def duration
            return @duration
        end
        ## 
        ## Sets the duration property value. The duration property
        ## @param value Value to set for the duration property.
        ## @return a void
        ## 
        def duration=(value)
            @duration = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "duration" => lambda {|n| @duration = n.get_string_value() },
                "reason" => lambda {|n| @reason = n.get_string_value() },
                "ticketNumber" => lambda {|n| @ticket_number = n.get_string_value() },
                "ticketSystem" => lambda {|n| @ticket_system = n.get_string_value() },
            }
        end
        ## 
        ## Gets the reason property value. The reason property
        ## @return a string
        ## 
        def reason
            return @reason
        end
        ## 
        ## Sets the reason property value. The reason property
        ## @param value Value to set for the reason property.
        ## @return a void
        ## 
        def reason=(value)
            @reason = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("duration", @duration)
            writer.write_string_value("reason", @reason)
            writer.write_string_value("ticketNumber", @ticket_number)
            writer.write_string_value("ticketSystem", @ticket_system)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the ticketNumber property value. The ticketNumber property
        ## @return a string
        ## 
        def ticket_number
            return @ticket_number
        end
        ## 
        ## Sets the ticketNumber property value. The ticketNumber property
        ## @param value Value to set for the ticketNumber property.
        ## @return a void
        ## 
        def ticket_number=(value)
            @ticket_number = value
        end
        ## 
        ## Gets the ticketSystem property value. The ticketSystem property
        ## @return a string
        ## 
        def ticket_system
            return @ticket_system
        end
        ## 
        ## Sets the ticketSystem property value. The ticketSystem property
        ## @param value Value to set for the ticketSystem property.
        ## @return a void
        ## 
        def ticket_system=(value)
            @ticket_system = value
        end
    end
end
