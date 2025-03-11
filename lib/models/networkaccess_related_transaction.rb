require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessRelatedTransaction < MicrosoftGraphBeta::Models::NetworkaccessRelatedResource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The transactionId property
            @transaction_id
            ## 
            ## Instantiates a new NetworkaccessRelatedTransaction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.relatedTransaction"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_related_transaction
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessRelatedTransaction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "transactionId" => lambda {|n| @transaction_id = n.get_string_value() },
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
                writer.write_string_value("transactionId", @transaction_id)
            end
            ## 
            ## Gets the transactionId property value. The transactionId property
            ## @return a string
            ## 
            def transaction_id
                return @transaction_id
            end
            ## 
            ## Sets the transactionId property value. The transactionId property
            ## @param value Value to set for the transactionId property.
            ## @return a void
            ## 
            def transaction_id=(value)
                @transaction_id = value
            end
        end
    end
end
