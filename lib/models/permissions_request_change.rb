require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PermissionsRequestChange < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The status of the active occurence of the schedule if one exists. The possible values are: grantingFailed, granted, granting, revoked, revoking, revokingFailed, unknownFutureValue.
            @active_occurrence_status
            ## 
            # Time when the change occurred.
            @modification_date_time
            ## 
            # The ID of the scheduledPermissionsRequest object.
            @permissions_request_id
            ## 
            # The statusDetail property
            @status_detail
            ## 
            # Represents the ticketing system identifier.
            @ticket_id
            ## 
            ## Gets the activeOccurrenceStatus property value. The status of the active occurence of the schedule if one exists. The possible values are: grantingFailed, granted, granting, revoked, revoking, revokingFailed, unknownFutureValue.
            ## @return a permissions_request_change_active_occurrence_status
            ## 
            def active_occurrence_status
                return @active_occurrence_status
            end
            ## 
            ## Sets the activeOccurrenceStatus property value. The status of the active occurence of the schedule if one exists. The possible values are: grantingFailed, granted, granting, revoked, revoking, revokingFailed, unknownFutureValue.
            ## @param value Value to set for the activeOccurrenceStatus property.
            ## @return a void
            ## 
            def active_occurrence_status=(value)
                @active_occurrence_status = value
            end
            ## 
            ## Instantiates a new permissionsRequestChange and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a permissions_request_change
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PermissionsRequestChange.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeOccurrenceStatus" => lambda {|n| @active_occurrence_status = n.get_enum_value(MicrosoftGraphBeta::Models::PermissionsRequestChangeActiveOccurrenceStatus) },
                    "modificationDateTime" => lambda {|n| @modification_date_time = n.get_date_time_value() },
                    "permissionsRequestId" => lambda {|n| @permissions_request_id = n.get_string_value() },
                    "statusDetail" => lambda {|n| @status_detail = n.get_enum_value(MicrosoftGraphBeta::Models::StatusDetail) },
                    "ticketId" => lambda {|n| @ticket_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the modificationDateTime property value. Time when the change occurred.
            ## @return a date_time
            ## 
            def modification_date_time
                return @modification_date_time
            end
            ## 
            ## Sets the modificationDateTime property value. Time when the change occurred.
            ## @param value Value to set for the modificationDateTime property.
            ## @return a void
            ## 
            def modification_date_time=(value)
                @modification_date_time = value
            end
            ## 
            ## Gets the permissionsRequestId property value. The ID of the scheduledPermissionsRequest object.
            ## @return a string
            ## 
            def permissions_request_id
                return @permissions_request_id
            end
            ## 
            ## Sets the permissionsRequestId property value. The ID of the scheduledPermissionsRequest object.
            ## @param value Value to set for the permissionsRequestId property.
            ## @return a void
            ## 
            def permissions_request_id=(value)
                @permissions_request_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("activeOccurrenceStatus", @active_occurrence_status)
                writer.write_date_time_value("modificationDateTime", @modification_date_time)
                writer.write_string_value("permissionsRequestId", @permissions_request_id)
                writer.write_enum_value("statusDetail", @status_detail)
                writer.write_string_value("ticketId", @ticket_id)
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
            ## Gets the ticketId property value. Represents the ticketing system identifier.
            ## @return a string
            ## 
            def ticket_id
                return @ticket_id
            end
            ## 
            ## Sets the ticketId property value. Represents the ticketing system identifier.
            ## @param value Value to set for the ticketId property.
            ## @return a void
            ## 
            def ticket_id=(value)
                @ticket_id = value
            end
        end
    end
end
