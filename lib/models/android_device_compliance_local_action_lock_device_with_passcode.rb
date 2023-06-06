require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AndroidDeviceComplianceLocalActionLockDeviceWithPasscode < MicrosoftGraphBeta::Models::AndroidDeviceComplianceLocalActionBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Passcode to reset to Android device. This property is read-only.
            @passcode
            ## 
            # Number of sign in failures before wiping device, the value can be 4-11. Valid values 4 to 11
            @passcode_sign_in_failure_count_before_wipe
            ## 
            ## Instantiates a new AndroidDeviceComplianceLocalActionLockDeviceWithPasscode and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidDeviceComplianceLocalActionLockDeviceWithPasscode"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_device_compliance_local_action_lock_device_with_passcode
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidDeviceComplianceLocalActionLockDeviceWithPasscode.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "passcode" => lambda {|n| @passcode = n.get_string_value() },
                    "passcodeSignInFailureCountBeforeWipe" => lambda {|n| @passcode_sign_in_failure_count_before_wipe = n.get_number_value() },
                })
            end
            ## 
            ## Gets the passcode property value. Passcode to reset to Android device. This property is read-only.
            ## @return a string
            ## 
            def passcode
                return @passcode
            end
            ## 
            ## Sets the passcode property value. Passcode to reset to Android device. This property is read-only.
            ## @param value Value to set for the passcode property.
            ## @return a void
            ## 
            def passcode=(value)
                @passcode = value
            end
            ## 
            ## Gets the passcodeSignInFailureCountBeforeWipe property value. Number of sign in failures before wiping device, the value can be 4-11. Valid values 4 to 11
            ## @return a integer
            ## 
            def passcode_sign_in_failure_count_before_wipe
                return @passcode_sign_in_failure_count_before_wipe
            end
            ## 
            ## Sets the passcodeSignInFailureCountBeforeWipe property value. Number of sign in failures before wiping device, the value can be 4-11. Valid values 4 to 11
            ## @param value Value to set for the passcode_sign_in_failure_count_before_wipe property.
            ## @return a void
            ## 
            def passcode_sign_in_failure_count_before_wipe=(value)
                @passcode_sign_in_failure_count_before_wipe = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("passcodeSignInFailureCountBeforeWipe", @passcode_sign_in_failure_count_before_wipe)
            end
        end
    end
end
