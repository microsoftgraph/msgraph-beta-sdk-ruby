require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './industry_data'

module MicrosoftGraphBeta
    module Models
        module IndustryData
            class IndustryDataRoot < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Set of connectors for importing data from source systems.
                @data_connectors
                ## 
                # Set of data import flow activities to bring data into the canonical store via a connector.
                @inbound_flows
                ## 
                # Set of ephemeral operations that the system runs currently. Read-only.
                @operations
                ## 
                # Set of user modifiable system picker types.
                @reference_definitions
                ## 
                # Set of groups of individual roles that makes role-based admin simpler.
                @role_groups
                ## 
                # Set of ephemeral runs which present the point-in-time that diagnostic state of activities performed by the system. Read-only.
                @runs
                ## 
                # Set of source definitions that represents real-world external systems.
                @source_systems
                ## 
                # Set of years represented in the system.
                @years
                ## 
                ## Instantiates a new IndustryDataRoot and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a industry_data_root
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return IndustryDataRoot.new
                end
                ## 
                ## Gets the dataConnectors property value. Set of connectors for importing data from source systems.
                ## @return a industry_data_connector
                ## 
                def data_connectors
                    return @data_connectors
                end
                ## 
                ## Sets the dataConnectors property value. Set of connectors for importing data from source systems.
                ## @param value Value to set for the data_connectors property.
                ## @return a void
                ## 
                def data_connectors=(value)
                    @data_connectors = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "dataConnectors" => lambda {|n| @data_connectors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::IndustryDataConnector.create_from_discriminator_value(pn) }) },
                        "inboundFlows" => lambda {|n| @inbound_flows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::InboundFlow.create_from_discriminator_value(pn) }) },
                        "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::LongRunningOperation.create_from_discriminator_value(pn) }) },
                        "referenceDefinitions" => lambda {|n| @reference_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::ReferenceDefinition.create_from_discriminator_value(pn) }) },
                        "roleGroups" => lambda {|n| @role_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::RoleGroup.create_from_discriminator_value(pn) }) },
                        "runs" => lambda {|n| @runs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::IndustryDataRun.create_from_discriminator_value(pn) }) },
                        "sourceSystems" => lambda {|n| @source_systems = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::SourceSystemDefinition.create_from_discriminator_value(pn) }) },
                        "years" => lambda {|n| @years = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IndustryData::YearTimePeriodDefinition.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the inboundFlows property value. Set of data import flow activities to bring data into the canonical store via a connector.
                ## @return a inbound_flow
                ## 
                def inbound_flows
                    return @inbound_flows
                end
                ## 
                ## Sets the inboundFlows property value. Set of data import flow activities to bring data into the canonical store via a connector.
                ## @param value Value to set for the inbound_flows property.
                ## @return a void
                ## 
                def inbound_flows=(value)
                    @inbound_flows = value
                end
                ## 
                ## Gets the operations property value. Set of ephemeral operations that the system runs currently. Read-only.
                ## @return a long_running_operation
                ## 
                def operations
                    return @operations
                end
                ## 
                ## Sets the operations property value. Set of ephemeral operations that the system runs currently. Read-only.
                ## @param value Value to set for the operations property.
                ## @return a void
                ## 
                def operations=(value)
                    @operations = value
                end
                ## 
                ## Gets the referenceDefinitions property value. Set of user modifiable system picker types.
                ## @return a reference_definition
                ## 
                def reference_definitions
                    return @reference_definitions
                end
                ## 
                ## Sets the referenceDefinitions property value. Set of user modifiable system picker types.
                ## @param value Value to set for the reference_definitions property.
                ## @return a void
                ## 
                def reference_definitions=(value)
                    @reference_definitions = value
                end
                ## 
                ## Gets the roleGroups property value. Set of groups of individual roles that makes role-based admin simpler.
                ## @return a role_group
                ## 
                def role_groups
                    return @role_groups
                end
                ## 
                ## Sets the roleGroups property value. Set of groups of individual roles that makes role-based admin simpler.
                ## @param value Value to set for the role_groups property.
                ## @return a void
                ## 
                def role_groups=(value)
                    @role_groups = value
                end
                ## 
                ## Gets the runs property value. Set of ephemeral runs which present the point-in-time that diagnostic state of activities performed by the system. Read-only.
                ## @return a industry_data_run
                ## 
                def runs
                    return @runs
                end
                ## 
                ## Sets the runs property value. Set of ephemeral runs which present the point-in-time that diagnostic state of activities performed by the system. Read-only.
                ## @param value Value to set for the runs property.
                ## @return a void
                ## 
                def runs=(value)
                    @runs = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_collection_of_object_values("dataConnectors", @data_connectors)
                    writer.write_collection_of_object_values("inboundFlows", @inbound_flows)
                    writer.write_collection_of_object_values("operations", @operations)
                    writer.write_collection_of_object_values("referenceDefinitions", @reference_definitions)
                    writer.write_collection_of_object_values("roleGroups", @role_groups)
                    writer.write_collection_of_object_values("runs", @runs)
                    writer.write_collection_of_object_values("sourceSystems", @source_systems)
                    writer.write_collection_of_object_values("years", @years)
                end
                ## 
                ## Gets the sourceSystems property value. Set of source definitions that represents real-world external systems.
                ## @return a source_system_definition
                ## 
                def source_systems
                    return @source_systems
                end
                ## 
                ## Sets the sourceSystems property value. Set of source definitions that represents real-world external systems.
                ## @param value Value to set for the source_systems property.
                ## @return a void
                ## 
                def source_systems=(value)
                    @source_systems = value
                end
                ## 
                ## Gets the years property value. Set of years represented in the system.
                ## @return a year_time_period_definition
                ## 
                def years
                    return @years
                end
                ## 
                ## Sets the years property value. Set of years represented in the system.
                ## @param value Value to set for the years property.
                ## @return a void
                ## 
                def years=(value)
                    @years = value
                end
            end
        end
    end
end
