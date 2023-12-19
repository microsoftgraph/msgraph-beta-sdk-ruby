require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AuthorizationSystem < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # ID of the authorization system retrieved from the customer cloud environment. Supports $filter(eq, contains) and $orderBy.
            @authorization_system_id
            ## 
            # Name of the authorization system detected after onboarding. Supports $filter(eq,contains) and $orderBy.
            @authorization_system_name
            ## 
            # The type of authorization system. Can be gcp, azure, or aws. Supports $filter(eq).
            @authorization_system_type
            ## 
            # Defines how and whether Permissions Management collects data from the onboarded authorization system. Supports $filter (eq) as follows:  $filter=dataCollectionInfo/entitlements/permissionsModificationCapability and $filter=dataCollectionInfo/entitlements/status.
            @data_collection_info
            ## 
            ## Gets the authorizationSystemId property value. ID of the authorization system retrieved from the customer cloud environment. Supports $filter(eq, contains) and $orderBy.
            ## @return a string
            ## 
            def authorization_system_id
                return @authorization_system_id
            end
            ## 
            ## Sets the authorizationSystemId property value. ID of the authorization system retrieved from the customer cloud environment. Supports $filter(eq, contains) and $orderBy.
            ## @param value Value to set for the authorizationSystemId property.
            ## @return a void
            ## 
            def authorization_system_id=(value)
                @authorization_system_id = value
            end
            ## 
            ## Gets the authorizationSystemName property value. Name of the authorization system detected after onboarding. Supports $filter(eq,contains) and $orderBy.
            ## @return a string
            ## 
            def authorization_system_name
                return @authorization_system_name
            end
            ## 
            ## Sets the authorizationSystemName property value. Name of the authorization system detected after onboarding. Supports $filter(eq,contains) and $orderBy.
            ## @param value Value to set for the authorizationSystemName property.
            ## @return a void
            ## 
            def authorization_system_name=(value)
                @authorization_system_name = value
            end
            ## 
            ## Gets the authorizationSystemType property value. The type of authorization system. Can be gcp, azure, or aws. Supports $filter(eq).
            ## @return a string
            ## 
            def authorization_system_type
                return @authorization_system_type
            end
            ## 
            ## Sets the authorizationSystemType property value. The type of authorization system. Can be gcp, azure, or aws. Supports $filter(eq).
            ## @param value Value to set for the authorizationSystemType property.
            ## @return a void
            ## 
            def authorization_system_type=(value)
                @authorization_system_type = value
            end
            ## 
            ## Instantiates a new authorizationSystem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authorization_system
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.awsAuthorizationSystem"
                            return AwsAuthorizationSystem.new
                        when "#microsoft.graph.azureAuthorizationSystem"
                            return AzureAuthorizationSystem.new
                        when "#microsoft.graph.gcpAuthorizationSystem"
                            return GcpAuthorizationSystem.new
                    end
                end
                return AuthorizationSystem.new
            end
            ## 
            ## Gets the dataCollectionInfo property value. Defines how and whether Permissions Management collects data from the onboarded authorization system. Supports $filter (eq) as follows:  $filter=dataCollectionInfo/entitlements/permissionsModificationCapability and $filter=dataCollectionInfo/entitlements/status.
            ## @return a data_collection_info
            ## 
            def data_collection_info
                return @data_collection_info
            end
            ## 
            ## Sets the dataCollectionInfo property value. Defines how and whether Permissions Management collects data from the onboarded authorization system. Supports $filter (eq) as follows:  $filter=dataCollectionInfo/entitlements/permissionsModificationCapability and $filter=dataCollectionInfo/entitlements/status.
            ## @param value Value to set for the dataCollectionInfo property.
            ## @return a void
            ## 
            def data_collection_info=(value)
                @data_collection_info = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authorizationSystemId" => lambda {|n| @authorization_system_id = n.get_string_value() },
                    "authorizationSystemName" => lambda {|n| @authorization_system_name = n.get_string_value() },
                    "authorizationSystemType" => lambda {|n| @authorization_system_type = n.get_string_value() },
                    "dataCollectionInfo" => lambda {|n| @data_collection_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DataCollectionInfo.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("authorizationSystemId", @authorization_system_id)
                writer.write_string_value("authorizationSystemName", @authorization_system_name)
                writer.write_string_value("authorizationSystemType", @authorization_system_type)
                writer.write_object_value("dataCollectionInfo", @data_collection_info)
            end
        end
    end
end
