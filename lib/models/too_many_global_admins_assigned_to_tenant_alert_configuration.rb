require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TooManyGlobalAdminsAssignedToTenantAlertConfiguration < MicrosoftGraphBeta::Models::UnifiedRoleManagementAlertConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The threshold for the number of accounts assigned the Global Administrator role in the tenant. Triggers an alert if the number of global administrators in the tenant reaches or crosses this threshold value.
            @global_admin_count_threshold
            ## 
            # Threshold of the percentage of global administrators out of all the role assignments in the tenant. Triggers an alert if the percentage in the tenant reaches or crosses this threshold value.
            @percentage_of_global_admins_out_of_roles_threshold
            ## 
            ## Instantiates a new tooManyGlobalAdminsAssignedToTenantAlertConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a too_many_global_admins_assigned_to_tenant_alert_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TooManyGlobalAdminsAssignedToTenantAlertConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "globalAdminCountThreshold" => lambda {|n| @global_admin_count_threshold = n.get_number_value() },
                    "percentageOfGlobalAdminsOutOfRolesThreshold" => lambda {|n| @percentage_of_global_admins_out_of_roles_threshold = n.get_number_value() },
                })
            end
            ## 
            ## Gets the globalAdminCountThreshold property value. The threshold for the number of accounts assigned the Global Administrator role in the tenant. Triggers an alert if the number of global administrators in the tenant reaches or crosses this threshold value.
            ## @return a integer
            ## 
            def global_admin_count_threshold
                return @global_admin_count_threshold
            end
            ## 
            ## Sets the globalAdminCountThreshold property value. The threshold for the number of accounts assigned the Global Administrator role in the tenant. Triggers an alert if the number of global administrators in the tenant reaches or crosses this threshold value.
            ## @param value Value to set for the global_admin_count_threshold property.
            ## @return a void
            ## 
            def global_admin_count_threshold=(value)
                @global_admin_count_threshold = value
            end
            ## 
            ## Gets the percentageOfGlobalAdminsOutOfRolesThreshold property value. Threshold of the percentage of global administrators out of all the role assignments in the tenant. Triggers an alert if the percentage in the tenant reaches or crosses this threshold value.
            ## @return a integer
            ## 
            def percentage_of_global_admins_out_of_roles_threshold
                return @percentage_of_global_admins_out_of_roles_threshold
            end
            ## 
            ## Sets the percentageOfGlobalAdminsOutOfRolesThreshold property value. Threshold of the percentage of global administrators out of all the role assignments in the tenant. Triggers an alert if the percentage in the tenant reaches or crosses this threshold value.
            ## @param value Value to set for the percentage_of_global_admins_out_of_roles_threshold property.
            ## @return a void
            ## 
            def percentage_of_global_admins_out_of_roles_threshold=(value)
                @percentage_of_global_admins_out_of_roles_threshold = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("globalAdminCountThreshold", @global_admin_count_threshold)
                writer.write_number_value("percentageOfGlobalAdminsOutOfRolesThreshold", @percentage_of_global_admins_out_of_roles_threshold)
            end
        end
    end
end
