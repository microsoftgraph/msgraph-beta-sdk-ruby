require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Models.partner.securitySecurityRequirement < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The link to the site where the admin can take action on the requirement.
            @action_url
            ## 
            # The complianceStatus property
            @compliance_status
            ## 
            # The link to documentation for the requirement.
            @help_url
            ## 
            # The maximum score possible for the requirement.
            @max_score
            ## 
            # The requirementType property
            @requirement_type
            ## 
            # The score received for this requirement.
            @score
            ## 
            # The state property
            @state
            ## 
            # The date the requirement properties were last updated.
            @updated_date_time
            ## 
            ## Gets the actionUrl property value. The link to the site where the admin can take action on the requirement.
            ## @return a string
            ## 
            def action_url
                return @action_url
            end
            ## 
            ## Sets the actionUrl property value. The link to the site where the admin can take action on the requirement.
            ## @param value Value to set for the actionUrl property.
            ## @return a void
            ## 
            def action_url=(value)
                @action_url = value
            end
            ## 
            ## Gets the complianceStatus property value. The complianceStatus property
            ## @return a models.partner.security_compliance_status
            ## 
            def compliance_status
                return @compliance_status
            end
            ## 
            ## Sets the complianceStatus property value. The complianceStatus property
            ## @param value Value to set for the complianceStatus property.
            ## @return a void
            ## 
            def compliance_status=(value)
                @compliance_status = value
            end
            ## 
            ## Instantiates a new Models.partner.securitySecurityRequirement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a models.partner.security_security_requirement
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.partner.security.adminsMfaEnforcedSecurityRequirement"
                            return Models.partner.securityAdminsMfaEnforcedSecurityRequirement.new
                        when "#microsoft.graph.partner.security.customersMfaEnforcedSecurityRequirement"
                            return Models.partner.securityCustomersMfaEnforcedSecurityRequirement.new
                        when "#microsoft.graph.partner.security.customersSpendingBudgetSecurityRequirement"
                            return Models.partner.securityCustomersSpendingBudgetSecurityRequirement.new
                        when "#microsoft.graph.partner.security.responseTimeSecurityRequirement"
                            return Models.partner.securityResponseTimeSecurityRequirement.new
                    end
                end
                return Models.partner.securitySecurityRequirement.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionUrl" => lambda {|n| @action_url = n.get_string_value() },
                    "complianceStatus" => lambda {|n| @compliance_status = n.get_enum_value(MicrosoftGraphBeta::Models::Models.partner.securityComplianceStatus) },
                    "helpUrl" => lambda {|n| @help_url = n.get_string_value() },
                    "maxScore" => lambda {|n| @max_score = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "requirementType" => lambda {|n| @requirement_type = n.get_enum_value(MicrosoftGraphBeta::Models::Models.partner.securitySecurityRequirementType) },
                    "score" => lambda {|n| @score = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::Models.partner.securitySecurityRequirementState) },
                    "updatedDateTime" => lambda {|n| @updated_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the helpUrl property value. The link to documentation for the requirement.
            ## @return a string
            ## 
            def help_url
                return @help_url
            end
            ## 
            ## Sets the helpUrl property value. The link to documentation for the requirement.
            ## @param value Value to set for the helpUrl property.
            ## @return a void
            ## 
            def help_url=(value)
                @help_url = value
            end
            ## 
            ## Gets the maxScore property value. The maximum score possible for the requirement.
            ## @return a int64
            ## 
            def max_score
                return @max_score
            end
            ## 
            ## Sets the maxScore property value. The maximum score possible for the requirement.
            ## @param value Value to set for the maxScore property.
            ## @return a void
            ## 
            def max_score=(value)
                @max_score = value
            end
            ## 
            ## Gets the requirementType property value. The requirementType property
            ## @return a models.partner.security_security_requirement_type
            ## 
            def requirement_type
                return @requirement_type
            end
            ## 
            ## Sets the requirementType property value. The requirementType property
            ## @param value Value to set for the requirementType property.
            ## @return a void
            ## 
            def requirement_type=(value)
                @requirement_type = value
            end
            ## 
            ## Gets the score property value. The score received for this requirement.
            ## @return a int64
            ## 
            def score
                return @score
            end
            ## 
            ## Sets the score property value. The score received for this requirement.
            ## @param value Value to set for the score property.
            ## @return a void
            ## 
            def score=(value)
                @score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("actionUrl", @action_url)
                writer.write_enum_value("complianceStatus", @compliance_status)
                writer.write_string_value("helpUrl", @help_url)
                writer.write_object_value("maxScore", @max_score)
                writer.write_enum_value("requirementType", @requirement_type)
                writer.write_object_value("score", @score)
                writer.write_enum_value("state", @state)
                writer.write_date_time_value("updatedDateTime", @updated_date_time)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a models.partner.security_security_requirement_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the updatedDateTime property value. The date the requirement properties were last updated.
            ## @return a date_time
            ## 
            def updated_date_time
                return @updated_date_time
            end
            ## 
            ## Sets the updatedDateTime property value. The date the requirement properties were last updated.
            ## @param value Value to set for the updatedDateTime property.
            ## @return a void
            ## 
            def updated_date_time=(value)
                @updated_date_time = value
            end
        end
    end
end
