require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserTrainingCompletionSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The completedUsersCount property
            @completed_users_count
            ## 
            # The inProgressUsersCount property
            @in_progress_users_count
            ## 
            # The notCompletedUsersCount property
            @not_completed_users_count
            ## 
            # The notStartedUsersCount property
            @not_started_users_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The previouslyAssignedUsersCount property
            @previously_assigned_users_count
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
            ## Gets the completedUsersCount property value. The completedUsersCount property
            ## @return a integer
            ## 
            def completed_users_count
                return @completed_users_count
            end
            ## 
            ## Sets the completedUsersCount property value. The completedUsersCount property
            ## @param value Value to set for the completedUsersCount property.
            ## @return a void
            ## 
            def completed_users_count=(value)
                @completed_users_count = value
            end
            ## 
            ## Instantiates a new UserTrainingCompletionSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_training_completion_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserTrainingCompletionSummary.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "completedUsersCount" => lambda {|n| @completed_users_count = n.get_number_value() },
                    "inProgressUsersCount" => lambda {|n| @in_progress_users_count = n.get_number_value() },
                    "notCompletedUsersCount" => lambda {|n| @not_completed_users_count = n.get_number_value() },
                    "notStartedUsersCount" => lambda {|n| @not_started_users_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "previouslyAssignedUsersCount" => lambda {|n| @previously_assigned_users_count = n.get_number_value() },
                }
            end
            ## 
            ## Gets the inProgressUsersCount property value. The inProgressUsersCount property
            ## @return a integer
            ## 
            def in_progress_users_count
                return @in_progress_users_count
            end
            ## 
            ## Sets the inProgressUsersCount property value. The inProgressUsersCount property
            ## @param value Value to set for the inProgressUsersCount property.
            ## @return a void
            ## 
            def in_progress_users_count=(value)
                @in_progress_users_count = value
            end
            ## 
            ## Gets the notCompletedUsersCount property value. The notCompletedUsersCount property
            ## @return a integer
            ## 
            def not_completed_users_count
                return @not_completed_users_count
            end
            ## 
            ## Sets the notCompletedUsersCount property value. The notCompletedUsersCount property
            ## @param value Value to set for the notCompletedUsersCount property.
            ## @return a void
            ## 
            def not_completed_users_count=(value)
                @not_completed_users_count = value
            end
            ## 
            ## Gets the notStartedUsersCount property value. The notStartedUsersCount property
            ## @return a integer
            ## 
            def not_started_users_count
                return @not_started_users_count
            end
            ## 
            ## Sets the notStartedUsersCount property value. The notStartedUsersCount property
            ## @param value Value to set for the notStartedUsersCount property.
            ## @return a void
            ## 
            def not_started_users_count=(value)
                @not_started_users_count = value
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
            ## Gets the previouslyAssignedUsersCount property value. The previouslyAssignedUsersCount property
            ## @return a integer
            ## 
            def previously_assigned_users_count
                return @previously_assigned_users_count
            end
            ## 
            ## Sets the previouslyAssignedUsersCount property value. The previouslyAssignedUsersCount property
            ## @param value Value to set for the previouslyAssignedUsersCount property.
            ## @return a void
            ## 
            def previously_assigned_users_count=(value)
                @previously_assigned_users_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("completedUsersCount", @completed_users_count)
                writer.write_number_value("inProgressUsersCount", @in_progress_users_count)
                writer.write_number_value("notCompletedUsersCount", @not_completed_users_count)
                writer.write_number_value("notStartedUsersCount", @not_started_users_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("previouslyAssignedUsersCount", @previously_assigned_users_count)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
