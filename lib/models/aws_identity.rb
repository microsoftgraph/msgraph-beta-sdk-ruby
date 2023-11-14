require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AwsIdentity < MicrosoftGraphBeta::Models::AuthorizationSystemIdentity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            ## Instantiates a new awsIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.awsIdentity"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aws_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.awsAccessKey"
                            return AwsAccessKey.new
                        when "#microsoft.graph.awsEc2Instance"
                            return AwsEc2Instance.new
                        when "#microsoft.graph.awsGroup"
                            return AwsGroup.new
                        when "#microsoft.graph.awsLambda"
                            return AwsLambda.new
                        when "#microsoft.graph.awsRole"
                            return AwsRole.new
                        when "#microsoft.graph.awsUser"
                            return AwsUser.new
                    end
                end
                return AwsIdentity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
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
            end
        end
    end
end
