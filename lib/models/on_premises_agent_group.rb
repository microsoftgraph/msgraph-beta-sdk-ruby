require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OnPremisesAgentGroup < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of onPremisesAgent that are assigned to an onPremisesAgentGroup. Read-only. Nullable.
            @agents
            ## 
            # Display name of the onPremisesAgentGroup.
            @display_name
            ## 
            # Indicates if the onPremisesAgentGroup is the default agent group. Only a single agent group can be the default onPremisesAgentGroup and is set by the system.
            @is_default
            ## 
            # List of publishedResource that are assigned to an onPremisesAgentGroup. Read-only. Nullable.
            @published_resources
            ## 
            # The publishingType property
            @publishing_type
            ## 
            ## Gets the agents property value. List of onPremisesAgent that are assigned to an onPremisesAgentGroup. Read-only. Nullable.
            ## @return a on_premises_agent
            ## 
            def agents
                return @agents
            end
            ## 
            ## Sets the agents property value. List of onPremisesAgent that are assigned to an onPremisesAgentGroup. Read-only. Nullable.
            ## @param value Value to set for the agents property.
            ## @return a void
            ## 
            def agents=(value)
                @agents = value
            end
            ## 
            ## Instantiates a new onPremisesAgentGroup and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_premises_agent_group
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPremisesAgentGroup.new
            end
            ## 
            ## Gets the displayName property value. Display name of the onPremisesAgentGroup.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the onPremisesAgentGroup.
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
                    "agents" => lambda {|n| @agents = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesAgent.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                    "publishedResources" => lambda {|n| @published_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PublishedResource.create_from_discriminator_value(pn) }) },
                    "publishingType" => lambda {|n| @publishing_type = n.get_enum_value(MicrosoftGraphBeta::Models::OnPremisesPublishingType) },
                })
            end
            ## 
            ## Gets the isDefault property value. Indicates if the onPremisesAgentGroup is the default agent group. Only a single agent group can be the default onPremisesAgentGroup and is set by the system.
            ## @return a boolean
            ## 
            def is_default
                return @is_default
            end
            ## 
            ## Sets the isDefault property value. Indicates if the onPremisesAgentGroup is the default agent group. Only a single agent group can be the default onPremisesAgentGroup and is set by the system.
            ## @param value Value to set for the isDefault property.
            ## @return a void
            ## 
            def is_default=(value)
                @is_default = value
            end
            ## 
            ## Gets the publishedResources property value. List of publishedResource that are assigned to an onPremisesAgentGroup. Read-only. Nullable.
            ## @return a published_resource
            ## 
            def published_resources
                return @published_resources
            end
            ## 
            ## Sets the publishedResources property value. List of publishedResource that are assigned to an onPremisesAgentGroup. Read-only. Nullable.
            ## @param value Value to set for the publishedResources property.
            ## @return a void
            ## 
            def published_resources=(value)
                @published_resources = value
            end
            ## 
            ## Gets the publishingType property value. The publishingType property
            ## @return a on_premises_publishing_type
            ## 
            def publishing_type
                return @publishing_type
            end
            ## 
            ## Sets the publishingType property value. The publishingType property
            ## @param value Value to set for the publishingType property.
            ## @return a void
            ## 
            def publishing_type=(value)
                @publishing_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("agents", @agents)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isDefault", @is_default)
                writer.write_collection_of_object_values("publishedResources", @published_resources)
                writer.write_enum_value("publishingType", @publishing_type)
            end
        end
    end
end
