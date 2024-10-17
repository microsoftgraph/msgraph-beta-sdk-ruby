require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Models.partner.securityCustomersSpendingBudgetSecurityRequirement < MicrosoftGraphBeta::Models::Models.partner.securitySecurityRequirement
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of customers with a spending budget set.
            @customers_with_spend_budget_count
            ## 
            # The total number of customers associated with the partner.
            @total_customers_count
            ## 
            ## Instantiates a new Models.partner.securityCustomersSpendingBudgetSecurityRequirement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a models.partner.security_customers_spending_budget_security_requirement
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Models.partner.securityCustomersSpendingBudgetSecurityRequirement.new
            end
            ## 
            ## Gets the customersWithSpendBudgetCount property value. The number of customers with a spending budget set.
            ## @return a int64
            ## 
            def customers_with_spend_budget_count
                return @customers_with_spend_budget_count
            end
            ## 
            ## Sets the customersWithSpendBudgetCount property value. The number of customers with a spending budget set.
            ## @param value Value to set for the customersWithSpendBudgetCount property.
            ## @return a void
            ## 
            def customers_with_spend_budget_count=(value)
                @customers_with_spend_budget_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "customersWithSpendBudgetCount" => lambda {|n| @customers_with_spend_budget_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "totalCustomersCount" => lambda {|n| @total_customers_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("customersWithSpendBudgetCount", @customers_with_spend_budget_count)
                writer.write_object_value("totalCustomersCount", @total_customers_count)
            end
            ## 
            ## Gets the totalCustomersCount property value. The total number of customers associated with the partner.
            ## @return a int64
            ## 
            def total_customers_count
                return @total_customers_count
            end
            ## 
            ## Sets the totalCustomersCount property value. The total number of customers associated with the partner.
            ## @param value Value to set for the totalCustomersCount property.
            ## @return a void
            ## 
            def total_customers_count=(value)
                @total_customers_count = value
            end
        end
    end
end
