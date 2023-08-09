require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesAzureADDeviceRegistrationError < MicrosoftGraphBeta::Models::WindowsUpdatesUpdatableAssetError
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The reason property
            @reason
            ## 
            ## Instantiates a new windowsUpdatesAzureADDeviceRegistrationError and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsUpdates.azureADDeviceRegistrationError"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_azure_a_d_device_registration_error
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesAzureADDeviceRegistrationError.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "reason" => lambda {|n| @reason = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdatesAzureADDeviceRegistrationErrorReason) },
                })
            end
            ## 
            ## Gets the reason property value. The reason property
            ## @return a windows_updates_azure_a_d_device_registration_error_reason
            ## 
            def reason
                return @reason
            end
            ## 
            ## Sets the reason property value. The reason property
            ## @param value Value to set for the reason property.
            ## @return a void
            ## 
            def reason=(value)
                @reason = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("reason", @reason)
            end
        end
    end
end
