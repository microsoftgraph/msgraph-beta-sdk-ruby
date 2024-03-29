require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/external_connectors_external_activity'
require_relative '../../../../connections'
require_relative '../../../item'
require_relative '../../items'
require_relative '../item'
require_relative './microsoft_graph_external_connectors_add_activities'

module MicrosoftGraphBeta
    module Connections
        module Item
            module Items
                module Item
                    module MicrosoftGraphExternalConnectorsAddActivities
                        class AddActivitiesPostRequestBody
                            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                            ## 
                            # The activities property
                            @activities
                            ## 
                            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                            @additional_data
                            ## 
                            ## Gets the activities property value. The activities property
                            ## @return a external_connectors_external_activity
                            ## 
                            def activities
                                return @activities
                            end
                            ## 
                            ## Sets the activities property value. The activities property
                            ## @param value Value to set for the activities property.
                            ## @return a void
                            ## 
                            def activities=(value)
                                @activities = value
                            end
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
                            ## Instantiates a new addActivitiesPostRequestBody and sets the default values.
                            ## @return a void
                            ## 
                            def initialize()
                                @additional_data = Hash.new
                            end
                            ## 
                            ## Creates a new instance of the appropriate class based on discriminator value
                            ## @param parse_node The parse node to use to read the discriminator value and create the object
                            ## @return a add_activities_post_request_body
                            ## 
                            def self.create_from_discriminator_value(parse_node)
                                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                return AddActivitiesPostRequestBody.new
                            end
                            ## 
                            ## The deserialization information for the current model
                            ## @return a i_dictionary
                            ## 
                            def get_field_deserializers()
                                return {
                                    "activities" => lambda {|n| @activities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ExternalConnectorsExternalActivity.create_from_discriminator_value(pn) }) },
                                }
                            end
                            ## 
                            ## Serializes information the current object
                            ## @param writer Serialization writer to use to serialize this model
                            ## @return a void
                            ## 
                            def serialize(writer)
                                raise StandardError, 'writer cannot be null' if writer.nil?
                                writer.write_collection_of_object_values("activities", @activities)
                                writer.write_additional_data(@additional_data)
                            end
                        end
                    end
                end
            end
        end
    end
end
