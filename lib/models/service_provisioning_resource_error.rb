require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ServiceProvisioningResourceError < MicrosoftGraphBeta::Models::ServiceProvisioningError
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The errors property
            @errors
            ## 
            ## Instantiates a new serviceProvisioningResourceError and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.serviceProvisioningResourceError"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a service_provisioning_resource_error
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ServiceProvisioningResourceError.new
            end
            ## 
            ## Gets the errors property value. The errors property
            ## @return a service_provisioning_resource_error_detail
            ## 
            def errors
                return @errors
            end
            ## 
            ## Sets the errors property value. The errors property
            ## @param value Value to set for the errors property.
            ## @return a void
            ## 
            def errors=(value)
                @errors = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "errors" => lambda {|n| @errors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ServiceProvisioningResourceErrorDetail.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("errors", @errors)
            end
        end
    end
end
