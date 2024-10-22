require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AzureSource < MicrosoftGraphBeta::Models::AuthorizationSystemIdentitySource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Azure subscription ID.
            @subscription_id
            ## 
            ## Instantiates a new AzureSource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.azureSource"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a azure_source
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AzureSource.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "subscriptionId" => lambda {|n| @subscription_id = n.get_string_value() },
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
                writer.write_string_value("subscriptionId", @subscription_id)
            end
            ## 
            ## Gets the subscriptionId property value. Azure subscription ID.
            ## @return a string
            ## 
            def subscription_id
                return @subscription_id
            end
            ## 
            ## Sets the subscriptionId property value. Azure subscription ID.
            ## @param value Value to set for the subscriptionId property.
            ## @return a void
            ## 
            def subscription_id=(value)
                @subscription_id = value
            end
        end
    end
end
