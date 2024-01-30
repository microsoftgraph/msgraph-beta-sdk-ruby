require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExternallyAccessibleAwsStorageBucketFinding < MicrosoftGraphBeta::Models::Finding
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessibility property
            @accessibility
            ## 
            # The accountsWithAccess property
            @accounts_with_access
            ## 
            # The storageBucket property
            @storage_bucket
            ## 
            ## Gets the accessibility property value. The accessibility property
            ## @return a aws_access_type
            ## 
            def accessibility
                return @accessibility
            end
            ## 
            ## Sets the accessibility property value. The accessibility property
            ## @param value Value to set for the accessibility property.
            ## @return a void
            ## 
            def accessibility=(value)
                @accessibility = value
            end
            ## 
            ## Gets the accountsWithAccess property value. The accountsWithAccess property
            ## @return a accounts_with_access
            ## 
            def accounts_with_access
                return @accounts_with_access
            end
            ## 
            ## Sets the accountsWithAccess property value. The accountsWithAccess property
            ## @param value Value to set for the accountsWithAccess property.
            ## @return a void
            ## 
            def accounts_with_access=(value)
                @accounts_with_access = value
            end
            ## 
            ## Instantiates a new externallyAccessibleAwsStorageBucketFinding and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a externally_accessible_aws_storage_bucket_finding
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExternallyAccessibleAwsStorageBucketFinding.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessibility" => lambda {|n| @accessibility = n.get_enum_value(MicrosoftGraphBeta::Models::AwsAccessType) },
                    "accountsWithAccess" => lambda {|n| @accounts_with_access = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccountsWithAccess.create_from_discriminator_value(pn) }) },
                    "storageBucket" => lambda {|n| @storage_bucket = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemResource.create_from_discriminator_value(pn) }) },
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
                writer.write_enum_value("accessibility", @accessibility)
                writer.write_object_value("accountsWithAccess", @accounts_with_access)
                writer.write_object_value("storageBucket", @storage_bucket)
            end
            ## 
            ## Gets the storageBucket property value. The storageBucket property
            ## @return a authorization_system_resource
            ## 
            def storage_bucket
                return @storage_bucket
            end
            ## 
            ## Sets the storageBucket property value. The storageBucket property
            ## @param value Value to set for the storageBucket property.
            ## @return a void
            ## 
            def storage_bucket=(value)
                @storage_bucket = value
            end
        end
    end
end
