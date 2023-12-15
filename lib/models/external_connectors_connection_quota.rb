require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExternalConnectorsConnectionQuota < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The minimum of two values, one representing the items remaining in the connection and the other remaining items at tenant-level. The following equation represents the formula used to calculate the minimum number: min ({max capacity in the connection} – {number of items in the connection}, {tenant quota} – {number of items indexed in all connections}). If the connection is not monetized, such as in a preview connector or preview content experience, then this property is simply the number of remaining items in the connection.
            @items_remaining
            ## 
            ## Instantiates a new externalConnectorsConnectionQuota and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a external_connectors_connection_quota
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExternalConnectorsConnectionQuota.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "itemsRemaining" => lambda {|n| @items_remaining = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the itemsRemaining property value. The minimum of two values, one representing the items remaining in the connection and the other remaining items at tenant-level. The following equation represents the formula used to calculate the minimum number: min ({max capacity in the connection} – {number of items in the connection}, {tenant quota} – {number of items indexed in all connections}). If the connection is not monetized, such as in a preview connector or preview content experience, then this property is simply the number of remaining items in the connection.
            ## @return a int64
            ## 
            def items_remaining
                return @items_remaining
            end
            ## 
            ## Sets the itemsRemaining property value. The minimum of two values, one representing the items remaining in the connection and the other remaining items at tenant-level. The following equation represents the formula used to calculate the minimum number: min ({max capacity in the connection} – {number of items in the connection}, {tenant quota} – {number of items indexed in all connections}). If the connection is not monetized, such as in a preview connector or preview content experience, then this property is simply the number of remaining items in the connection.
            ## @param value Value to set for the itemsRemaining property.
            ## @return a void
            ## 
            def items_remaining=(value)
                @items_remaining = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("itemsRemaining", @items_remaining)
            end
        end
    end
end
