require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/group_policy_object_file'
require_relative '../../device_management'
require_relative '../group_policy_migration_reports'
require_relative './microsoft_graph_create_migration_report'

module MicrosoftGraphBeta
    module DeviceManagement
        module GroupPolicyMigrationReports
            module MicrosoftGraphCreateMigrationReport
                class CreateMigrationReportPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The groupPolicyObjectFile property
                    @group_policy_object_file
                    ## 
                    ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    ## @return a i_dictionary
                    ## 
                    def additional_data
                        return @additional_data
                    end
                    ## 
                    ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    ## @param value Value to set for the AdditionalData property.
                    ## @return a void
                    ## 
                    def additional_data=(value)
                        @additional_data = value
                    end
                    ## 
                    ## Instantiates a new createMigrationReportPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a create_migration_report_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return CreateMigrationReportPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "groupPolicyObjectFile" => lambda {|n| @group_policy_object_file = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyObjectFile.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Gets the groupPolicyObjectFile property value. The groupPolicyObjectFile property
                    ## @return a group_policy_object_file
                    ## 
                    def group_policy_object_file
                        return @group_policy_object_file
                    end
                    ## 
                    ## Sets the groupPolicyObjectFile property value. The groupPolicyObjectFile property
                    ## @param value Value to set for the group_policy_object_file property.
                    ## @return a void
                    ## 
                    def group_policy_object_file=(value)
                        @group_policy_object_file = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("groupPolicyObjectFile", @group_policy_object_file)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
