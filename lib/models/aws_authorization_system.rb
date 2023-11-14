require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AwsAuthorizationSystem < MicrosoftGraphBeta::Models::AuthorizationSystem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The actions property
            @actions
            ## 
            # The associatedIdentities property
            @associated_identities
            ## 
            # The policies property
            @policies
            ## 
            # The resources property
            @resources
            ## 
            # The services property
            @services
            ## 
            ## Gets the actions property value. The actions property
            ## @return a aws_authorization_system_type_action
            ## 
            def actions
                return @actions
            end
            ## 
            ## Sets the actions property value. The actions property
            ## @param value Value to set for the actions property.
            ## @return a void
            ## 
            def actions=(value)
                @actions = value
            end
            ## 
            ## Gets the associatedIdentities property value. The associatedIdentities property
            ## @return a aws_associated_identities
            ## 
            def associated_identities
                return @associated_identities
            end
            ## 
            ## Sets the associatedIdentities property value. The associatedIdentities property
            ## @param value Value to set for the associatedIdentities property.
            ## @return a void
            ## 
            def associated_identities=(value)
                @associated_identities = value
            end
            ## 
            ## Instantiates a new awsAuthorizationSystem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.awsAuthorizationSystem"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aws_authorization_system
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AwsAuthorizationSystem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actions" => lambda {|n| @actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AwsAuthorizationSystemTypeAction.create_from_discriminator_value(pn) }) },
                    "associatedIdentities" => lambda {|n| @associated_identities = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AwsAssociatedIdentities.create_from_discriminator_value(pn) }) },
                    "policies" => lambda {|n| @policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AwsPolicy.create_from_discriminator_value(pn) }) },
                    "resources" => lambda {|n| @resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AwsAuthorizationSystemResource.create_from_discriminator_value(pn) }) },
                    "services" => lambda {|n| @services = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemTypeService.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the policies property value. The policies property
            ## @return a aws_policy
            ## 
            def policies
                return @policies
            end
            ## 
            ## Sets the policies property value. The policies property
            ## @param value Value to set for the policies property.
            ## @return a void
            ## 
            def policies=(value)
                @policies = value
            end
            ## 
            ## Gets the resources property value. The resources property
            ## @return a aws_authorization_system_resource
            ## 
            def resources
                return @resources
            end
            ## 
            ## Sets the resources property value. The resources property
            ## @param value Value to set for the resources property.
            ## @return a void
            ## 
            def resources=(value)
                @resources = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("actions", @actions)
                writer.write_object_value("associatedIdentities", @associated_identities)
                writer.write_collection_of_object_values("policies", @policies)
                writer.write_collection_of_object_values("resources", @resources)
                writer.write_collection_of_object_values("services", @services)
            end
            ## 
            ## Gets the services property value. The services property
            ## @return a authorization_system_type_service
            ## 
            def services
                return @services
            end
            ## 
            ## Sets the services property value. The services property
            ## @param value Value to set for the services property.
            ## @return a void
            ## 
            def services=(value)
                @services = value
            end
        end
    end
end
