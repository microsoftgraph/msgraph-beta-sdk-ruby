require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta
    module Models
        module WindowsUpdates
            class AzureADDevice < MicrosoftGraphBeta::Models::WindowsUpdates::UpdatableAsset
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Specifies areas of the service in which the device is enrolled. Read-only. Returned by default.
                @enrollments
                ## 
                # Specifies any errors that prevent the device from being enrolled in update management or receving deployed content. Read-only. Returned by default.
                @errors
                ## 
                ## Instantiates a new AzureADDevice and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.windowsUpdates.azureADDevice"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a azure_a_d_device
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return AzureADDevice.new
                end
                ## 
                ## Gets the enrollments property value. Specifies areas of the service in which the device is enrolled. Read-only. Returned by default.
                ## @return a updatable_asset_enrollment
                ## 
                def enrollments
                    return @enrollments
                end
                ## 
                ## Sets the enrollments property value. Specifies areas of the service in which the device is enrolled. Read-only. Returned by default.
                ## @param value Value to set for the enrollments property.
                ## @return a void
                ## 
                def enrollments=(value)
                    @enrollments = value
                end
                ## 
                ## Gets the errors property value. Specifies any errors that prevent the device from being enrolled in update management or receving deployed content. Read-only. Returned by default.
                ## @return a updatable_asset_error
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
                        "enrollments" => lambda {|n| @enrollments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::UpdatableAssetEnrollment.create_from_discriminator_value(pn) }) },
                        "errors" => lambda {|n| @errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::UpdatableAssetError.create_from_discriminator_value(pn) }) },
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
                    writer.write_collection_of_object_values("enrollments", @enrollments)
                    writer.write_collection_of_object_values("errors", @errors)
                end
            end
        end
    end
end
