require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AwsSource < MicrosoftGraphBeta::Models::AuthorizationSystemIdentitySource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # AWS account ID.
            @account_id
            ## 
            ## Gets the accountId property value. AWS account ID.
            ## @return a string
            ## 
            def account_id
                return @account_id
            end
            ## 
            ## Sets the accountId property value. AWS account ID.
            ## @param value Value to set for the accountId property.
            ## @return a void
            ## 
            def account_id=(value)
                @account_id = value
            end
            ## 
            ## Instantiates a new awsSource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.awsSource"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aws_source
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AwsSource.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountId" => lambda {|n| @account_id = n.get_string_value() },
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
                writer.write_string_value("accountId", @account_id)
            end
        end
    end
end
