require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EnumeratedDomains < MicrosoftGraphBeta::Models::ValidatingDomains
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The domainNames property
            @domain_names
            ## 
            ## Instantiates a new EnumeratedDomains and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.enumeratedDomains"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a enumerated_domains
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EnumeratedDomains.new
            end
            ## 
            ## Gets the domainNames property value. The domainNames property
            ## @return a string
            ## 
            def domain_names
                return @domain_names
            end
            ## 
            ## Sets the domainNames property value. The domainNames property
            ## @param value Value to set for the domain_names property.
            ## @return a void
            ## 
            def domain_names=(value)
                @domain_names = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "domainNames" => lambda {|n| @domain_names = n.get_collection_of_primitive_values(String) },
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
                writer.write_collection_of_primitive_values("domainNames", @domain_names)
            end
        end
    end
end
