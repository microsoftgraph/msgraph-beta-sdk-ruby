require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class CloudPcReviewStatus
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The resource ID of the Azure Storage account in which the Cloud PC snapshot is being saved.
        @azure_storage_account_id
        ## 
        # The name of the Azure Storage account in which the Cloud PC snapshot is being saved.
        @azure_storage_account_name
        ## 
        # The name of the container in an Azure Storage account in which the Cloud PC snapshot is being saved.
        @azure_storage_container_name
        ## 
        # True if the Cloud PC is set to in review by the administrator.
        @in_review
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The specific date and time of the Cloud PC snapshot that was taken and saved automatically, when the Cloud PC is set to in review. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as 2014-01-01T00:00:00Z.
        @restore_point_date_time
        ## 
        # The specific date and time when the Cloud PC was set to in review. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as 2014-01-01T00:00:00Z.
        @review_start_date_time
        ## 
        # The ID of the Azure subscription in which the Cloud PC snapshot is being saved, in GUID format.
        @subscription_id
        ## 
        # The name of the Azure subscription in which the Cloud PC snapshot is being saved.
        @subscription_name
        ## 
        # The userAccessLevel property
        @user_access_level
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
        ## Gets the azureStorageAccountId property value. The resource ID of the Azure Storage account in which the Cloud PC snapshot is being saved.
        ## @return a string
        ## 
        def azure_storage_account_id
            return @azure_storage_account_id
        end
        ## 
        ## Sets the azureStorageAccountId property value. The resource ID of the Azure Storage account in which the Cloud PC snapshot is being saved.
        ## @param value Value to set for the azureStorageAccountId property.
        ## @return a void
        ## 
        def azure_storage_account_id=(value)
            @azure_storage_account_id = value
        end
        ## 
        ## Gets the azureStorageAccountName property value. The name of the Azure Storage account in which the Cloud PC snapshot is being saved.
        ## @return a string
        ## 
        def azure_storage_account_name
            return @azure_storage_account_name
        end
        ## 
        ## Sets the azureStorageAccountName property value. The name of the Azure Storage account in which the Cloud PC snapshot is being saved.
        ## @param value Value to set for the azureStorageAccountName property.
        ## @return a void
        ## 
        def azure_storage_account_name=(value)
            @azure_storage_account_name = value
        end
        ## 
        ## Gets the azureStorageContainerName property value. The name of the container in an Azure Storage account in which the Cloud PC snapshot is being saved.
        ## @return a string
        ## 
        def azure_storage_container_name
            return @azure_storage_container_name
        end
        ## 
        ## Sets the azureStorageContainerName property value. The name of the container in an Azure Storage account in which the Cloud PC snapshot is being saved.
        ## @param value Value to set for the azureStorageContainerName property.
        ## @return a void
        ## 
        def azure_storage_container_name=(value)
            @azure_storage_container_name = value
        end
        ## 
        ## Instantiates a new cloudPcReviewStatus and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a cloud_pc_review_status
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CloudPcReviewStatus.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "azureStorageAccountId" => lambda {|n| @azure_storage_account_id = n.get_string_value() },
                "azureStorageAccountName" => lambda {|n| @azure_storage_account_name = n.get_string_value() },
                "azureStorageContainerName" => lambda {|n| @azure_storage_container_name = n.get_string_value() },
                "inReview" => lambda {|n| @in_review = n.get_boolean_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "restorePointDateTime" => lambda {|n| @restore_point_date_time = n.get_date_time_value() },
                "reviewStartDateTime" => lambda {|n| @review_start_date_time = n.get_date_time_value() },
                "subscriptionId" => lambda {|n| @subscription_id = n.get_string_value() },
                "subscriptionName" => lambda {|n| @subscription_name = n.get_string_value() },
                "userAccessLevel" => lambda {|n| @user_access_level = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcUserAccessLevel) },
            }
        end
        ## 
        ## Gets the inReview property value. True if the Cloud PC is set to in review by the administrator.
        ## @return a boolean
        ## 
        def in_review
            return @in_review
        end
        ## 
        ## Sets the inReview property value. True if the Cloud PC is set to in review by the administrator.
        ## @param value Value to set for the inReview property.
        ## @return a void
        ## 
        def in_review=(value)
            @in_review = value
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
        ## Gets the restorePointDateTime property value. The specific date and time of the Cloud PC snapshot that was taken and saved automatically, when the Cloud PC is set to in review. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as 2014-01-01T00:00:00Z.
        ## @return a date_time
        ## 
        def restore_point_date_time
            return @restore_point_date_time
        end
        ## 
        ## Sets the restorePointDateTime property value. The specific date and time of the Cloud PC snapshot that was taken and saved automatically, when the Cloud PC is set to in review. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as 2014-01-01T00:00:00Z.
        ## @param value Value to set for the restorePointDateTime property.
        ## @return a void
        ## 
        def restore_point_date_time=(value)
            @restore_point_date_time = value
        end
        ## 
        ## Gets the reviewStartDateTime property value. The specific date and time when the Cloud PC was set to in review. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as 2014-01-01T00:00:00Z.
        ## @return a date_time
        ## 
        def review_start_date_time
            return @review_start_date_time
        end
        ## 
        ## Sets the reviewStartDateTime property value. The specific date and time when the Cloud PC was set to in review. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as 2014-01-01T00:00:00Z.
        ## @param value Value to set for the reviewStartDateTime property.
        ## @return a void
        ## 
        def review_start_date_time=(value)
            @review_start_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("azureStorageAccountId", @azure_storage_account_id)
            writer.write_string_value("azureStorageAccountName", @azure_storage_account_name)
            writer.write_string_value("azureStorageContainerName", @azure_storage_container_name)
            writer.write_boolean_value("inReview", @in_review)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_date_time_value("restorePointDateTime", @restore_point_date_time)
            writer.write_date_time_value("reviewStartDateTime", @review_start_date_time)
            writer.write_string_value("subscriptionId", @subscription_id)
            writer.write_string_value("subscriptionName", @subscription_name)
            writer.write_enum_value("userAccessLevel", @user_access_level)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the subscriptionId property value. The ID of the Azure subscription in which the Cloud PC snapshot is being saved, in GUID format.
        ## @return a string
        ## 
        def subscription_id
            return @subscription_id
        end
        ## 
        ## Sets the subscriptionId property value. The ID of the Azure subscription in which the Cloud PC snapshot is being saved, in GUID format.
        ## @param value Value to set for the subscriptionId property.
        ## @return a void
        ## 
        def subscription_id=(value)
            @subscription_id = value
        end
        ## 
        ## Gets the subscriptionName property value. The name of the Azure subscription in which the Cloud PC snapshot is being saved.
        ## @return a string
        ## 
        def subscription_name
            return @subscription_name
        end
        ## 
        ## Sets the subscriptionName property value. The name of the Azure subscription in which the Cloud PC snapshot is being saved.
        ## @param value Value to set for the subscriptionName property.
        ## @return a void
        ## 
        def subscription_name=(value)
            @subscription_name = value
        end
        ## 
        ## Gets the userAccessLevel property value. The userAccessLevel property
        ## @return a cloud_pc_user_access_level
        ## 
        def user_access_level
            return @user_access_level
        end
        ## 
        ## Sets the userAccessLevel property value. The userAccessLevel property
        ## @param value Value to set for the userAccessLevel property.
        ## @return a void
        ## 
        def user_access_level=(value)
            @user_access_level = value
        end
    end
end
