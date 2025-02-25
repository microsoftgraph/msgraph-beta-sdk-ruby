require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesAzureADDevice < MicrosoftGraphBeta::Models::WindowsUpdatesUpdatableAsset
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The enrollment property
            @enrollment
            ## 
            # Specifies any errors that prevent the device from being enrolled in update management or receving deployed content. Read-only. Returned by default.
            @errors
            ## 
            ## Instantiates a new WindowsUpdatesAzureADDevice and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsUpdates.azureADDevice"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_azure_a_d_device
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesAzureADDevice.new
            end
            ## 
            ## Gets the enrollment property value. The enrollment property
            ## @return a windows_updates_update_management_enrollment
            ## 
            def enrollment
                return @enrollment
            end
            ## 
            ## Sets the enrollment property value. The enrollment property
            ## @param value Value to set for the enrollment property.
            ## @return a void
            ## 
            def enrollment=(value)
                @enrollment = value
            end
            ## 
            ## Gets the errors property value. Specifies any errors that prevent the device from being enrolled in update management or receving deployed content. Read-only. Returned by default.
            ## @return a windows_updates_updatable_asset_error
            ## 
            def errors
                return @errors
            end
            ## 
            ## Sets the errors property value. Specifies any errors that prevent the device from being enrolled in update management or receving deployed content. Read-only. Returned by default.
            ## @param value Value to set for the errors property.
            ## @return a void
            ## 
            def errors=(value)
                @errors = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "enrollment" => lambda {|n| @enrollment = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesUpdateManagementEnrollment.create_from_discriminator_value(pn) }) },
                    "errors" => lambda {|n| @errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesUpdatableAssetError.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("enrollment", @enrollment)
                writer.write_collection_of_object_values("errors", @errors)
            end
        end
    end
end
