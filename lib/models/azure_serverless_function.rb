require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AzureServerlessFunction < MicrosoftGraphBeta::Models::AzureIdentity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The resource property
            @resource
            ## 
            ## Instantiates a new azureServerlessFunction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.azureServerlessFunction"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a azure_serverless_function
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AzureServerlessFunction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "resource" => lambda {|n| @resource = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AzureAuthorizationSystemResource.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the resource property value. The resource property
            ## @return a azure_authorization_system_resource
            ## 
            def resource
                return @resource
            end
            ## 
            ## Sets the resource property value. The resource property
            ## @param value Value to set for the resource property.
            ## @return a void
            ## 
            def resource=(value)
                @resource = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("resource", @resource)
            end
        end
    end
end
