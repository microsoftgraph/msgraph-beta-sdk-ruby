require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class UserPrintUsageSummary
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The completedJobCount property
        @completed_job_count
        ## 
        # The incompleteJobCount property
        @incomplete_job_count
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The user property
        @user
        ## 
        # The userDisplayName property
        @user_display_name
        ## 
        # The userPrincipalName property
        @user_principal_name
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
        ## Gets the completedJobCount property value. The completedJobCount property
        ## @return a integer
        ## 
        def completed_job_count
            return @completed_job_count
        end
        ## 
        ## Sets the completedJobCount property value. The completedJobCount property
        ## @param value Value to set for the completedJobCount property.
        ## @return a void
        ## 
        def completed_job_count=(value)
            @completed_job_count = value
        end
        ## 
        ## Instantiates a new userPrintUsageSummary and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a user_print_usage_summary
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UserPrintUsageSummary.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "completedJobCount" => lambda {|n| @completed_job_count = n.get_number_value() },
                "incompleteJobCount" => lambda {|n| @incomplete_job_count = n.get_number_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "user" => lambda {|n| @user = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Identity.create_from_discriminator_value(pn) }) },
                "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
            }
        end
        ## 
        ## Gets the incompleteJobCount property value. The incompleteJobCount property
        ## @return a integer
        ## 
        def incomplete_job_count
            return @incomplete_job_count
        end
        ## 
        ## Sets the incompleteJobCount property value. The incompleteJobCount property
        ## @param value Value to set for the incompleteJobCount property.
        ## @return a void
        ## 
        def incomplete_job_count=(value)
            @incomplete_job_count = value
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
        ## @param value Value to set for the OdataType property.
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
            writer.write_number_value("completedJobCount", @completed_job_count)
            writer.write_number_value("incompleteJobCount", @incomplete_job_count)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_object_value("user", @user)
            writer.write_string_value("userDisplayName", @user_display_name)
            writer.write_string_value("userPrincipalName", @user_principal_name)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the user property value. The user property
        ## @return a identity
        ## 
        def user
            return @user
        end
        ## 
        ## Sets the user property value. The user property
        ## @param value Value to set for the user property.
        ## @return a void
        ## 
        def user=(value)
            @user = value
        end
        ## 
        ## Gets the userDisplayName property value. The userDisplayName property
        ## @return a string
        ## 
        def user_display_name
            return @user_display_name
        end
        ## 
        ## Sets the userDisplayName property value. The userDisplayName property
        ## @param value Value to set for the userDisplayName property.
        ## @return a void
        ## 
        def user_display_name=(value)
            @user_display_name = value
        end
        ## 
        ## Gets the userPrincipalName property value. The userPrincipalName property
        ## @return a string
        ## 
        def user_principal_name
            return @user_principal_name
        end
        ## 
        ## Sets the userPrincipalName property value. The userPrincipalName property
        ## @param value Value to set for the userPrincipalName property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
    end
end
