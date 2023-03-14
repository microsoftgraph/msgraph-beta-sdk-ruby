require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class ManagedTenantApiNotification < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The alert property
                @alert
                ## 
                # The createdByUserId property
                @created_by_user_id
                ## 
                # The createdDateTime property
                @created_date_time
                ## 
                # The isAcknowledged property
                @is_acknowledged
                ## 
                # The lastActionByUserId property
                @last_action_by_user_id
                ## 
                # The lastActionDateTime property
                @last_action_date_time
                ## 
                # The message property
                @message
                ## 
                # The title property
                @title
                ## 
                # The userId property
                @user_id
                ## 
                ## Gets the alert property value. The alert property
                ## @return a managed_tenant_alert
                ## 
                def alert
                    return @alert
                end
                ## 
                ## Sets the alert property value. The alert property
                ## @param value Value to set for the alert property.
                ## @return a void
                ## 
                def alert=(value)
                    @alert = value
                end
                ## 
                ## Instantiates a new managedTenantApiNotification and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the createdByUserId property value. The createdByUserId property
                ## @return a string
                ## 
                def created_by_user_id
                    return @created_by_user_id
                end
                ## 
                ## Sets the createdByUserId property value. The createdByUserId property
                ## @param value Value to set for the created_by_user_id property.
                ## @return a void
                ## 
                def created_by_user_id=(value)
                    @created_by_user_id = value
                end
                ## 
                ## Gets the createdDateTime property value. The createdDateTime property
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. The createdDateTime property
                ## @param value Value to set for the created_date_time property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a managed_tenant_api_notification
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ManagedTenantApiNotification.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "alert" => lambda {|n| @alert = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::ManagedTenantAlert.create_from_discriminator_value(pn) }) },
                        "createdByUserId" => lambda {|n| @created_by_user_id = n.get_string_value() },
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "isAcknowledged" => lambda {|n| @is_acknowledged = n.get_boolean_value() },
                        "lastActionByUserId" => lambda {|n| @last_action_by_user_id = n.get_string_value() },
                        "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                        "message" => lambda {|n| @message = n.get_string_value() },
                        "title" => lambda {|n| @title = n.get_string_value() },
                        "userId" => lambda {|n| @user_id = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the isAcknowledged property value. The isAcknowledged property
                ## @return a boolean
                ## 
                def is_acknowledged
                    return @is_acknowledged
                end
                ## 
                ## Sets the isAcknowledged property value. The isAcknowledged property
                ## @param value Value to set for the is_acknowledged property.
                ## @return a void
                ## 
                def is_acknowledged=(value)
                    @is_acknowledged = value
                end
                ## 
                ## Gets the lastActionByUserId property value. The lastActionByUserId property
                ## @return a string
                ## 
                def last_action_by_user_id
                    return @last_action_by_user_id
                end
                ## 
                ## Sets the lastActionByUserId property value. The lastActionByUserId property
                ## @param value Value to set for the last_action_by_user_id property.
                ## @return a void
                ## 
                def last_action_by_user_id=(value)
                    @last_action_by_user_id = value
                end
                ## 
                ## Gets the lastActionDateTime property value. The lastActionDateTime property
                ## @return a date_time
                ## 
                def last_action_date_time
                    return @last_action_date_time
                end
                ## 
                ## Sets the lastActionDateTime property value. The lastActionDateTime property
                ## @param value Value to set for the last_action_date_time property.
                ## @return a void
                ## 
                def last_action_date_time=(value)
                    @last_action_date_time = value
                end
                ## 
                ## Gets the message property value. The message property
                ## @return a string
                ## 
                def message
                    return @message
                end
                ## 
                ## Sets the message property value. The message property
                ## @param value Value to set for the message property.
                ## @return a void
                ## 
                def message=(value)
                    @message = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("alert", @alert)
                    writer.write_string_value("createdByUserId", @created_by_user_id)
                    writer.write_date_time_value("createdDateTime", @created_date_time)
                    writer.write_boolean_value("isAcknowledged", @is_acknowledged)
                    writer.write_string_value("lastActionByUserId", @last_action_by_user_id)
                    writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
                    writer.write_string_value("message", @message)
                    writer.write_string_value("title", @title)
                    writer.write_string_value("userId", @user_id)
                end
                ## 
                ## Gets the title property value. The title property
                ## @return a string
                ## 
                def title
                    return @title
                end
                ## 
                ## Sets the title property value. The title property
                ## @param value Value to set for the title property.
                ## @return a void
                ## 
                def title=(value)
                    @title = value
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
                ## @param value Value to set for the user_id property.
                ## @return a void
                ## 
                def user_id=(value)
                    @user_id = value
                end
            end
        end
    end
end
