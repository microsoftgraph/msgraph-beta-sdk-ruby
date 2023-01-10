require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PublishedResource < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # List of onPremisesAgentGroups that a publishedResource is assigned to. Read-only. Nullable.
        @agent_groups
        ## 
        # Display Name of the publishedResource.
        @display_name
        ## 
        # The publishingType property
        @publishing_type
        ## 
        # Name of the publishedResource.
        @resource_name
        ## 
        ## Gets the agentGroups property value. List of onPremisesAgentGroups that a publishedResource is assigned to. Read-only. Nullable.
        ## @return a on_premises_agent_group
        ## 
        def agent_groups
            return @agent_groups
        end
        ## 
        ## Sets the agentGroups property value. List of onPremisesAgentGroups that a publishedResource is assigned to. Read-only. Nullable.
        ## @param value Value to set for the agentGroups property.
        ## @return a void
        ## 
        def agent_groups=(value)
            @agent_groups = value
        end
        ## 
        ## Instantiates a new publishedResource and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a published_resource
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PublishedResource.new
        end
        ## 
        ## Gets the displayName property value. Display Name of the publishedResource.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Display Name of the publishedResource.
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
                "agentGroups" => lambda {|n| @agent_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesAgentGroup.create_from_discriminator_value(pn) }) },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "publishingType" => lambda {|n| @publishing_type = n.get_enum_value(MicrosoftGraphBeta::Models::OnPremisesPublishingType) },
                "resourceName" => lambda {|n| @resource_name = n.get_string_value() },
            })
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
        ## Gets the resourceName property value. Name of the publishedResource.
        ## @return a string
        ## 
        def resource_name
            return @resource_name
        end
        ## 
        ## Sets the resourceName property value. Name of the publishedResource.
        ## @param value Value to set for the resourceName property.
        ## @return a void
        ## 
        def resource_name=(value)
            @resource_name = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("agentGroups", @agent_groups)
            writer.write_string_value("displayName", @display_name)
            writer.write_enum_value("publishingType", @publishing_type)
            writer.write_string_value("resourceName", @resource_name)
        end
    end
end
