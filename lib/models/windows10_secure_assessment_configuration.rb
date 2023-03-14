require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Windows10SecureAssessmentConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether or not to allow the app from printing during the test.
            @allow_printing
            ## 
            # Indicates whether or not to allow screen capture capability during a test.
            @allow_screen_capture
            ## 
            # Indicates whether or not to allow text suggestions during the test.
            @allow_text_suggestion
            ## 
            # Specifies the application user model ID of the assessment app launched when a user signs in to a secure assessment with a local guest account. Important notice: this property must be set with localGuestAccountName in order to make the local guest account sign-in experience work properly for secure assessments.
            @assessment_app_user_model_id
            ## 
            # The account used to configure the Windows device for taking the test. The user can be a domain account (domain/user), an AAD account (username@tenant.com) or a local account (username).
            @configuration_account
            ## 
            # Type of accounts that are allowed for Windows10SecureAssessment ConfigurationAccount.
            @configuration_account_type
            ## 
            # Url link to an assessment that's automatically loaded when the secure assessment browser is launched. It has to be a valid Url (http[s]://msdn.microsoft.com/).
            @launch_uri
            ## 
            # Specifies the display text for the local guest account shown on the sign-in screen. Typically is the name of an assessment. When the user clicks the local guest account on the sign-in screen, an assessment app is launched with a specified assessment URL. Secure assessments can only be configured with local guest account sign-in on devices running Windows 10, version 1903 or later. Important notice: this property must be set with assessmentAppUserModelID in order to make the local guest account sign-in experience work properly for secure assessments.
            @local_guest_account_name
            ## 
            ## Gets the allowPrinting property value. Indicates whether or not to allow the app from printing during the test.
            ## @return a boolean
            ## 
            def allow_printing
                return @allow_printing
            end
            ## 
            ## Sets the allowPrinting property value. Indicates whether or not to allow the app from printing during the test.
            ## @param value Value to set for the allow_printing property.
            ## @return a void
            ## 
            def allow_printing=(value)
                @allow_printing = value
            end
            ## 
            ## Gets the allowScreenCapture property value. Indicates whether or not to allow screen capture capability during a test.
            ## @return a boolean
            ## 
            def allow_screen_capture
                return @allow_screen_capture
            end
            ## 
            ## Sets the allowScreenCapture property value. Indicates whether or not to allow screen capture capability during a test.
            ## @param value Value to set for the allow_screen_capture property.
            ## @return a void
            ## 
            def allow_screen_capture=(value)
                @allow_screen_capture = value
            end
            ## 
            ## Gets the allowTextSuggestion property value. Indicates whether or not to allow text suggestions during the test.
            ## @return a boolean
            ## 
            def allow_text_suggestion
                return @allow_text_suggestion
            end
            ## 
            ## Sets the allowTextSuggestion property value. Indicates whether or not to allow text suggestions during the test.
            ## @param value Value to set for the allow_text_suggestion property.
            ## @return a void
            ## 
            def allow_text_suggestion=(value)
                @allow_text_suggestion = value
            end
            ## 
            ## Gets the assessmentAppUserModelId property value. Specifies the application user model ID of the assessment app launched when a user signs in to a secure assessment with a local guest account. Important notice: this property must be set with localGuestAccountName in order to make the local guest account sign-in experience work properly for secure assessments.
            ## @return a string
            ## 
            def assessment_app_user_model_id
                return @assessment_app_user_model_id
            end
            ## 
            ## Sets the assessmentAppUserModelId property value. Specifies the application user model ID of the assessment app launched when a user signs in to a secure assessment with a local guest account. Important notice: this property must be set with localGuestAccountName in order to make the local guest account sign-in experience work properly for secure assessments.
            ## @param value Value to set for the assessment_app_user_model_id property.
            ## @return a void
            ## 
            def assessment_app_user_model_id=(value)
                @assessment_app_user_model_id = value
            end
            ## 
            ## Gets the configurationAccount property value. The account used to configure the Windows device for taking the test. The user can be a domain account (domain/user), an AAD account (username@tenant.com) or a local account (username).
            ## @return a string
            ## 
            def configuration_account
                return @configuration_account
            end
            ## 
            ## Sets the configurationAccount property value. The account used to configure the Windows device for taking the test. The user can be a domain account (domain/user), an AAD account (username@tenant.com) or a local account (username).
            ## @param value Value to set for the configuration_account property.
            ## @return a void
            ## 
            def configuration_account=(value)
                @configuration_account = value
            end
            ## 
            ## Gets the configurationAccountType property value. Type of accounts that are allowed for Windows10SecureAssessment ConfigurationAccount.
            ## @return a secure_assessment_account_type
            ## 
            def configuration_account_type
                return @configuration_account_type
            end
            ## 
            ## Sets the configurationAccountType property value. Type of accounts that are allowed for Windows10SecureAssessment ConfigurationAccount.
            ## @param value Value to set for the configuration_account_type property.
            ## @return a void
            ## 
            def configuration_account_type=(value)
                @configuration_account_type = value
            end
            ## 
            ## Instantiates a new Windows10SecureAssessmentConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows10SecureAssessmentConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows10_secure_assessment_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10SecureAssessmentConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowPrinting" => lambda {|n| @allow_printing = n.get_boolean_value() },
                    "allowScreenCapture" => lambda {|n| @allow_screen_capture = n.get_boolean_value() },
                    "allowTextSuggestion" => lambda {|n| @allow_text_suggestion = n.get_boolean_value() },
                    "assessmentAppUserModelId" => lambda {|n| @assessment_app_user_model_id = n.get_string_value() },
                    "configurationAccount" => lambda {|n| @configuration_account = n.get_string_value() },
                    "configurationAccountType" => lambda {|n| @configuration_account_type = n.get_enum_value(MicrosoftGraphBeta::Models::SecureAssessmentAccountType) },
                    "launchUri" => lambda {|n| @launch_uri = n.get_string_value() },
                    "localGuestAccountName" => lambda {|n| @local_guest_account_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the launchUri property value. Url link to an assessment that's automatically loaded when the secure assessment browser is launched. It has to be a valid Url (http[s]://msdn.microsoft.com/).
            ## @return a string
            ## 
            def launch_uri
                return @launch_uri
            end
            ## 
            ## Sets the launchUri property value. Url link to an assessment that's automatically loaded when the secure assessment browser is launched. It has to be a valid Url (http[s]://msdn.microsoft.com/).
            ## @param value Value to set for the launch_uri property.
            ## @return a void
            ## 
            def launch_uri=(value)
                @launch_uri = value
            end
            ## 
            ## Gets the localGuestAccountName property value. Specifies the display text for the local guest account shown on the sign-in screen. Typically is the name of an assessment. When the user clicks the local guest account on the sign-in screen, an assessment app is launched with a specified assessment URL. Secure assessments can only be configured with local guest account sign-in on devices running Windows 10, version 1903 or later. Important notice: this property must be set with assessmentAppUserModelID in order to make the local guest account sign-in experience work properly for secure assessments.
            ## @return a string
            ## 
            def local_guest_account_name
                return @local_guest_account_name
            end
            ## 
            ## Sets the localGuestAccountName property value. Specifies the display text for the local guest account shown on the sign-in screen. Typically is the name of an assessment. When the user clicks the local guest account on the sign-in screen, an assessment app is launched with a specified assessment URL. Secure assessments can only be configured with local guest account sign-in on devices running Windows 10, version 1903 or later. Important notice: this property must be set with assessmentAppUserModelID in order to make the local guest account sign-in experience work properly for secure assessments.
            ## @param value Value to set for the local_guest_account_name property.
            ## @return a void
            ## 
            def local_guest_account_name=(value)
                @local_guest_account_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allowPrinting", @allow_printing)
                writer.write_boolean_value("allowScreenCapture", @allow_screen_capture)
                writer.write_boolean_value("allowTextSuggestion", @allow_text_suggestion)
                writer.write_string_value("assessmentAppUserModelId", @assessment_app_user_model_id)
                writer.write_string_value("configurationAccount", @configuration_account)
                writer.write_enum_value("configurationAccountType", @configuration_account_type)
                writer.write_string_value("launchUri", @launch_uri)
                writer.write_string_value("localGuestAccountName", @local_guest_account_name)
            end
        end
    end
end
