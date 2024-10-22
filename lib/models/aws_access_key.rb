require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AwsAccessKey < MicrosoftGraphBeta::Models::AwsIdentity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the owner of the access key.
            @owner
            ## 
            ## Instantiates a new AwsAccessKey and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.awsAccessKey"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aws_access_key
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AwsAccessKey.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "owner" => lambda {|n| @owner = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AwsUser.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the owner property value. Represents the owner of the access key.
            ## @return a aws_user
            ## 
            def owner
                return @owner
            end
            ## 
            ## Sets the owner property value. Represents the owner of the access key.
            ## @param value Value to set for the owner property.
            ## @return a void
            ## 
            def owner=(value)
                @owner = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("owner", @owner)
            end
        end
    end
end
