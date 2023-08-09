require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './networkaccess/networkaccess'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessTransactionSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Count of transactions that were blocked.
            @blocked_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Count of transactions.
            @total_count
            ## 
            # The trafficType property
            @traffic_type
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
            ## Gets the blockedCount property value. Count of transactions that were blocked.
            ## @return a integer
            ## 
            def blocked_count
                return @blocked_count
            end
            ## 
            ## Sets the blockedCount property value. Count of transactions that were blocked.
            ## @param value Value to set for the blockedCount property.
            ## @return a void
            ## 
            def blocked_count=(value)
                @blocked_count = value
            end
            ## 
            ## Instantiates a new transactionSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_transaction_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessTransactionSummary.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "blockedCount" => lambda {|n| @blocked_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "totalCount" => lambda {|n| @total_count = n.get_number_value() },
                    "trafficType" => lambda {|n| @traffic_type = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessTrafficType) },
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
                writer.write_number_value("blockedCount", @blocked_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("totalCount", @total_count)
                writer.write_enum_value("trafficType", @traffic_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the totalCount property value. Count of transactions.
            ## @return a integer
            ## 
            def total_count
                return @total_count
            end
            ## 
            ## Sets the totalCount property value. Count of transactions.
            ## @param value Value to set for the totalCount property.
            ## @return a void
            ## 
            def total_count=(value)
                @total_count = value
            end
            ## 
            ## Gets the trafficType property value. The trafficType property
            ## @return a networkaccess_traffic_type
            ## 
            def traffic_type
                return @traffic_type
            end
            ## 
            ## Sets the trafficType property value. The trafficType property
            ## @param value Value to set for the trafficType property.
            ## @return a void
            ## 
            def traffic_type=(value)
                @traffic_type = value
            end
        end
    end
end
