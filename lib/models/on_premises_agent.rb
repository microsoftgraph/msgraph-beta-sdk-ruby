require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OnPremisesAgent < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of onPremisesAgentGroups that an onPremisesAgent is assigned to. Read-only. Nullable.
            @agent_groups
            ## 
            # The external IP address as detected by the service for the agent machine. Read-only
            @external_ip
            ## 
            # The name of the machine that the agent is running on. Read-only
            @machine_name
            ## 
            # The status property
            @status
            ## 
            # The supportedPublishingTypes property
            @supported_publishing_types
            ## 
            ## Gets the agentGroups property value. List of onPremisesAgentGroups that an onPremisesAgent is assigned to. Read-only. Nullable.
            ## @return a on_premises_agent_group
            ## 
            def agent_groups
                return @agent_groups
            end
            ## 
            ## Sets the agentGroups property value. List of onPremisesAgentGroups that an onPremisesAgent is assigned to. Read-only. Nullable.
            ## @param value Value to set for the agentGroups property.
            ## @return a void
            ## 
            def agent_groups=(value)
                @agent_groups = value
            end
            ## 
            ## Instantiates a new OnPremisesAgent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a on_premises_agent
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnPremisesAgent.new
            end
            ## 
            ## Gets the externalIp property value. The external IP address as detected by the service for the agent machine. Read-only
            ## @return a string
            ## 
            def external_ip
                return @external_ip
            end
            ## 
            ## Sets the externalIp property value. The external IP address as detected by the service for the agent machine. Read-only
            ## @param value Value to set for the externalIp property.
            ## @return a void
            ## 
            def external_ip=(value)
                @external_ip = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "agentGroups" => lambda {|n| @agent_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesAgentGroup.create_from_discriminator_value(pn) }) },
                    "externalIp" => lambda {|n| @external_ip = n.get_string_value() },
                    "machineName" => lambda {|n| @machine_name = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::AgentStatus) },
                    "supportedPublishingTypes" => lambda {|n| @supported_publishing_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesPublishingType.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the machineName property value. The name of the machine that the agent is running on. Read-only
            ## @return a string
            ## 
            def machine_name
                return @machine_name
            end
            ## 
            ## Sets the machineName property value. The name of the machine that the agent is running on. Read-only
            ## @param value Value to set for the machineName property.
            ## @return a void
            ## 
            def machine_name=(value)
                @machine_name = value
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
                writer.write_string_value("externalIp", @external_ip)
                writer.write_string_value("machineName", @machine_name)
                writer.write_enum_value("status", @status)
                writer.write_collection_of_object_values("supportedPublishingTypes", @supported_publishing_types)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a agent_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the supportedPublishingTypes property value. The supportedPublishingTypes property
            ## @return a on_premises_publishing_type
            ## 
            def supported_publishing_types
                return @supported_publishing_types
            end
            ## 
            ## Sets the supportedPublishingTypes property value. The supportedPublishingTypes property
            ## @param value Value to set for the supportedPublishingTypes property.
            ## @return a void
            ## 
            def supported_publishing_types=(value)
                @supported_publishing_types = value
            end
        end
    end
end
