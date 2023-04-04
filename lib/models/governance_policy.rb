require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class GovernancePolicy
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The decisionMakerCriteria property
            @decision_maker_criteria
            ## 
            # The notificationPolicy property
            @notification_policy
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new governancePolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a governance_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GovernancePolicy.new
            end
            ## 
            ## Gets the decisionMakerCriteria property value. The decisionMakerCriteria property
            ## @return a governance_criteria
            ## 
            def decision_maker_criteria
                return @decision_maker_criteria
            end
            ## 
            ## Sets the decisionMakerCriteria property value. The decisionMakerCriteria property
            ## @param value Value to set for the decision_maker_criteria property.
            ## @return a void
            ## 
            def decision_maker_criteria=(value)
                @decision_maker_criteria = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "decisionMakerCriteria" => lambda {|n| @decision_maker_criteria = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceCriteria.create_from_discriminator_value(pn) }) },
                    "notificationPolicy" => lambda {|n| @notification_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceNotificationPolicy.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the notificationPolicy property value. The notificationPolicy property
            ## @return a governance_notification_policy
            ## 
            def notification_policy
                return @notification_policy
            end
            ## 
            ## Sets the notificationPolicy property value. The notificationPolicy property
            ## @param value Value to set for the notification_policy property.
            ## @return a void
            ## 
            def notification_policy=(value)
                @notification_policy = value
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
            ## @param value Value to set for the odata_type property.
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
                writer.write_collection_of_object_values("decisionMakerCriteria", @decision_maker_criteria)
                writer.write_object_value("notificationPolicy", @notification_policy)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
