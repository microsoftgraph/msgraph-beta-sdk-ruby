require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessWebCategoriesSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The action property
            @action
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of unique devices that were seen.
            @device_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The number of transactions that were seen.
            @transaction_count
            ## 
            # The number of unique Microsoft Entra ID users that were seen.
            @user_count
            ## 
            # The webCategory property
            @web_category
            ## 
            ## Gets the action property value. The action property
            ## @return a networkaccess_filtering_policy_action
            ## 
            def action
                return @action
            end
            ## 
            ## Sets the action property value. The action property
            ## @param value Value to set for the action property.
            ## @return a void
            ## 
            def action=(value)
                @action = value
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
            ## Instantiates a new NetworkaccessWebCategoriesSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_web_categories_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessWebCategoriesSummary.new
            end
            ## 
            ## Gets the deviceCount property value. The number of unique devices that were seen.
            ## @return a int64
            ## 
            def device_count
                return @device_count
            end
            ## 
            ## Sets the deviceCount property value. The number of unique devices that were seen.
            ## @param value Value to set for the deviceCount property.
            ## @return a void
            ## 
            def device_count=(value)
                @device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessFilteringPolicyAction) },
                    "deviceCount" => lambda {|n| @device_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "transactionCount" => lambda {|n| @transaction_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "userCount" => lambda {|n| @user_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "webCategory" => lambda {|n| @web_category = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessWebCategory.create_from_discriminator_value(pn) }) },
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
                writer.write_enum_value("action", @action)
                writer.write_object_value("deviceCount", @device_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("transactionCount", @transaction_count)
                writer.write_object_value("userCount", @user_count)
                writer.write_object_value("webCategory", @web_category)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the transactionCount property value. The number of transactions that were seen.
            ## @return a int64
            ## 
            def transaction_count
                return @transaction_count
            end
            ## 
            ## Sets the transactionCount property value. The number of transactions that were seen.
            ## @param value Value to set for the transactionCount property.
            ## @return a void
            ## 
            def transaction_count=(value)
                @transaction_count = value
            end
            ## 
            ## Gets the userCount property value. The number of unique Microsoft Entra ID users that were seen.
            ## @return a int64
            ## 
            def user_count
                return @user_count
            end
            ## 
            ## Sets the userCount property value. The number of unique Microsoft Entra ID users that were seen.
            ## @param value Value to set for the userCount property.
            ## @return a void
            ## 
            def user_count=(value)
                @user_count = value
            end
            ## 
            ## Gets the webCategory property value. The webCategory property
            ## @return a networkaccess_web_category
            ## 
            def web_category
                return @web_category
            end
            ## 
            ## Sets the webCategory property value. The webCategory property
            ## @param value Value to set for the webCategory property.
            ## @return a void
            ## 
            def web_category=(value)
                @web_category = value
            end
        end
    end
end
