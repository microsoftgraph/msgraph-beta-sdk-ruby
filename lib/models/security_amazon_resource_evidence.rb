require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityAmazonResourceEvidence < MicrosoftGraphBeta::Models::SecurityAlertEvidence
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The unique identifier for the Amazon account.
            @amazon_account_id
            ## 
            # The Amazon resource identifier (ARN) for the cloud resource.
            @amazon_resource_id
            ## 
            # The name of the resource.
            @resource_name
            ## 
            # The type of the resource.
            @resource_type
            ## 
            ## Gets the amazonAccountId property value. The unique identifier for the Amazon account.
            ## @return a string
            ## 
            def amazon_account_id
                return @amazon_account_id
            end
            ## 
            ## Sets the amazonAccountId property value. The unique identifier for the Amazon account.
            ## @param value Value to set for the amazonAccountId property.
            ## @return a void
            ## 
            def amazon_account_id=(value)
                @amazon_account_id = value
            end
            ## 
            ## Gets the amazonResourceId property value. The Amazon resource identifier (ARN) for the cloud resource.
            ## @return a string
            ## 
            def amazon_resource_id
                return @amazon_resource_id
            end
            ## 
            ## Sets the amazonResourceId property value. The Amazon resource identifier (ARN) for the cloud resource.
            ## @param value Value to set for the amazonResourceId property.
            ## @return a void
            ## 
            def amazon_resource_id=(value)
                @amazon_resource_id = value
            end
            ## 
            ## Instantiates a new securityAmazonResourceEvidence and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.amazonResourceEvidence"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_amazon_resource_evidence
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityAmazonResourceEvidence.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "amazonAccountId" => lambda {|n| @amazon_account_id = n.get_string_value() },
                    "amazonResourceId" => lambda {|n| @amazon_resource_id = n.get_string_value() },
                    "resourceName" => lambda {|n| @resource_name = n.get_string_value() },
                    "resourceType" => lambda {|n| @resource_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the resourceName property value. The name of the resource.
            ## @return a string
            ## 
            def resource_name
                return @resource_name
            end
            ## 
            ## Sets the resourceName property value. The name of the resource.
            ## @param value Value to set for the resourceName property.
            ## @return a void
            ## 
            def resource_name=(value)
                @resource_name = value
            end
            ## 
            ## Gets the resourceType property value. The type of the resource.
            ## @return a string
            ## 
            def resource_type
                return @resource_type
            end
            ## 
            ## Sets the resourceType property value. The type of the resource.
            ## @param value Value to set for the resourceType property.
            ## @return a void
            ## 
            def resource_type=(value)
                @resource_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("amazonAccountId", @amazon_account_id)
                writer.write_string_value("amazonResourceId", @amazon_resource_id)
                writer.write_string_value("resourceName", @resource_name)
                writer.write_string_value("resourceType", @resource_type)
            end
        end
    end
end
