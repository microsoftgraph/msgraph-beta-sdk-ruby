require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AwsPolicy < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The awsPolicyType property
            @aws_policy_type
            ## 
            # The display name for the AWS policy. Read-only. Supports $filter and (eq,contains).
            @display_name
            ## 
            # The base64 encoded identifier for the AWS policy as defined by AWS. Read-only. Alternate key. Supports $filter and eq.
            @external_id
            ## 
            ## Gets the awsPolicyType property value. The awsPolicyType property
            ## @return a aws_policy_type
            ## 
            def aws_policy_type
                return @aws_policy_type
            end
            ## 
            ## Sets the awsPolicyType property value. The awsPolicyType property
            ## @param value Value to set for the awsPolicyType property.
            ## @return a void
            ## 
            def aws_policy_type=(value)
                @aws_policy_type = value
            end
            ## 
            ## Instantiates a new awsPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aws_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AwsPolicy.new
            end
            ## 
            ## Gets the displayName property value. The display name for the AWS policy. Read-only. Supports $filter and (eq,contains).
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the AWS policy. Read-only. Supports $filter and (eq,contains).
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the externalId property value. The base64 encoded identifier for the AWS policy as defined by AWS. Read-only. Alternate key. Supports $filter and eq.
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. The base64 encoded identifier for the AWS policy as defined by AWS. Read-only. Alternate key. Supports $filter and eq.
            ## @param value Value to set for the externalId property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "awsPolicyType" => lambda {|n| @aws_policy_type = n.get_enum_value(MicrosoftGraphBeta::Models::AwsPolicyType) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
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
                writer.write_enum_value("awsPolicyType", @aws_policy_type)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("externalId", @external_id)
            end
        end
    end
end
