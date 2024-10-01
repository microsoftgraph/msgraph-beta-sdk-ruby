require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TrainingCampaignReport
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The overview of the attack simulation and training campaign.
            @campaign_users
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The overview property
            @overview
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
            ## Gets the campaignUsers property value. The overview of the attack simulation and training campaign.
            ## @return a user_simulation_details
            ## 
            def campaign_users
                return @campaign_users
            end
            ## 
            ## Sets the campaignUsers property value. The overview of the attack simulation and training campaign.
            ## @param value Value to set for the campaignUsers property.
            ## @return a void
            ## 
            def campaign_users=(value)
                @campaign_users = value
            end
            ## 
            ## Instantiates a new TrainingCampaignReport and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a training_campaign_report
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TrainingCampaignReport.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "campaignUsers" => lambda {|n| @campaign_users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserSimulationDetails.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "overview" => lambda {|n| @overview = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TrainingCampaignReportOverview.create_from_discriminator_value(pn) }) },
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
            ## Gets the overview property value. The overview property
            ## @return a training_campaign_report_overview
            ## 
            def overview
                return @overview
            end
            ## 
            ## Sets the overview property value. The overview property
            ## @param value Value to set for the overview property.
            ## @return a void
            ## 
            def overview=(value)
                @overview = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("campaignUsers", @campaign_users)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("overview", @overview)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
