require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NotifyUserAction < MicrosoftGraphBeta::Models::DlpActionInfo
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The actionLastModifiedDateTime property
            @action_last_modified_date_time
            ## 
            # The emailText property
            @email_text
            ## 
            # The policyTip property
            @policy_tip
            ## 
            # The recipients property
            @recipients
            ## 
            ## Gets the actionLastModifiedDateTime property value. The actionLastModifiedDateTime property
            ## @return a date_time
            ## 
            def action_last_modified_date_time
                return @action_last_modified_date_time
            end
            ## 
            ## Sets the actionLastModifiedDateTime property value. The actionLastModifiedDateTime property
            ## @param value Value to set for the action_last_modified_date_time property.
            ## @return a void
            ## 
            def action_last_modified_date_time=(value)
                @action_last_modified_date_time = value
            end
            ## 
            ## Instantiates a new NotifyUserAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a notify_user_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NotifyUserAction.new
            end
            ## 
            ## Gets the emailText property value. The emailText property
            ## @return a string
            ## 
            def email_text
                return @email_text
            end
            ## 
            ## Sets the emailText property value. The emailText property
            ## @param value Value to set for the email_text property.
            ## @return a void
            ## 
            def email_text=(value)
                @email_text = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionLastModifiedDateTime" => lambda {|n| @action_last_modified_date_time = n.get_date_time_value() },
                    "emailText" => lambda {|n| @email_text = n.get_string_value() },
                    "policyTip" => lambda {|n| @policy_tip = n.get_string_value() },
                    "recipients" => lambda {|n| @recipients = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the policyTip property value. The policyTip property
            ## @return a string
            ## 
            def policy_tip
                return @policy_tip
            end
            ## 
            ## Sets the policyTip property value. The policyTip property
            ## @param value Value to set for the policy_tip property.
            ## @return a void
            ## 
            def policy_tip=(value)
                @policy_tip = value
            end
            ## 
            ## Gets the recipients property value. The recipients property
            ## @return a string
            ## 
            def recipients
                return @recipients
            end
            ## 
            ## Sets the recipients property value. The recipients property
            ## @param value Value to set for the recipients property.
            ## @return a void
            ## 
            def recipients=(value)
                @recipients = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("actionLastModifiedDateTime", @action_last_modified_date_time)
                writer.write_string_value("emailText", @email_text)
                writer.write_string_value("policyTip", @policy_tip)
                writer.write_collection_of_primitive_values("recipients", @recipients)
            end
        end
    end
end
