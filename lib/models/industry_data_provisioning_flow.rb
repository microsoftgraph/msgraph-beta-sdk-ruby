require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataProvisioningFlow < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time when the provisioning flow was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @created_date_time
            ## 
            # The date and time when the provisioning flow was most recently changed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @last_modified_date_time
            ## 
            # The state of the activity from creation through to ready to do work. The possible values are: notReady, ready, failed, disabled, expired, unknownFutureValue.
            @readiness_status
            ## 
            ## Instantiates a new IndustryDataProvisioningFlow and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the provisioning flow was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the provisioning flow was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_provisioning_flow
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.industryData.administrativeUnitProvisioningFlow"
                            return IndustryDataAdministrativeUnitProvisioningFlow.new
                        when "#microsoft.graph.industryData.classGroupProvisioningFlow"
                            return IndustryDataClassGroupProvisioningFlow.new
                        when "#microsoft.graph.industryData.securityGroupProvisioningFlow"
                            return IndustryDataSecurityGroupProvisioningFlow.new
                        when "#microsoft.graph.industryData.userProvisioningFlow"
                            return IndustryDataUserProvisioningFlow.new
                    end
                end
                return IndustryDataProvisioningFlow.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "readinessStatus" => lambda {|n| @readiness_status = n.get_enum_value(MicrosoftGraphBeta::Models::IndustryDataReadinessStatus) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time when the provisioning flow was most recently changed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time when the provisioning flow was most recently changed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the readinessStatus property value. The state of the activity from creation through to ready to do work. The possible values are: notReady, ready, failed, disabled, expired, unknownFutureValue.
            ## @return a industry_data_readiness_status
            ## 
            def readiness_status
                return @readiness_status
            end
            ## 
            ## Sets the readinessStatus property value. The state of the activity from creation through to ready to do work. The possible values are: notReady, ready, failed, disabled, expired, unknownFutureValue.
            ## @param value Value to set for the readinessStatus property.
            ## @return a void
            ## 
            def readiness_status=(value)
                @readiness_status = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
            end
        end
    end
end
