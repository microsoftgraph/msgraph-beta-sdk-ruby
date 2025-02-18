require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AwsIdentityAccessManagementKeyUsageFinding < MicrosoftGraphBeta::Models::Finding
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessKey property
            @access_key
            ## 
            # The actionSummary property
            @action_summary
            ## 
            # The awsAccessKeyDetails property
            @aws_access_key_details
            ## 
            # The permissionsCreepIndex property
            @permissions_creep_index
            ## 
            # The status property
            @status
            ## 
            ## Gets the accessKey property value. The accessKey property
            ## @return a aws_access_key
            ## 
            def access_key
                return @access_key
            end
            ## 
            ## Sets the accessKey property value. The accessKey property
            ## @param value Value to set for the accessKey property.
            ## @return a void
            ## 
            def access_key=(value)
                @access_key = value
            end
            ## 
            ## Gets the actionSummary property value. The actionSummary property
            ## @return a action_summary
            ## 
            def action_summary
                return @action_summary
            end
            ## 
            ## Sets the actionSummary property value. The actionSummary property
            ## @param value Value to set for the actionSummary property.
            ## @return a void
            ## 
            def action_summary=(value)
                @action_summary = value
            end
            ## 
            ## Gets the awsAccessKeyDetails property value. The awsAccessKeyDetails property
            ## @return a aws_access_key_details
            ## 
            def aws_access_key_details
                return @aws_access_key_details
            end
            ## 
            ## Sets the awsAccessKeyDetails property value. The awsAccessKeyDetails property
            ## @param value Value to set for the awsAccessKeyDetails property.
            ## @return a void
            ## 
            def aws_access_key_details=(value)
                @aws_access_key_details = value
            end
            ## 
            ## Instantiates a new AwsIdentityAccessManagementKeyUsageFinding and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a aws_identity_access_management_key_usage_finding
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AwsIdentityAccessManagementKeyUsageFinding.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessKey" => lambda {|n| @access_key = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AwsAccessKey.create_from_discriminator_value(pn) }) },
                    "actionSummary" => lambda {|n| @action_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ActionSummary.create_from_discriminator_value(pn) }) },
                    "awsAccessKeyDetails" => lambda {|n| @aws_access_key_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AwsAccessKeyDetails.create_from_discriminator_value(pn) }) },
                    "permissionsCreepIndex" => lambda {|n| @permissions_creep_index = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PermissionsCreepIndex.create_from_discriminator_value(pn) }) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::IamStatus) },
                })
            end
            ## 
            ## Gets the permissionsCreepIndex property value. The permissionsCreepIndex property
            ## @return a permissions_creep_index
            ## 
            def permissions_creep_index
                return @permissions_creep_index
            end
            ## 
            ## Sets the permissionsCreepIndex property value. The permissionsCreepIndex property
            ## @param value Value to set for the permissionsCreepIndex property.
            ## @return a void
            ## 
            def permissions_creep_index=(value)
                @permissions_creep_index = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("accessKey", @access_key)
                writer.write_object_value("actionSummary", @action_summary)
                writer.write_object_value("awsAccessKeyDetails", @aws_access_key_details)
                writer.write_object_value("permissionsCreepIndex", @permissions_creep_index)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a iam_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
