require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Event representing an general failure.
        class DeviceManagementTroubleshootingEvent < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A set of string key and string value pairs which provides additional information on the Troubleshooting event
            @additional_information
            ## 
            # Id used for tracing the failure in the service.
            @correlation_id
            ## 
            # Time when the event occurred .
            @event_date_time
            ## 
            # Event Name corresponding to the Troubleshooting Event. It is an Optional field
            @event_name
            ## 
            # Object containing detailed information about the error and its remediation.
            @troubleshooting_error_details
            ## 
            ## Gets the additionalInformation property value. A set of string key and string value pairs which provides additional information on the Troubleshooting event
            ## @return a key_value_pair
            ## 
            def additional_information
                return @additional_information
            end
            ## 
            ## Sets the additionalInformation property value. A set of string key and string value pairs which provides additional information on the Troubleshooting event
            ## @param value Value to set for the additional_information property.
            ## @return a void
            ## 
            def additional_information=(value)
                @additional_information = value
            end
            ## 
            ## Instantiates a new deviceManagementTroubleshootingEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the correlationId property value. Id used for tracing the failure in the service.
            ## @return a string
            ## 
            def correlation_id
                return @correlation_id
            end
            ## 
            ## Sets the correlationId property value. Id used for tracing the failure in the service.
            ## @param value Value to set for the correlation_id property.
            ## @return a void
            ## 
            def correlation_id=(value)
                @correlation_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_troubleshooting_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.appleVppTokenTroubleshootingEvent"
                            return AppleVppTokenTroubleshootingEvent.new
                        when "#microsoft.graph.enrollmentTroubleshootingEvent"
                            return EnrollmentTroubleshootingEvent.new
                        when "#microsoft.graph.mobileAppTroubleshootingEvent"
                            return MobileAppTroubleshootingEvent.new
                    end
                end
                return DeviceManagementTroubleshootingEvent.new
            end
            ## 
            ## Gets the eventDateTime property value. Time when the event occurred .
            ## @return a date_time
            ## 
            def event_date_time
                return @event_date_time
            end
            ## 
            ## Sets the eventDateTime property value. Time when the event occurred .
            ## @param value Value to set for the event_date_time property.
            ## @return a void
            ## 
            def event_date_time=(value)
                @event_date_time = value
            end
            ## 
            ## Gets the eventName property value. Event Name corresponding to the Troubleshooting Event. It is an Optional field
            ## @return a string
            ## 
            def event_name
                return @event_name
            end
            ## 
            ## Sets the eventName property value. Event Name corresponding to the Troubleshooting Event. It is an Optional field
            ## @param value Value to set for the event_name property.
            ## @return a void
            ## 
            def event_name=(value)
                @event_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "additionalInformation" => lambda {|n| @additional_information = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "correlationId" => lambda {|n| @correlation_id = n.get_string_value() },
                    "eventDateTime" => lambda {|n| @event_date_time = n.get_date_time_value() },
                    "eventName" => lambda {|n| @event_name = n.get_string_value() },
                    "troubleshootingErrorDetails" => lambda {|n| @troubleshooting_error_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementTroubleshootingErrorDetails.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("additionalInformation", @additional_information)
                writer.write_string_value("correlationId", @correlation_id)
                writer.write_date_time_value("eventDateTime", @event_date_time)
                writer.write_string_value("eventName", @event_name)
                writer.write_object_value("troubleshootingErrorDetails", @troubleshooting_error_details)
            end
            ## 
            ## Gets the troubleshootingErrorDetails property value. Object containing detailed information about the error and its remediation.
            ## @return a device_management_troubleshooting_error_details
            ## 
            def troubleshooting_error_details
                return @troubleshooting_error_details
            end
            ## 
            ## Sets the troubleshootingErrorDetails property value. Object containing detailed information about the error and its remediation.
            ## @param value Value to set for the troubleshooting_error_details property.
            ## @return a void
            ## 
            def troubleshooting_error_details=(value)
                @troubleshooting_error_details = value
            end
        end
    end
end
