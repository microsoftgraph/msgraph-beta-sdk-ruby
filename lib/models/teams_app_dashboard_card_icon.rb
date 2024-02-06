require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamsAppDashboardCardIcon
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The iconUrl property
            @icon_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The officeUIFabricIconName property
            @office_u_i_fabric_icon_name
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
            ## Instantiates a new teamsAppDashboardCardIcon and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teams_app_dashboard_card_icon
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamsAppDashboardCardIcon.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "iconUrl" => lambda {|n| @icon_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "officeUIFabricIconName" => lambda {|n| @office_u_i_fabric_icon_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the iconUrl property value. The iconUrl property
            ## @return a string
            ## 
            def icon_url
                return @icon_url
            end
            ## 
            ## Sets the iconUrl property value. The iconUrl property
            ## @param value Value to set for the iconUrl property.
            ## @return a void
            ## 
            def icon_url=(value)
                @icon_url = value
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
            ## Gets the officeUIFabricIconName property value. The officeUIFabricIconName property
            ## @return a string
            ## 
            def office_u_i_fabric_icon_name
                return @office_u_i_fabric_icon_name
            end
            ## 
            ## Sets the officeUIFabricIconName property value. The officeUIFabricIconName property
            ## @param value Value to set for the officeUIFabricIconName property.
            ## @return a void
            ## 
            def office_u_i_fabric_icon_name=(value)
                @office_u_i_fabric_icon_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("iconUrl", @icon_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("officeUIFabricIconName", @office_u_i_fabric_icon_name)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
