require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcFrontLineServicePlan < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The display name of the front-line service plan. For example, 2vCPU/8GB/128GB Front-line or 4vCPU/16GB/256GB Front-line.
            @display_name
            ## 
            # The total number of front-line service plans purchased by the customer.
            @total_count
            ## 
            # The number of service plans that have been used for the account.
            @used_count
            ## 
            ## Instantiates a new CloudPcFrontLineServicePlan and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_front_line_service_plan
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcFrontLineServicePlan.new
            end
            ## 
            ## Gets the displayName property value. The display name of the front-line service plan. For example, 2vCPU/8GB/128GB Front-line or 4vCPU/16GB/256GB Front-line.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the front-line service plan. For example, 2vCPU/8GB/128GB Front-line or 4vCPU/16GB/256GB Front-line.
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
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "totalCount" => lambda {|n| @total_count = n.get_number_value() },
                    "usedCount" => lambda {|n| @used_count = n.get_number_value() },
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
                writer.write_string_value("displayName", @display_name)
                writer.write_number_value("totalCount", @total_count)
                writer.write_number_value("usedCount", @used_count)
            end
            ## 
            ## Gets the totalCount property value. The total number of front-line service plans purchased by the customer.
            ## @return a integer
            ## 
            def total_count
                return @total_count
            end
            ## 
            ## Sets the totalCount property value. The total number of front-line service plans purchased by the customer.
            ## @param value Value to set for the totalCount property.
            ## @return a void
            ## 
            def total_count=(value)
                @total_count = value
            end
            ## 
            ## Gets the usedCount property value. The number of service plans that have been used for the account.
            ## @return a integer
            ## 
            def used_count
                return @used_count
            end
            ## 
            ## Sets the usedCount property value. The number of service plans that have been used for the account.
            ## @param value Value to set for the usedCount property.
            ## @return a void
            ## 
            def used_count=(value)
                @used_count = value
            end
        end
    end
end
