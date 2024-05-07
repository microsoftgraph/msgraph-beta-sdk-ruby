require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataAdminUnitCreationOptions
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether the administrative unit should be created based on the org.
            @create_based_on_org
            ## 
            # Indicates whether the administrative unit should be created based on the org and role group.
            @create_based_on_org_plus_role_group
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new IndustryDataAdminUnitCreationOptions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the createBasedOnOrg property value. Indicates whether the administrative unit should be created based on the org.
            ## @return a boolean
            ## 
            def create_based_on_org
                return @create_based_on_org
            end
            ## 
            ## Sets the createBasedOnOrg property value. Indicates whether the administrative unit should be created based on the org.
            ## @param value Value to set for the createBasedOnOrg property.
            ## @return a void
            ## 
            def create_based_on_org=(value)
                @create_based_on_org = value
            end
            ## 
            ## Gets the createBasedOnOrgPlusRoleGroup property value. Indicates whether the administrative unit should be created based on the org and role group.
            ## @return a boolean
            ## 
            def create_based_on_org_plus_role_group
                return @create_based_on_org_plus_role_group
            end
            ## 
            ## Sets the createBasedOnOrgPlusRoleGroup property value. Indicates whether the administrative unit should be created based on the org and role group.
            ## @param value Value to set for the createBasedOnOrgPlusRoleGroup property.
            ## @return a void
            ## 
            def create_based_on_org_plus_role_group=(value)
                @create_based_on_org_plus_role_group = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_admin_unit_creation_options
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IndustryDataAdminUnitCreationOptions.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "createBasedOnOrg" => lambda {|n| @create_based_on_org = n.get_boolean_value() },
                    "createBasedOnOrgPlusRoleGroup" => lambda {|n| @create_based_on_org_plus_role_group = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("createBasedOnOrg", @create_based_on_org)
                writer.write_boolean_value("createBasedOnOrgPlusRoleGroup", @create_based_on_org_plus_role_group)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
