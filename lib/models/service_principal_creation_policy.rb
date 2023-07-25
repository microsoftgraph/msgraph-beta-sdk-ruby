require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ServicePrincipalCreationPolicy < MicrosoftGraphBeta::Models::PolicyBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The excludes property
            @excludes
            ## 
            # The includes property
            @includes
            ## 
            # The isBuiltIn property
            @is_built_in
            ## 
            ## Instantiates a new servicePrincipalCreationPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.servicePrincipalCreationPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a service_principal_creation_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServicePrincipalCreationPolicy.new
            end
            ## 
            ## Gets the excludes property value. The excludes property
            ## @return a service_principal_creation_condition_set
            ## 
            def excludes
                return @excludes
            end
            ## 
            ## Sets the excludes property value. The excludes property
            ## @param value Value to set for the excludes property.
            ## @return a void
            ## 
            def excludes=(value)
                @excludes = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "excludes" => lambda {|n| @excludes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ServicePrincipalCreationConditionSet.create_from_discriminator_value(pn) }) },
                    "includes" => lambda {|n| @includes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ServicePrincipalCreationConditionSet.create_from_discriminator_value(pn) }) },
                    "isBuiltIn" => lambda {|n| @is_built_in = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the includes property value. The includes property
            ## @return a service_principal_creation_condition_set
            ## 
            def includes
                return @includes
            end
            ## 
            ## Sets the includes property value. The includes property
            ## @param value Value to set for the includes property.
            ## @return a void
            ## 
            def includes=(value)
                @includes = value
            end
            ## 
            ## Gets the isBuiltIn property value. The isBuiltIn property
            ## @return a boolean
            ## 
            def is_built_in
                return @is_built_in
            end
            ## 
            ## Sets the isBuiltIn property value. The isBuiltIn property
            ## @param value Value to set for the isBuiltIn property.
            ## @return a void
            ## 
            def is_built_in=(value)
                @is_built_in = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("excludes", @excludes)
                writer.write_collection_of_object_values("includes", @includes)
                writer.write_boolean_value("isBuiltIn", @is_built_in)
            end
        end
    end
end
