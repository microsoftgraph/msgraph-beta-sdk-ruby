require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class VirtualMachineDetails < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The virtualMachine property
            @virtual_machine
            ## 
            ## Instantiates a new VirtualMachineDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a virtual_machine_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VirtualMachineDetails.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "virtualMachine" => lambda {|n| @virtual_machine = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemResource.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("virtualMachine", @virtual_machine)
            end
            ## 
            ## Gets the virtualMachine property value. The virtualMachine property
            ## @return a authorization_system_resource
            ## 
            def virtual_machine
                return @virtual_machine
            end
            ## 
            ## Sets the virtualMachine property value. The virtualMachine property
            ## @param value Value to set for the virtualMachine property.
            ## @return a void
            ## 
            def virtual_machine=(value)
                @virtual_machine = value
            end
        end
    end
end
