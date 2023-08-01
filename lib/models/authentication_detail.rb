require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AuthenticationDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The type of authentication method used to perform this step of authentication. Possible values: Password, SMS, Voice, Authenticator App, Software OATH token, Satisfied by token, Previously satisfied.
            @authentication_method
            ## 
            # Details about the authentication method used to perform this authentication step. For example, phone number (for SMS and voice), device name (for Authenticator app), and password source (e.g. cloud, AD FS, PTA, PHS).
            @authentication_method_detail
            ## 
            # Represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @authentication_step_date_time
            ## 
            # The step of authentication that this satisfied. For example, primary authentication, or multi-factor authentication.
            @authentication_step_requirement
            ## 
            # Details about why the step succeeded or failed. For examples, user is blocked, fraud code entered, no phone input - timed out, phone unreachable, or claim in token.
            @authentication_step_result_detail
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates the status of the authentication step. Possible values: succeeded, failed.
            @succeeded
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the authenticationMethod property value. The type of authentication method used to perform this step of authentication. Possible values: Password, SMS, Voice, Authenticator App, Software OATH token, Satisfied by token, Previously satisfied.
            ## @return a string
            ## 
            def authentication_method
                return @authentication_method
            end
            ## 
            ## Sets the authenticationMethod property value. The type of authentication method used to perform this step of authentication. Possible values: Password, SMS, Voice, Authenticator App, Software OATH token, Satisfied by token, Previously satisfied.
            ## @param value Value to set for the authenticationMethod property.
            ## @return a void
            ## 
            def authentication_method=(value)
                @authentication_method = value
            end
            ## 
            ## Gets the authenticationMethodDetail property value. Details about the authentication method used to perform this authentication step. For example, phone number (for SMS and voice), device name (for Authenticator app), and password source (e.g. cloud, AD FS, PTA, PHS).
            ## @return a string
            ## 
            def authentication_method_detail
                return @authentication_method_detail
            end
            ## 
            ## Sets the authenticationMethodDetail property value. Details about the authentication method used to perform this authentication step. For example, phone number (for SMS and voice), device name (for Authenticator app), and password source (e.g. cloud, AD FS, PTA, PHS).
            ## @param value Value to set for the authenticationMethodDetail property.
            ## @return a void
            ## 
            def authentication_method_detail=(value)
                @authentication_method_detail = value
            end
            ## 
            ## Gets the authenticationStepDateTime property value. Represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def authentication_step_date_time
                return @authentication_step_date_time
            end
            ## 
            ## Sets the authenticationStepDateTime property value. Represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the authenticationStepDateTime property.
            ## @return a void
            ## 
            def authentication_step_date_time=(value)
                @authentication_step_date_time = value
            end
            ## 
            ## Gets the authenticationStepRequirement property value. The step of authentication that this satisfied. For example, primary authentication, or multi-factor authentication.
            ## @return a string
            ## 
            def authentication_step_requirement
                return @authentication_step_requirement
            end
            ## 
            ## Sets the authenticationStepRequirement property value. The step of authentication that this satisfied. For example, primary authentication, or multi-factor authentication.
            ## @param value Value to set for the authenticationStepRequirement property.
            ## @return a void
            ## 
            def authentication_step_requirement=(value)
                @authentication_step_requirement = value
            end
            ## 
            ## Gets the authenticationStepResultDetail property value. Details about why the step succeeded or failed. For examples, user is blocked, fraud code entered, no phone input - timed out, phone unreachable, or claim in token.
            ## @return a string
            ## 
            def authentication_step_result_detail
                return @authentication_step_result_detail
            end
            ## 
            ## Sets the authenticationStepResultDetail property value. Details about why the step succeeded or failed. For examples, user is blocked, fraud code entered, no phone input - timed out, phone unreachable, or claim in token.
            ## @param value Value to set for the authenticationStepResultDetail property.
            ## @return a void
            ## 
            def authentication_step_result_detail=(value)
                @authentication_step_result_detail = value
            end
            ## 
            ## Instantiates a new authenticationDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentication_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "authenticationMethod" => lambda {|n| @authentication_method = n.get_string_value() },
                    "authenticationMethodDetail" => lambda {|n| @authentication_method_detail = n.get_string_value() },
                    "authenticationStepDateTime" => lambda {|n| @authentication_step_date_time = n.get_date_time_value() },
                    "authenticationStepRequirement" => lambda {|n| @authentication_step_requirement = n.get_string_value() },
                    "authenticationStepResultDetail" => lambda {|n| @authentication_step_result_detail = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "succeeded" => lambda {|n| @succeeded = n.get_boolean_value() },
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("authenticationMethod", @authentication_method)
                writer.write_string_value("authenticationMethodDetail", @authentication_method_detail)
                writer.write_date_time_value("authenticationStepDateTime", @authentication_step_date_time)
                writer.write_string_value("authenticationStepRequirement", @authentication_step_requirement)
                writer.write_string_value("authenticationStepResultDetail", @authentication_step_result_detail)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("succeeded", @succeeded)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the succeeded property value. Indicates the status of the authentication step. Possible values: succeeded, failed.
            ## @return a boolean
            ## 
            def succeeded
                return @succeeded
            end
            ## 
            ## Sets the succeeded property value. Indicates the status of the authentication step. Possible values: succeeded, failed.
            ## @param value Value to set for the succeeded property.
            ## @return a void
            ## 
            def succeeded=(value)
                @succeeded = value
            end
        end
    end
end
