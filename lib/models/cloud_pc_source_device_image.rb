require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcSourceDeviceImage
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The display name for the source image.
            @display_name
            ## 
            # The ID of the source image.
            @id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The display name of subscription that hosts the source image.
            @subscription_display_name
            ## 
            # The ID of subscription that hosts the source image.
            @subscription_id
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
            ## Instantiates a new cloudPcSourceDeviceImage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_source_device_image
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcSourceDeviceImage.new
            end
            ## 
            ## Gets the displayName property value. The display name for the source image.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the source image.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "subscriptionDisplayName" => lambda {|n| @subscription_display_name = n.get_string_value() },
                    "subscriptionId" => lambda {|n| @subscription_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. The ID of the source image.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The ID of the source image.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
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
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("id", @id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("subscriptionDisplayName", @subscription_display_name)
                writer.write_string_value("subscriptionId", @subscription_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the subscriptionDisplayName property value. The display name of subscription that hosts the source image.
            ## @return a string
            ## 
            def subscription_display_name
                return @subscription_display_name
            end
            ## 
            ## Sets the subscriptionDisplayName property value. The display name of subscription that hosts the source image.
            ## @param value Value to set for the subscriptionDisplayName property.
            ## @return a void
            ## 
            def subscription_display_name=(value)
                @subscription_display_name = value
            end
            ## 
            ## Gets the subscriptionId property value. The ID of subscription that hosts the source image.
            ## @return a string
            ## 
            def subscription_id
                return @subscription_id
            end
            ## 
            ## Sets the subscriptionId property value. The ID of subscription that hosts the source image.
            ## @param value Value to set for the subscriptionId property.
            ## @return a void
            ## 
            def subscription_id=(value)
                @subscription_id = value
            end
        end
    end
end
