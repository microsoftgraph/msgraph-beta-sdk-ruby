require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ConditionalAccessEnumeratedExternalTenants < MicrosoftGraphBeta::Models::ConditionalAccessExternalTenants
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of tenant IDs that define the scope of a policy targeting conditional access for guests and external users.
            @members
            ## 
            ## Instantiates a new conditionalAccessEnumeratedExternalTenants and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.conditionalAccessEnumeratedExternalTenants"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a conditional_access_enumerated_external_tenants
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConditionalAccessEnumeratedExternalTenants.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "members" => lambda {|n| @members = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the members property value. A collection of tenant IDs that define the scope of a policy targeting conditional access for guests and external users.
            ## @return a string
            ## 
            def members
                return @members
            end
            ## 
            ## Sets the members property value. A collection of tenant IDs that define the scope of a policy targeting conditional access for guests and external users.
            ## @param value Value to set for the members property.
            ## @return a void
            ## 
            def members=(value)
                @members = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("members", @members)
            end
        end
    end
end
