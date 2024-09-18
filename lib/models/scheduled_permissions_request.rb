require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ScheduledPermissionsRequest < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The action property
            @action
            ## 
            # Defines when the identity created the request.
            @created_date_time
            ## 
            # The identity's justification for the request.
            @justification
            ## 
            # Additional context for the permissions request.
            @notes
            ## 
            # The requestedPermissions property
            @requested_permissions
            ## 
            # When to assign the requested permissions.
            @schedule_info
            ## 
            # The statusDetail property
            @status_detail
            ## 
            # Ticketing-related metadata that you can use to correlate to the request.
            @ticket_info
            ## 
            ## Gets the action property value. The action property
            ## @return a unified_role_schedule_request_actions
            ## 
            def action
                return @action
            end
            ## 
            ## Sets the action property value. The action property
            ## @param value Value to set for the action property.
            ## @return a void
            ## 
            def action=(value)
                @action = value
            end
            ## 
            ## Instantiates a new ScheduledPermissionsRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Defines when the identity created the request.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Defines when the identity created the request.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a scheduled_permissions_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ScheduledPermissionsRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraphBeta::Models::UnifiedRoleScheduleRequestActions) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "justification" => lambda {|n| @justification = n.get_string_value() },
                    "notes" => lambda {|n| @notes = n.get_string_value() },
                    "requestedPermissions" => lambda {|n| @requested_permissions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsDefinition.create_from_discriminator_value(pn) }) },
                    "scheduleInfo" => lambda {|n| @schedule_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RequestSchedule.create_from_discriminator_value(pn) }) },
                    "statusDetail" => lambda {|n| @status_detail = n.get_enum_value(MicrosoftGraphBeta::Models::StatusDetail) },
                    "ticketInfo" => lambda {|n| @ticket_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TicketInfo.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the justification property value. The identity's justification for the request.
            ## @return a string
            ## 
            def justification
                return @justification
            end
            ## 
            ## Sets the justification property value. The identity's justification for the request.
            ## @param value Value to set for the justification property.
            ## @return a void
            ## 
            def justification=(value)
                @justification = value
            end
            ## 
            ## Gets the notes property value. Additional context for the permissions request.
            ## @return a string
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. Additional context for the permissions request.
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
            end
            ## 
            ## Gets the requestedPermissions property value. The requestedPermissions property
            ## @return a permissions_definition
            ## 
            def requested_permissions
                return @requested_permissions
            end
            ## 
            ## Sets the requestedPermissions property value. The requestedPermissions property
            ## @param value Value to set for the requestedPermissions property.
            ## @return a void
            ## 
            def requested_permissions=(value)
                @requested_permissions = value
            end
            ## 
            ## Gets the scheduleInfo property value. When to assign the requested permissions.
            ## @return a request_schedule
            ## 
            def schedule_info
                return @schedule_info
            end
            ## 
            ## Sets the scheduleInfo property value. When to assign the requested permissions.
            ## @param value Value to set for the scheduleInfo property.
            ## @return a void
            ## 
            def schedule_info=(value)
                @schedule_info = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("action", @action)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("justification", @justification)
                writer.write_string_value("notes", @notes)
                writer.write_object_value("requestedPermissions", @requested_permissions)
                writer.write_object_value("scheduleInfo", @schedule_info)
                writer.write_enum_value("statusDetail", @status_detail)
                writer.write_object_value("ticketInfo", @ticket_info)
            end
            ## 
            ## Gets the statusDetail property value. The statusDetail property
            ## @return a status_detail
            ## 
            def status_detail
                return @status_detail
            end
            ## 
            ## Sets the statusDetail property value. The statusDetail property
            ## @param value Value to set for the statusDetail property.
            ## @return a void
            ## 
            def status_detail=(value)
                @status_detail = value
            end
            ## 
            ## Gets the ticketInfo property value. Ticketing-related metadata that you can use to correlate to the request.
            ## @return a ticket_info
            ## 
            def ticket_info
                return @ticket_info
            end
            ## 
            ## Sets the ticketInfo property value. Ticketing-related metadata that you can use to correlate to the request.
            ## @param value Value to set for the ticketInfo property.
            ## @return a void
            ## 
            def ticket_info=(value)
                @ticket_info = value
            end
        end
    end
end
