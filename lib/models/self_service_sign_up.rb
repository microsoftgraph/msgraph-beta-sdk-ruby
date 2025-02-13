require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SelfServiceSignUp < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The appDisplayName property
            @app_display_name
            ## 
            # The appId property
            @app_id
            ## 
            # The appliedEventListeners property
            @applied_event_listeners
            ## 
            # The correlationId property
            @correlation_id
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The signUpIdentity property
            @sign_up_identity
            ## 
            # The signUpIdentityProvider property
            @sign_up_identity_provider
            ## 
            # The signUpStage property
            @sign_up_stage
            ## 
            # The status property
            @status
            ## 
            # The userSnapshot property
            @user_snapshot
            ## 
            ## Gets the appDisplayName property value. The appDisplayName property
            ## @return a string
            ## 
            def app_display_name
                return @app_display_name
            end
            ## 
            ## Sets the appDisplayName property value. The appDisplayName property
            ## @param value Value to set for the appDisplayName property.
            ## @return a void
            ## 
            def app_display_name=(value)
                @app_display_name = value
            end
            ## 
            ## Gets the appId property value. The appId property
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The appId property
            ## @param value Value to set for the appId property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Gets the appliedEventListeners property value. The appliedEventListeners property
            ## @return a applied_authentication_event_listener
            ## 
            def applied_event_listeners
                return @applied_event_listeners
            end
            ## 
            ## Sets the appliedEventListeners property value. The appliedEventListeners property
            ## @param value Value to set for the appliedEventListeners property.
            ## @return a void
            ## 
            def applied_event_listeners=(value)
                @applied_event_listeners = value
            end
            ## 
            ## Instantiates a new SelfServiceSignUp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the correlationId property value. The correlationId property
            ## @return a string
            ## 
            def correlation_id
                return @correlation_id
            end
            ## 
            ## Sets the correlationId property value. The correlationId property
            ## @param value Value to set for the correlationId property.
            ## @return a void
            ## 
            def correlation_id=(value)
                @correlation_id = value
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
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a self_service_sign_up
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SelfServiceSignUp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "appliedEventListeners" => lambda {|n| @applied_event_listeners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppliedAuthenticationEventListener.create_from_discriminator_value(pn) }) },
                    "correlationId" => lambda {|n| @correlation_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "signUpIdentity" => lambda {|n| @sign_up_identity = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SignUpIdentity.create_from_discriminator_value(pn) }) },
                    "signUpIdentityProvider" => lambda {|n| @sign_up_identity_provider = n.get_string_value() },
                    "signUpStage" => lambda {|n| @sign_up_stage = n.get_enum_value(MicrosoftGraphBeta::Models::SignUpStage) },
                    "status" => lambda {|n| @status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SignUpStatus.create_from_discriminator_value(pn) }) },
                    "userSnapshot" => lambda {|n| @user_snapshot = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CiamUserSnapshot.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("appDisplayName", @app_display_name)
                writer.write_string_value("appId", @app_id)
                writer.write_collection_of_object_values("appliedEventListeners", @applied_event_listeners)
                writer.write_string_value("correlationId", @correlation_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("signUpIdentity", @sign_up_identity)
                writer.write_string_value("signUpIdentityProvider", @sign_up_identity_provider)
                writer.write_enum_value("signUpStage", @sign_up_stage)
                writer.write_object_value("status", @status)
                writer.write_object_value("userSnapshot", @user_snapshot)
            end
            ## 
            ## Gets the signUpIdentity property value. The signUpIdentity property
            ## @return a sign_up_identity
            ## 
            def sign_up_identity
                return @sign_up_identity
            end
            ## 
            ## Sets the signUpIdentity property value. The signUpIdentity property
            ## @param value Value to set for the signUpIdentity property.
            ## @return a void
            ## 
            def sign_up_identity=(value)
                @sign_up_identity = value
            end
            ## 
            ## Gets the signUpIdentityProvider property value. The signUpIdentityProvider property
            ## @return a string
            ## 
            def sign_up_identity_provider
                return @sign_up_identity_provider
            end
            ## 
            ## Sets the signUpIdentityProvider property value. The signUpIdentityProvider property
            ## @param value Value to set for the signUpIdentityProvider property.
            ## @return a void
            ## 
            def sign_up_identity_provider=(value)
                @sign_up_identity_provider = value
            end
            ## 
            ## Gets the signUpStage property value. The signUpStage property
            ## @return a sign_up_stage
            ## 
            def sign_up_stage
                return @sign_up_stage
            end
            ## 
            ## Sets the signUpStage property value. The signUpStage property
            ## @param value Value to set for the signUpStage property.
            ## @return a void
            ## 
            def sign_up_stage=(value)
                @sign_up_stage = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a sign_up_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the userSnapshot property value. The userSnapshot property
            ## @return a ciam_user_snapshot
            ## 
            def user_snapshot
                return @user_snapshot
            end
            ## 
            ## Sets the userSnapshot property value. The userSnapshot property
            ## @param value Value to set for the userSnapshot property.
            ## @return a void
            ## 
            def user_snapshot=(value)
                @user_snapshot = value
            end
        end
    end
end
