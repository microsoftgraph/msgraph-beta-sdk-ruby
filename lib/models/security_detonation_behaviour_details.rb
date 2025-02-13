require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityDetonationBehaviourDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The actionStatus property
            @action_status
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The behaviourCapability property
            @behaviour_capability
            ## 
            # The behaviourGroup property
            @behaviour_group
            ## 
            # The details property
            @details
            ## 
            # The eventDateTime property
            @event_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The operation property
            @operation
            ## 
            # The processId property
            @process_id
            ## 
            # The processName property
            @process_name
            ## 
            # The target property
            @target
            ## 
            ## Gets the actionStatus property value. The actionStatus property
            ## @return a string
            ## 
            def action_status
                return @action_status
            end
            ## 
            ## Sets the actionStatus property value. The actionStatus property
            ## @param value Value to set for the actionStatus property.
            ## @return a void
            ## 
            def action_status=(value)
                @action_status = value
            end
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
            ## Gets the behaviourCapability property value. The behaviourCapability property
            ## @return a string
            ## 
            def behaviour_capability
                return @behaviour_capability
            end
            ## 
            ## Sets the behaviourCapability property value. The behaviourCapability property
            ## @param value Value to set for the behaviourCapability property.
            ## @return a void
            ## 
            def behaviour_capability=(value)
                @behaviour_capability = value
            end
            ## 
            ## Gets the behaviourGroup property value. The behaviourGroup property
            ## @return a string
            ## 
            def behaviour_group
                return @behaviour_group
            end
            ## 
            ## Sets the behaviourGroup property value. The behaviourGroup property
            ## @param value Value to set for the behaviourGroup property.
            ## @return a void
            ## 
            def behaviour_group=(value)
                @behaviour_group = value
            end
            ## 
            ## Instantiates a new SecurityDetonationBehaviourDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_detonation_behaviour_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityDetonationBehaviourDetails.new
            end
            ## 
            ## Gets the details property value. The details property
            ## @return a string
            ## 
            def details
                return @details
            end
            ## 
            ## Sets the details property value. The details property
            ## @param value Value to set for the details property.
            ## @return a void
            ## 
            def details=(value)
                @details = value
            end
            ## 
            ## Gets the eventDateTime property value. The eventDateTime property
            ## @return a date_time
            ## 
            def event_date_time
                return @event_date_time
            end
            ## 
            ## Sets the eventDateTime property value. The eventDateTime property
            ## @param value Value to set for the eventDateTime property.
            ## @return a void
            ## 
            def event_date_time=(value)
                @event_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "actionStatus" => lambda {|n| @action_status = n.get_string_value() },
                    "behaviourCapability" => lambda {|n| @behaviour_capability = n.get_string_value() },
                    "behaviourGroup" => lambda {|n| @behaviour_group = n.get_string_value() },
                    "details" => lambda {|n| @details = n.get_string_value() },
                    "eventDateTime" => lambda {|n| @event_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operation" => lambda {|n| @operation = n.get_string_value() },
                    "processId" => lambda {|n| @process_id = n.get_string_value() },
                    "processName" => lambda {|n| @process_name = n.get_string_value() },
                    "target" => lambda {|n| @target = n.get_string_value() },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the operation property value. The operation property
            ## @return a string
            ## 
            def operation
                return @operation
            end
            ## 
            ## Sets the operation property value. The operation property
            ## @param value Value to set for the operation property.
            ## @return a void
            ## 
            def operation=(value)
                @operation = value
            end
            ## 
            ## Gets the processId property value. The processId property
            ## @return a string
            ## 
            def process_id
                return @process_id
            end
            ## 
            ## Sets the processId property value. The processId property
            ## @param value Value to set for the processId property.
            ## @return a void
            ## 
            def process_id=(value)
                @process_id = value
            end
            ## 
            ## Gets the processName property value. The processName property
            ## @return a string
            ## 
            def process_name
                return @process_name
            end
            ## 
            ## Sets the processName property value. The processName property
            ## @param value Value to set for the processName property.
            ## @return a void
            ## 
            def process_name=(value)
                @process_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("actionStatus", @action_status)
                writer.write_string_value("behaviourCapability", @behaviour_capability)
                writer.write_string_value("behaviourGroup", @behaviour_group)
                writer.write_string_value("details", @details)
                writer.write_date_time_value("eventDateTime", @event_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("operation", @operation)
                writer.write_string_value("processId", @process_id)
                writer.write_string_value("processName", @process_name)
                writer.write_string_value("target", @target)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the target property value. The target property
            ## @return a string
            ## 
            def target
                return @target
            end
            ## 
            ## Sets the target property value. The target property
            ## @param value Value to set for the target property.
            ## @return a void
            ## 
            def target=(value)
                @target = value
            end
        end
    end
end
