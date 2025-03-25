require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcSubscription < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The ID of the subscription.
            @subscription_id
            ## 
            # The name of the subscription.
            @subscription_name
            ## 
            ## Instantiates a new CloudPcSubscription and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_subscription
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcSubscription.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "subscriptionId" => lambda {|n| @subscription_id = n.get_string_value() },
                    "subscriptionName" => lambda {|n| @subscription_name = n.get_string_value() },
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
                writer.write_string_value("subscriptionName", @subscription_name)
            end
            ## 
            ## Gets the subscriptionId property value. The ID of the subscription.
            ## @return a string
            ## 
            def subscription_id
                return @subscription_id
            end
            ## 
            ## Sets the subscriptionId property value. The ID of the subscription.
            ## @param value Value to set for the subscriptionId property.
            ## @return a void
            ## 
            def subscription_id=(value)
                @subscription_id = value
            end
            ## 
            ## Gets the subscriptionName property value. The name of the subscription.
            ## @return a string
            ## 
            def subscription_name
                return @subscription_name
            end
            ## 
            ## Sets the subscriptionName property value. The name of the subscription.
            ## @param value Value to set for the subscriptionName property.
            ## @return a void
            ## 
            def subscription_name=(value)
                @subscription_name = value
            end
        end
    end
end
