require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AwsAuthorizationSystemResource < MicrosoftGraphBeta::Models::AuthorizationSystemResource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The service property
            @service
            ## 
            ## Instantiates a new awsAuthorizationSystemResource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aws_authorization_system_resource
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AwsAuthorizationSystemResource.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "service" => lambda {|n| @service = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemTypeService.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("service", @service)
            end
            ## 
            ## Gets the service property value. The service property
            ## @return a authorization_system_type_service
            ## 
            def service
                return @service
            end
            ## 
            ## Sets the service property value. The service property
            ## @param value Value to set for the service property.
            ## @return a void
            ## 
            def service=(value)
                @service = value
            end
        end
    end
end
