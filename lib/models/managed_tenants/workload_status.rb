require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class WorkloadStatus
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The display name for the workload. Required. Read-only.
                @display_name
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The date and time the workload was offboarded. Optional. Read-only.
                @offboarded_date_time
                ## 
                # The date and time the workload was onboarded. Optional. Read-only.
                @onboarded_date_time
                ## 
                # The onboardingStatus property
                @onboarding_status
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
                ## Instantiates a new workloadStatus and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a workload_status
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return WorkloadStatus.new
                end
                ## 
                ## Gets the displayName property value. The display name for the workload. Required. Read-only.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The display name for the workload. Required. Read-only.
                ## @param value Value to set for the displayName property.
                ## @return a void
                ## 
                def display_name=(value)
                    @display_name = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "offboardedDateTime" => lambda {|n| @offboarded_date_time = n.get_date_time_value() },
                        "onboardedDateTime" => lambda {|n| @onboarded_date_time = n.get_date_time_value() },
                        "onboardingStatus" => lambda {|n| @onboarding_status = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenants::WorkloadOnboardingStatus) },
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
                ## Gets the offboardedDateTime property value. The date and time the workload was offboarded. Optional. Read-only.
                ## @return a date_time
                ## 
                def offboarded_date_time
                    return @offboarded_date_time
                end
                ## 
                ## Sets the offboardedDateTime property value. The date and time the workload was offboarded. Optional. Read-only.
                ## @param value Value to set for the offboardedDateTime property.
                ## @return a void
                ## 
                def offboarded_date_time=(value)
                    @offboarded_date_time = value
                end
                ## 
                ## Gets the onboardedDateTime property value. The date and time the workload was onboarded. Optional. Read-only.
                ## @return a date_time
                ## 
                def onboarded_date_time
                    return @onboarded_date_time
                end
                ## 
                ## Sets the onboardedDateTime property value. The date and time the workload was onboarded. Optional. Read-only.
                ## @param value Value to set for the onboardedDateTime property.
                ## @return a void
                ## 
                def onboarded_date_time=(value)
                    @onboarded_date_time = value
                end
                ## 
                ## Gets the onboardingStatus property value. The onboardingStatus property
                ## @return a workload_onboarding_status
                ## 
                def onboarding_status
                    return @onboarding_status
                end
                ## 
                ## Sets the onboardingStatus property value. The onboardingStatus property
                ## @param value Value to set for the onboardingStatus property.
                ## @return a void
                ## 
                def onboarding_status=(value)
                    @onboarding_status = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("displayName", @display_name)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_date_time_value("offboardedDateTime", @offboarded_date_time)
                    writer.write_date_time_value("onboardedDateTime", @onboarded_date_time)
                    writer.write_enum_value("onboardingStatus", @onboarding_status)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
