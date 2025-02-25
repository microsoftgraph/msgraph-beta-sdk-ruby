require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OnPhoneMethodLoadStartExternalUsersAuthHandler < MicrosoftGraphBeta::Models::OnPhoneMethodLoadStartHandler
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The smsOptions property
            @sms_options
            ## 
            # The voiceOptions property
            @voice_options
            ## 
            ## Instantiates a new OnPhoneMethodLoadStartExternalUsersAuthHandler and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_phone_method_load_start_external_users_auth_handler
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPhoneMethodLoadStartExternalUsersAuthHandler.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "smsOptions" => lambda {|n| @sms_options = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PhoneOptions.create_from_discriminator_value(pn) }) },
                    "voiceOptions" => lambda {|n| @voice_options = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PhoneOptions.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("smsOptions", @sms_options)
                writer.write_object_value("voiceOptions", @voice_options)
            end
            ## 
            ## Gets the smsOptions property value. The smsOptions property
            ## @return a phone_options
            ## 
            def sms_options
                return @sms_options
            end
            ## 
            ## Sets the smsOptions property value. The smsOptions property
            ## @param value Value to set for the smsOptions property.
            ## @return a void
            ## 
            def sms_options=(value)
                @sms_options = value
            end
            ## 
            ## Gets the voiceOptions property value. The voiceOptions property
            ## @return a phone_options
            ## 
            def voice_options
                return @voice_options
            end
            ## 
            ## Sets the voiceOptions property value. The voiceOptions property
            ## @param value Value to set for the voiceOptions property.
            ## @return a void
            ## 
            def voice_options=(value)
                @voice_options = value
            end
        end
    end
end
