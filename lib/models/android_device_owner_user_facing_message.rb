require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents a user-facing message with locale information as well as a default message to be used if the user's locale doesn't match with any of the localized messages
        class AndroidDeviceOwnerUserFacingMessage
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The default message displayed if the user's locale doesn't match with any of the localized messages
            @default_message
            ## 
            # The list of <locale, message> pairs. This collection can contain a maximum of 500 elements.
            @localized_messages
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new androidDeviceOwnerUserFacingMessage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_device_owner_user_facing_message
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidDeviceOwnerUserFacingMessage.new
            end
            ## 
            ## Gets the defaultMessage property value. The default message displayed if the user's locale doesn't match with any of the localized messages
            ## @return a string
            ## 
            def default_message
                return @default_message
            end
            ## 
            ## Sets the defaultMessage property value. The default message displayed if the user's locale doesn't match with any of the localized messages
            ## @param value Value to set for the defaultMessage property.
            ## @return a void
            ## 
            def default_message=(value)
                @default_message = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "defaultMessage" => lambda {|n| @default_message = n.get_string_value() },
                    "localizedMessages" => lambda {|n| @localized_messages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the localizedMessages property value. The list of <locale, message> pairs. This collection can contain a maximum of 500 elements.
            ## @return a key_value_pair
            ## 
            def localized_messages
                return @localized_messages
            end
            ## 
            ## Sets the localizedMessages property value. The list of <locale, message> pairs. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the localizedMessages property.
            ## @return a void
            ## 
            def localized_messages=(value)
                @localized_messages = value
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
                writer.write_string_value("defaultMessage", @default_message)
                writer.write_collection_of_object_values("localizedMessages", @localized_messages)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
