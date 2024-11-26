require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RequestActivity
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The action property
            @action
            ## 
            # The actionDateTime property
            @action_date_time
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The detail property
            @detail
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The scheduledDateTime property
            @scheduled_date_time
            ## 
            # The userDisplayName property
            @user_display_name
            ## 
            # The userPrincipalName property
            @user_principal_name
            ## 
            ## Gets the action property value. The action property
            ## @return a string
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
            ## Gets the actionDateTime property value. The actionDateTime property
            ## @return a date_time
            ## 
            def action_date_time
                return @action_date_time
            end
            ## 
            ## Sets the actionDateTime property value. The actionDateTime property
            ## @param value Value to set for the actionDateTime property.
            ## @return a void
            ## 
            def action_date_time=(value)
                @action_date_time = value
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
            ## Instantiates a new RequestActivity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a request_activity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RequestActivity.new
            end
            ## 
            ## Gets the detail property value. The detail property
            ## @return a string
            ## 
            def detail
                return @detail
            end
            ## 
            ## Sets the detail property value. The detail property
            ## @param value Value to set for the detail property.
            ## @return a void
            ## 
            def detail=(value)
                @detail = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "action" => lambda {|n| @action = n.get_string_value() },
                    "actionDateTime" => lambda {|n| @action_date_time = n.get_date_time_value() },
                    "detail" => lambda {|n| @detail = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "scheduledDateTime" => lambda {|n| @scheduled_date_time = n.get_date_time_value() },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
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
            ## Gets the scheduledDateTime property value. The scheduledDateTime property
            ## @return a date_time
            ## 
            def scheduled_date_time
                return @scheduled_date_time
            end
            ## 
            ## Sets the scheduledDateTime property value. The scheduledDateTime property
            ## @param value Value to set for the scheduledDateTime property.
            ## @return a void
            ## 
            def scheduled_date_time=(value)
                @scheduled_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("action", @action)
                writer.write_date_time_value("actionDateTime", @action_date_time)
                writer.write_string_value("detail", @detail)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("scheduledDateTime", @scheduled_date_time)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userDisplayName property value. The userDisplayName property
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. The userDisplayName property
            ## @param value Value to set for the userDisplayName property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userPrincipalName property value. The userPrincipalName property
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The userPrincipalName property
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
