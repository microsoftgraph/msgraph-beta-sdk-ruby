require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GsuiteSource < MicrosoftGraphBeta::Models::AuthorizationSystemIdentitySource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Domain name
            @domain
            ## 
            ## Instantiates a new GsuiteSource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.gsuiteSource"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a gsuite_source
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GsuiteSource.new
            end
            ## 
            ## Gets the domain property value. Domain name
            ## @return a string
            ## 
            def domain
                return @domain
            end
            ## 
            ## Sets the domain property value. Domain name
            ## @param value Value to set for the domain property.
            ## @return a void
            ## 
            def domain=(value)
                @domain = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "domain" => lambda {|n| @domain = n.get_string_value() },
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
                writer.write_string_value("domain", @domain)
            end
        end
    end
end
