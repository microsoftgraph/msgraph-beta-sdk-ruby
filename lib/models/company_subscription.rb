require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CompanySubscription < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The isTrial property
            @is_trial
            ## 
            # The nextLifecycleDateTime property
            @next_lifecycle_date_time
            ## 
            # The ocpSubscriptionId property
            @ocp_subscription_id
            ## 
            # The serviceStatus property
            @service_status
            ## 
            # The skuId property
            @sku_id
            ## 
            # The skuPartNumber property
            @sku_part_number
            ## 
            # The status property
            @status
            ## 
            # The totalLicenses property
            @total_licenses
            ## 
            ## Instantiates a new companySubscription and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a company_subscription
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CompanySubscription.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "isTrial" => lambda {|n| @is_trial = n.get_boolean_value() },
                    "nextLifecycleDateTime" => lambda {|n| @next_lifecycle_date_time = n.get_date_time_value() },
                    "ocpSubscriptionId" => lambda {|n| @ocp_subscription_id = n.get_string_value() },
                    "serviceStatus" => lambda {|n| @service_status = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ServicePlanInfo.create_from_discriminator_value(pn) }) },
                    "skuId" => lambda {|n| @sku_id = n.get_string_value() },
                    "skuPartNumber" => lambda {|n| @sku_part_number = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_string_value() },
                    "totalLicenses" => lambda {|n| @total_licenses = n.get_number_value() },
                })
            end
            ## 
            ## Gets the isTrial property value. The isTrial property
            ## @return a boolean
            ## 
            def is_trial
                return @is_trial
            end
            ## 
            ## Sets the isTrial property value. The isTrial property
            ## @param value Value to set for the is_trial property.
            ## @return a void
            ## 
            def is_trial=(value)
                @is_trial = value
            end
            ## 
            ## Gets the nextLifecycleDateTime property value. The nextLifecycleDateTime property
            ## @return a date_time
            ## 
            def next_lifecycle_date_time
                return @next_lifecycle_date_time
            end
            ## 
            ## Sets the nextLifecycleDateTime property value. The nextLifecycleDateTime property
            ## @param value Value to set for the next_lifecycle_date_time property.
            ## @return a void
            ## 
            def next_lifecycle_date_time=(value)
                @next_lifecycle_date_time = value
            end
            ## 
            ## Gets the ocpSubscriptionId property value. The ocpSubscriptionId property
            ## @return a string
            ## 
            def ocp_subscription_id
                return @ocp_subscription_id
            end
            ## 
            ## Sets the ocpSubscriptionId property value. The ocpSubscriptionId property
            ## @param value Value to set for the ocp_subscription_id property.
            ## @return a void
            ## 
            def ocp_subscription_id=(value)
                @ocp_subscription_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_boolean_value("isTrial", @is_trial)
                writer.write_date_time_value("nextLifecycleDateTime", @next_lifecycle_date_time)
                writer.write_string_value("ocpSubscriptionId", @ocp_subscription_id)
                writer.write_collection_of_object_values("serviceStatus", @service_status)
                writer.write_string_value("skuId", @sku_id)
                writer.write_string_value("skuPartNumber", @sku_part_number)
                writer.write_string_value("status", @status)
                writer.write_number_value("totalLicenses", @total_licenses)
            end
            ## 
            ## Gets the serviceStatus property value. The serviceStatus property
            ## @return a service_plan_info
            ## 
            def service_status
                return @service_status
            end
            ## 
            ## Sets the serviceStatus property value. The serviceStatus property
            ## @param value Value to set for the service_status property.
            ## @return a void
            ## 
            def service_status=(value)
                @service_status = value
            end
            ## 
            ## Gets the skuId property value. The skuId property
            ## @return a string
            ## 
            def sku_id
                return @sku_id
            end
            ## 
            ## Sets the skuId property value. The skuId property
            ## @param value Value to set for the sku_id property.
            ## @return a void
            ## 
            def sku_id=(value)
                @sku_id = value
            end
            ## 
            ## Gets the skuPartNumber property value. The skuPartNumber property
            ## @return a string
            ## 
            def sku_part_number
                return @sku_part_number
            end
            ## 
            ## Sets the skuPartNumber property value. The skuPartNumber property
            ## @param value Value to set for the sku_part_number property.
            ## @return a void
            ## 
            def sku_part_number=(value)
                @sku_part_number = value
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a string
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the totalLicenses property value. The totalLicenses property
            ## @return a integer
            ## 
            def total_licenses
                return @total_licenses
            end
            ## 
            ## Sets the totalLicenses property value. The totalLicenses property
            ## @param value Value to set for the total_licenses property.
            ## @return a void
            ## 
            def total_licenses=(value)
                @total_licenses = value
            end
        end
    end
end
