require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AttackSimulationRoot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents an attack simulation training operation.
            @operations
            ## 
            # Represents an attack simulation training campaign payload in a tenant.
            @payloads
            ## 
            # Represents simulation automation created to run on a tenant.
            @simulation_automations
            ## 
            # Represents an attack simulation training campaign in a tenant.
            @simulations
            ## 
            ## Instantiates a new attackSimulationRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a attack_simulation_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttackSimulationRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "operations" => lambda {|n| @operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AttackSimulationOperation.create_from_discriminator_value(pn) }) },
                    "payloads" => lambda {|n| @payloads = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Payload.create_from_discriminator_value(pn) }) },
                    "simulationAutomations" => lambda {|n| @simulation_automations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SimulationAutomation.create_from_discriminator_value(pn) }) },
                    "simulations" => lambda {|n| @simulations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Simulation.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the operations property value. Represents an attack simulation training operation.
            ## @return a attack_simulation_operation
            ## 
            def operations
                return @operations
            end
            ## 
            ## Sets the operations property value. Represents an attack simulation training operation.
            ## @param value Value to set for the operations property.
            ## @return a void
            ## 
            def operations=(value)
                @operations = value
            end
            ## 
            ## Gets the payloads property value. Represents an attack simulation training campaign payload in a tenant.
            ## @return a payload
            ## 
            def payloads
                return @payloads
            end
            ## 
            ## Sets the payloads property value. Represents an attack simulation training campaign payload in a tenant.
            ## @param value Value to set for the payloads property.
            ## @return a void
            ## 
            def payloads=(value)
                @payloads = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("operations", @operations)
                writer.write_collection_of_object_values("payloads", @payloads)
                writer.write_collection_of_object_values("simulationAutomations", @simulation_automations)
                writer.write_collection_of_object_values("simulations", @simulations)
            end
            ## 
            ## Gets the simulationAutomations property value. Represents simulation automation created to run on a tenant.
            ## @return a simulation_automation
            ## 
            def simulation_automations
                return @simulation_automations
            end
            ## 
            ## Sets the simulationAutomations property value. Represents simulation automation created to run on a tenant.
            ## @param value Value to set for the simulation_automations property.
            ## @return a void
            ## 
            def simulation_automations=(value)
                @simulation_automations = value
            end
            ## 
            ## Gets the simulations property value. Represents an attack simulation training campaign in a tenant.
            ## @return a simulation
            ## 
            def simulations
                return @simulations
            end
            ## 
            ## Sets the simulations property value. Represents an attack simulation training campaign in a tenant.
            ## @param value Value to set for the simulations property.
            ## @return a void
            ## 
            def simulations=(value)
                @simulations = value
            end
        end
    end
end
