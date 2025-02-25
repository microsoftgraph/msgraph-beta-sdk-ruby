require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AccessPackageAnswerChoice
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The actual value of the selected choice. This is typically a string value which is understandable by applications. Required.
            @actual_value
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The localized display values shown to the requestor and approvers. Required.
            @display_value
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the actualValue property value. The actual value of the selected choice. This is typically a string value which is understandable by applications. Required.
            ## @return a string
            ## 
            def actual_value
                return @actual_value
            end
            ## 
            ## Sets the actualValue property value. The actual value of the selected choice. This is typically a string value which is understandable by applications. Required.
            ## @param value Value to set for the actualValue property.
            ## @return a void
            ## 
            def actual_value=(value)
                @actual_value = value
            end
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
            ## Instantiates a new AccessPackageAnswerChoice and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a access_package_answer_choice
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessPackageAnswerChoice.new
            end
            ## 
            ## Gets the displayValue property value. The localized display values shown to the requestor and approvers. Required.
            ## @return a access_package_localized_content
            ## 
            def display_value
                return @display_value
            end
            ## 
            ## Sets the displayValue property value. The localized display values shown to the requestor and approvers. Required.
            ## @param value Value to set for the displayValue property.
            ## @return a void
            ## 
            def display_value=(value)
                @display_value = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "actualValue" => lambda {|n| @actual_value = n.get_string_value() },
                    "displayValue" => lambda {|n| @display_value = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageLocalizedContent.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_string_value("actualValue", @actual_value)
                writer.write_object_value("displayValue", @display_value)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
