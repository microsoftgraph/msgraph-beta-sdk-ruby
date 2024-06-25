require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessBranchConnectivityConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Unique identifier or a specific reference assigned to a branchSite. Key.
            @branch_id
            ## 
            # Display name assigned to a branchSite.
            @branch_name
            ## 
            # List of connectivity configurations for deviceLink objects.
            @links
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
            ## Gets the branchId property value. Unique identifier or a specific reference assigned to a branchSite. Key.
            ## @return a string
            ## 
            def branch_id
                return @branch_id
            end
            ## 
            ## Sets the branchId property value. Unique identifier or a specific reference assigned to a branchSite. Key.
            ## @param value Value to set for the branchId property.
            ## @return a void
            ## 
            def branch_id=(value)
                @branch_id = value
            end
            ## 
            ## Gets the branchName property value. Display name assigned to a branchSite.
            ## @return a string
            ## 
            def branch_name
                return @branch_name
            end
            ## 
            ## Sets the branchName property value. Display name assigned to a branchSite.
            ## @param value Value to set for the branchName property.
            ## @return a void
            ## 
            def branch_name=(value)
                @branch_name = value
            end
            ## 
            ## Instantiates a new NetworkaccessBranchConnectivityConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_branch_connectivity_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessBranchConnectivityConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "branchId" => lambda {|n| @branch_id = n.get_string_value() },
                    "branchName" => lambda {|n| @branch_name = n.get_string_value() },
                    "links" => lambda {|n| @links = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessConnectivityConfigurationLink.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the links property value. List of connectivity configurations for deviceLink objects.
            ## @return a networkaccess_connectivity_configuration_link
            ## 
            def links
                return @links
            end
            ## 
            ## Sets the links property value. List of connectivity configurations for deviceLink objects.
            ## @param value Value to set for the links property.
            ## @return a void
            ## 
            def links=(value)
                @links = value
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
                writer.write_string_value("branchId", @branch_id)
                writer.write_string_value("branchName", @branch_name)
                writer.write_collection_of_object_values("links", @links)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
