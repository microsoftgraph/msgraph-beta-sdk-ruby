require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Contains properties used to assign a device management script to a group.
    class DeviceHealthScriptAssignment < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Determine whether we want to run detection script only or run both detection script and remediation script
        @run_remediation_script
        ## 
        # Script run schedule for the target group
        @run_schedule
        ## 
        # The Azure Active Directory group we are targeting the script to
        @target
        ## 
        ## Instantiates a new deviceHealthScriptAssignment and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_health_script_assignment
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceHealthScriptAssignment.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "runRemediationScript" => lambda {|n| @run_remediation_script = n.get_boolean_value() },
                "runSchedule" => lambda {|n| @run_schedule = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceHealthScriptRunSchedule.create_from_discriminator_value(pn) }) },
                "target" => lambda {|n| @target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentTarget.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the runRemediationScript property value. Determine whether we want to run detection script only or run both detection script and remediation script
        ## @return a boolean
        ## 
        def run_remediation_script
            return @run_remediation_script
        end
        ## 
        ## Sets the runRemediationScript property value. Determine whether we want to run detection script only or run both detection script and remediation script
        ## @param value Value to set for the run_remediation_script property.
        ## @return a void
        ## 
        def run_remediation_script=(value)
            @run_remediation_script = value
        end
        ## 
        ## Gets the runSchedule property value. Script run schedule for the target group
        ## @return a device_health_script_run_schedule
        ## 
        def run_schedule
            return @run_schedule
        end
        ## 
        ## Sets the runSchedule property value. Script run schedule for the target group
        ## @param value Value to set for the run_schedule property.
        ## @return a void
        ## 
        def run_schedule=(value)
            @run_schedule = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("runRemediationScript", @run_remediation_script)
            writer.write_object_value("runSchedule", @run_schedule)
            writer.write_object_value("target", @target)
        end
        ## 
        ## Gets the target property value. The Azure Active Directory group we are targeting the script to
        ## @return a device_and_app_management_assignment_target
        ## 
        def target
            return @target
        end
        ## 
        ## Sets the target property value. The Azure Active Directory group we are targeting the script to
        ## @param value Value to set for the target property.
        ## @return a void
        ## 
        def target=(value)
            @target = value
        end
    end
end
