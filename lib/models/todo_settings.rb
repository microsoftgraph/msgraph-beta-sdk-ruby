require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TodoSettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Controls whether users can join lists from users external to your organization.
            @is_external_join_enabled
            ## 
            # Controls whether users can share lists with external users.
            @is_external_share_enabled
            ## 
            # Controls whether push notifications are enabled for your users.
            @is_push_notification_enabled
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new TodoSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a todo_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TodoSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isExternalJoinEnabled" => lambda {|n| @is_external_join_enabled = n.get_boolean_value() },
                    "isExternalShareEnabled" => lambda {|n| @is_external_share_enabled = n.get_boolean_value() },
                    "isPushNotificationEnabled" => lambda {|n| @is_push_notification_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isExternalJoinEnabled property value. Controls whether users can join lists from users external to your organization.
            ## @return a boolean
            ## 
            def is_external_join_enabled
                return @is_external_join_enabled
            end
            ## 
            ## Sets the isExternalJoinEnabled property value. Controls whether users can join lists from users external to your organization.
            ## @param value Value to set for the isExternalJoinEnabled property.
            ## @return a void
            ## 
            def is_external_join_enabled=(value)
                @is_external_join_enabled = value
            end
            ## 
            ## Gets the isExternalShareEnabled property value. Controls whether users can share lists with external users.
            ## @return a boolean
            ## 
            def is_external_share_enabled
                return @is_external_share_enabled
            end
            ## 
            ## Sets the isExternalShareEnabled property value. Controls whether users can share lists with external users.
            ## @param value Value to set for the isExternalShareEnabled property.
            ## @return a void
            ## 
            def is_external_share_enabled=(value)
                @is_external_share_enabled = value
            end
            ## 
            ## Gets the isPushNotificationEnabled property value. Controls whether push notifications are enabled for your users.
            ## @return a boolean
            ## 
            def is_push_notification_enabled
                return @is_push_notification_enabled
            end
            ## 
            ## Sets the isPushNotificationEnabled property value. Controls whether push notifications are enabled for your users.
            ## @param value Value to set for the isPushNotificationEnabled property.
            ## @return a void
            ## 
            def is_push_notification_enabled=(value)
                @is_push_notification_enabled = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("isExternalJoinEnabled", @is_external_join_enabled)
                writer.write_boolean_value("isExternalShareEnabled", @is_external_share_enabled)
                writer.write_boolean_value("isPushNotificationEnabled", @is_push_notification_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
