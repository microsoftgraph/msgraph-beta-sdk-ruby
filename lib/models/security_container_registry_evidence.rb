require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityContainerRegistryEvidence < MicrosoftGraphBeta::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The registry URI.
            @registry
            ## 
            ## Instantiates a new securityContainerRegistryEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.containerRegistryEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_container_registry_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityContainerRegistryEvidence.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "registry" => lambda {|n| @registry = n.get_string_value() },
                })
            end
            ## 
            ## Gets the registry property value. The registry URI.
            ## @return a string
            ## 
            def registry
                return @registry
            end
            ## 
            ## Sets the registry property value. The registry URI.
            ## @param value Value to set for the registry property.
            ## @return a void
            ## 
            def registry=(value)
                @registry = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("registry", @registry)
            end
        end
    end
end
