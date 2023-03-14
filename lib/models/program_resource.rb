require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ProgramResource < MicrosoftGraphBeta::Models::Identity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Type of the resource, indicating whether it is a group or an app.
            @type
            ## 
            ## Instantiates a new ProgramResource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.programResource"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a program_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProgramResource.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "type" => lambda {|n| @type = n.get_string_value() },
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
                writer.write_string_value("type", @type)
            end
            ## 
            ## Gets the type property value. Type of the resource, indicating whether it is a group or an app.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. Type of the resource, indicating whether it is a group or an app.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
