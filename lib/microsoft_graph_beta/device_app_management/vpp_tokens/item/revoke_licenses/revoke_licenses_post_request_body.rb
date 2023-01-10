require 'microsoft_kiota_abstractions'
require_relative '../../../device_app_management'
require_relative '../../vpp_tokens'
require_relative '../item'
require_relative './revoke_licenses'

module MicrosoftGraphBeta::DeviceAppManagement::VppTokens::Item::RevokeLicenses
    class RevokeLicensesPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The notifyManagedDevices property
        @notify_managed_devices
        ## 
        # The revokeUntrackedLicenses property
        @revoke_untracked_licenses
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new revokeLicensesPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a revoke_licenses_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return RevokeLicensesPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "notifyManagedDevices" => lambda {|n| @notify_managed_devices = n.get_boolean_value() },
                "revokeUntrackedLicenses" => lambda {|n| @revoke_untracked_licenses = n.get_boolean_value() },
            }
        end
        ## 
        ## Gets the notifyManagedDevices property value. The notifyManagedDevices property
        ## @return a boolean
        ## 
        def notify_managed_devices
            return @notify_managed_devices
        end
        ## 
        ## Sets the notifyManagedDevices property value. The notifyManagedDevices property
        ## @param value Value to set for the notifyManagedDevices property.
        ## @return a void
        ## 
        def notify_managed_devices=(value)
            @notify_managed_devices = value
        end
        ## 
        ## Gets the revokeUntrackedLicenses property value. The revokeUntrackedLicenses property
        ## @return a boolean
        ## 
        def revoke_untracked_licenses
            return @revoke_untracked_licenses
        end
        ## 
        ## Sets the revokeUntrackedLicenses property value. The revokeUntrackedLicenses property
        ## @param value Value to set for the revokeUntrackedLicenses property.
        ## @return a void
        ## 
        def revoke_untracked_licenses=(value)
            @revoke_untracked_licenses = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_boolean_value("notifyManagedDevices", @notify_managed_devices)
            writer.write_boolean_value("revokeUntrackedLicenses", @revoke_untracked_licenses)
            writer.write_additional_data(@additional_data)
        end
    end
end
