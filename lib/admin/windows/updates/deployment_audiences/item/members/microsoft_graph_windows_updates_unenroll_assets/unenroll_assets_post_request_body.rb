require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../models/windows_updates/updatable_asset'
require_relative '../../../../../../../models/windows_updates/update_category'
require_relative '../../../../../../admin'
require_relative '../../../../../windows'
require_relative '../../../../updates'
require_relative '../../../deployment_audiences'
require_relative '../../item'
require_relative '../members'
require_relative './microsoft_graph_windows_updates_unenroll_assets'

module MicrosoftGraphBeta
    module Admin
        module Windows
            module Updates
                module DeploymentAudiences
                    module Item
                        module Members
                            module MicrosoftGraphWindowsUpdatesUnenrollAssets
                                class UnenrollAssetsPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The assets property
                                    @assets
                                    ## 
                                    # The updateCategory property
                                    @update_category
                                    ## 
                                    ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    ## @return a i_dictionary
                                    ## 
                                    def additional_data
                                        return @additional_data
                                    end
                                    ## 
                                    ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    ## @param value Value to set for the additionalData property.
                                    ## @return a void
                                    ## 
                                    def additional_data=(value)
                                        @additional_data = value
                                    end
                                    ## 
                                    ## Gets the assets property value. The assets property
                                    ## @return a updatable_asset
                                    ## 
                                    def assets
                                        return @assets
                                    end
                                    ## 
                                    ## Sets the assets property value. The assets property
                                    ## @param value Value to set for the assets property.
                                    ## @return a void
                                    ## 
                                    def assets=(value)
                                        @assets = value
                                    end
                                    ## 
                                    ## Instantiates a new unenrollAssetsPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a unenroll_assets_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return UnenrollAssetsPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "assets" => lambda {|n| @assets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::UpdatableAsset.create_from_discriminator_value(pn) }) },
                                            "updateCategory" => lambda {|n| @update_category = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdates::UpdateCategory) },
                                        }
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_collection_of_object_values("assets", @assets)
                                        writer.write_enum_value("updateCategory", @update_category)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the updateCategory property value. The updateCategory property
                                    ## @return a update_category
                                    ## 
                                    def update_category
                                        return @update_category
                                    end
                                    ## 
                                    ## Sets the updateCategory property value. The updateCategory property
                                    ## @param value Value to set for the updateCategory property.
                                    ## @return a void
                                    ## 
                                    def update_category=(value)
                                        @update_category = value
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
