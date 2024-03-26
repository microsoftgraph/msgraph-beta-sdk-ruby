require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessFilteringProfile < MicrosoftGraphBeta::Models::NetworkaccessProfile
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A set of associated policies defined to regulate access to resources or systems based on specific conditions. Automatically expanded.
            @conditional_access_policies
            ## 
            # The date and time when the filteringProfile was created.
            @created_date_time
            ## 
            # The priority used to order the profile for processing within a list.
            @priority
            ## 
            ## Gets the conditionalAccessPolicies property value. A set of associated policies defined to regulate access to resources or systems based on specific conditions. Automatically expanded.
            ## @return a networkaccess_conditional_access_policy
            ## 
            def conditional_access_policies
                return @conditional_access_policies
            end
            ## 
            ## Sets the conditionalAccessPolicies property value. A set of associated policies defined to regulate access to resources or systems based on specific conditions. Automatically expanded.
            ## @param value Value to set for the conditionalAccessPolicies property.
            ## @return a void
            ## 
            def conditional_access_policies=(value)
                @conditional_access_policies = value
            end
            ## 
            ## Instantiates a new NetworkaccessFilteringProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.filteringProfile"
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the filteringProfile was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the filteringProfile was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_filtering_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessFilteringProfile.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "conditionalAccessPolicies" => lambda {|n| @conditional_access_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessConditionalAccessPolicy.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "priority" => lambda {|n| @priority = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the priority property value. The priority used to order the profile for processing within a list.
            ## @return a int64
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. The priority used to order the profile for processing within a list.
            ## @param value Value to set for the priority property.
            ## @return a void
            ## 
            def priority=(value)
                @priority = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("conditionalAccessPolicies", @conditional_access_policies)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("priority", @priority)
            end
        end
    end
end
