require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DelegateAllowedActions
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The joinActiveCalls property
            @join_active_calls
            ## 
            # The makeCalls property
            @make_calls
            ## 
            # The manageCallAndDelegateSettings property
            @manage_call_and_delegate_settings
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The pickUpHeldCalls property
            @pick_up_held_calls
            ## 
            # The receiveCalls property
            @receive_calls
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
            ## Instantiates a new DelegateAllowedActions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a delegate_allowed_actions
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DelegateAllowedActions.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "joinActiveCalls" => lambda {|n| @join_active_calls = n.get_boolean_value() },
                    "makeCalls" => lambda {|n| @make_calls = n.get_boolean_value() },
                    "manageCallAndDelegateSettings" => lambda {|n| @manage_call_and_delegate_settings = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "pickUpHeldCalls" => lambda {|n| @pick_up_held_calls = n.get_boolean_value() },
                    "receiveCalls" => lambda {|n| @receive_calls = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the joinActiveCalls property value. The joinActiveCalls property
            ## @return a boolean
            ## 
            def join_active_calls
                return @join_active_calls
            end
            ## 
            ## Sets the joinActiveCalls property value. The joinActiveCalls property
            ## @param value Value to set for the joinActiveCalls property.
            ## @return a void
            ## 
            def join_active_calls=(value)
                @join_active_calls = value
            end
            ## 
            ## Gets the makeCalls property value. The makeCalls property
            ## @return a boolean
            ## 
            def make_calls
                return @make_calls
            end
            ## 
            ## Sets the makeCalls property value. The makeCalls property
            ## @param value Value to set for the makeCalls property.
            ## @return a void
            ## 
            def make_calls=(value)
                @make_calls = value
            end
            ## 
            ## Gets the manageCallAndDelegateSettings property value. The manageCallAndDelegateSettings property
            ## @return a boolean
            ## 
            def manage_call_and_delegate_settings
                return @manage_call_and_delegate_settings
            end
            ## 
            ## Sets the manageCallAndDelegateSettings property value. The manageCallAndDelegateSettings property
            ## @param value Value to set for the manageCallAndDelegateSettings property.
            ## @return a void
            ## 
            def manage_call_and_delegate_settings=(value)
                @manage_call_and_delegate_settings = value
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
            ## Gets the pickUpHeldCalls property value. The pickUpHeldCalls property
            ## @return a boolean
            ## 
            def pick_up_held_calls
                return @pick_up_held_calls
            end
            ## 
            ## Sets the pickUpHeldCalls property value. The pickUpHeldCalls property
            ## @param value Value to set for the pickUpHeldCalls property.
            ## @return a void
            ## 
            def pick_up_held_calls=(value)
                @pick_up_held_calls = value
            end
            ## 
            ## Gets the receiveCalls property value. The receiveCalls property
            ## @return a boolean
            ## 
            def receive_calls
                return @receive_calls
            end
            ## 
            ## Sets the receiveCalls property value. The receiveCalls property
            ## @param value Value to set for the receiveCalls property.
            ## @return a void
            ## 
            def receive_calls=(value)
                @receive_calls = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("joinActiveCalls", @join_active_calls)
                writer.write_boolean_value("makeCalls", @make_calls)
                writer.write_boolean_value("manageCallAndDelegateSettings", @manage_call_and_delegate_settings)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("pickUpHeldCalls", @pick_up_held_calls)
                writer.write_boolean_value("receiveCalls", @receive_calls)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
