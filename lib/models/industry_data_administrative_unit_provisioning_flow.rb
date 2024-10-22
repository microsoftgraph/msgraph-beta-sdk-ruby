require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataAdministrativeUnitProvisioningFlow < MicrosoftGraphBeta::Models::IndustryDataProvisioningFlow
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The creationOptions property
            @creation_options
            ## 
            ## Instantiates a new IndustryDataAdministrativeUnitProvisioningFlow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.industryData.administrativeUnitProvisioningFlow"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_administrative_unit_provisioning_flow
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IndustryDataAdministrativeUnitProvisioningFlow.new
            end
            ## 
            ## Gets the creationOptions property value. The creationOptions property
            ## @return a industry_data_admin_unit_creation_options
            ## 
            def creation_options
                return @creation_options
            end
            ## 
            ## Sets the creationOptions property value. The creationOptions property
            ## @param value Value to set for the creationOptions property.
            ## @return a void
            ## 
            def creation_options=(value)
                @creation_options = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "creationOptions" => lambda {|n| @creation_options = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IndustryDataAdminUnitCreationOptions.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("creationOptions", @creation_options)
            end
        end
    end
end
