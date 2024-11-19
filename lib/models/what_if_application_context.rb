require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WhatIfApplicationContext < MicrosoftGraphBeta::Models::ConditionalAccessContext
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The includeApplications property
            @include_applications
            ## 
            ## Instantiates a new WhatIfApplicationContext and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.whatIfApplicationContext"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a what_if_application_context
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WhatIfApplicationContext.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "includeApplications" => lambda {|n| @include_applications = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the includeApplications property value. The includeApplications property
            ## @return a string
            ## 
            def include_applications
                return @include_applications
            end
            ## 
            ## Sets the includeApplications property value. The includeApplications property
            ## @param value Value to set for the includeApplications property.
            ## @return a void
            ## 
            def include_applications=(value)
                @include_applications = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("includeApplications", @include_applications)
            end
        end
    end
end
