require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ComanagementEligibleDevicesSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Count of devices already Co-Managed
            @comanaged_count
            ## 
            # Count of devices eligible for Co-Management but not yet joined to Azure Active Directory
            @eligible_but_not_azure_ad_joined_count
            ## 
            # Count of devices fully eligible for Co-Management
            @eligible_count
            ## 
            # Count of devices ineligible for Co-Management
            @ineligible_count
            ## 
            # Count of devices that will be eligible for Co-Management after an OS update
            @needs_os_update_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Count of devices scheduled for Co-Management enrollment. Valid values 0 to 9999999
            @scheduled_for_enrollment_count
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
            ## Gets the comanagedCount property value. Count of devices already Co-Managed
            ## @return a integer
            ## 
            def comanaged_count
                return @comanaged_count
            end
            ## 
            ## Sets the comanagedCount property value. Count of devices already Co-Managed
            ## @param value Value to set for the comanagedCount property.
            ## @return a void
            ## 
            def comanaged_count=(value)
                @comanaged_count = value
            end
            ## 
            ## Instantiates a new ComanagementEligibleDevicesSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a comanagement_eligible_devices_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ComanagementEligibleDevicesSummary.new
            end
            ## 
            ## Gets the eligibleButNotAzureAdJoinedCount property value. Count of devices eligible for Co-Management but not yet joined to Azure Active Directory
            ## @return a integer
            ## 
            def eligible_but_not_azure_ad_joined_count
                return @eligible_but_not_azure_ad_joined_count
            end
            ## 
            ## Sets the eligibleButNotAzureAdJoinedCount property value. Count of devices eligible for Co-Management but not yet joined to Azure Active Directory
            ## @param value Value to set for the eligibleButNotAzureAdJoinedCount property.
            ## @return a void
            ## 
            def eligible_but_not_azure_ad_joined_count=(value)
                @eligible_but_not_azure_ad_joined_count = value
            end
            ## 
            ## Gets the eligibleCount property value. Count of devices fully eligible for Co-Management
            ## @return a integer
            ## 
            def eligible_count
                return @eligible_count
            end
            ## 
            ## Sets the eligibleCount property value. Count of devices fully eligible for Co-Management
            ## @param value Value to set for the eligibleCount property.
            ## @return a void
            ## 
            def eligible_count=(value)
                @eligible_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "comanagedCount" => lambda {|n| @comanaged_count = n.get_number_value() },
                    "eligibleButNotAzureAdJoinedCount" => lambda {|n| @eligible_but_not_azure_ad_joined_count = n.get_number_value() },
                    "eligibleCount" => lambda {|n| @eligible_count = n.get_number_value() },
                    "ineligibleCount" => lambda {|n| @ineligible_count = n.get_number_value() },
                    "needsOsUpdateCount" => lambda {|n| @needs_os_update_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "scheduledForEnrollmentCount" => lambda {|n| @scheduled_for_enrollment_count = n.get_number_value() },
                }
            end
            ## 
            ## Gets the ineligibleCount property value. Count of devices ineligible for Co-Management
            ## @return a integer
            ## 
            def ineligible_count
                return @ineligible_count
            end
            ## 
            ## Sets the ineligibleCount property value. Count of devices ineligible for Co-Management
            ## @param value Value to set for the ineligibleCount property.
            ## @return a void
            ## 
            def ineligible_count=(value)
                @ineligible_count = value
            end
            ## 
            ## Gets the needsOsUpdateCount property value. Count of devices that will be eligible for Co-Management after an OS update
            ## @return a integer
            ## 
            def needs_os_update_count
                return @needs_os_update_count
            end
            ## 
            ## Sets the needsOsUpdateCount property value. Count of devices that will be eligible for Co-Management after an OS update
            ## @param value Value to set for the needsOsUpdateCount property.
            ## @return a void
            ## 
            def needs_os_update_count=(value)
                @needs_os_update_count = value
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
            ## Gets the scheduledForEnrollmentCount property value. Count of devices scheduled for Co-Management enrollment. Valid values 0 to 9999999
            ## @return a integer
            ## 
            def scheduled_for_enrollment_count
                return @scheduled_for_enrollment_count
            end
            ## 
            ## Sets the scheduledForEnrollmentCount property value. Count of devices scheduled for Co-Management enrollment. Valid values 0 to 9999999
            ## @param value Value to set for the scheduledForEnrollmentCount property.
            ## @return a void
            ## 
            def scheduled_for_enrollment_count=(value)
                @scheduled_for_enrollment_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("comanagedCount", @comanaged_count)
                writer.write_number_value("eligibleButNotAzureAdJoinedCount", @eligible_but_not_azure_ad_joined_count)
                writer.write_number_value("eligibleCount", @eligible_count)
                writer.write_number_value("ineligibleCount", @ineligible_count)
                writer.write_number_value("needsOsUpdateCount", @needs_os_update_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("scheduledForEnrollmentCount", @scheduled_for_enrollment_count)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
