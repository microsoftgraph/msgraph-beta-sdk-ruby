require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    class ProgramControl < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The controlId of the control, in particular the identifier of an access review. Required on create.
        @control_id
        ## 
        # The programControlType identifies the type of program control - for example, a control linking to guest access reviews. Required on create.
        @control_type_id
        ## 
        # The creation date and time of the program control.
        @created_date_time
        ## 
        # The name of the control.
        @display_name
        ## 
        # The user who created the program control.
        @owner
        ## 
        # The program this control is part of.
        @program
        ## 
        # The programId of the program this control is a part of. Required on create.
        @program_id
        ## 
        # The resource, a group or an app, targeted by this program control's access review.
        @resource
        ## 
        # The life cycle status of the control.
        @status
        ## 
        ## Instantiates a new programControl and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the controlId property value. The controlId of the control, in particular the identifier of an access review. Required on create.
        ## @return a string
        ## 
        def control_id
            return @control_id
        end
        ## 
        ## Sets the controlId property value. The controlId of the control, in particular the identifier of an access review. Required on create.
        ## @param value Value to set for the controlId property.
        ## @return a void
        ## 
        def control_id=(value)
            @control_id = value
        end
        ## 
        ## Gets the controlTypeId property value. The programControlType identifies the type of program control - for example, a control linking to guest access reviews. Required on create.
        ## @return a string
        ## 
        def control_type_id
            return @control_type_id
        end
        ## 
        ## Sets the controlTypeId property value. The programControlType identifies the type of program control - for example, a control linking to guest access reviews. Required on create.
        ## @param value Value to set for the controlTypeId property.
        ## @return a void
        ## 
        def control_type_id=(value)
            @control_type_id = value
        end
        ## 
        ## Gets the createdDateTime property value. The creation date and time of the program control.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The creation date and time of the program control.
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a program_control
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ProgramControl.new
        end
        ## 
        ## Gets the displayName property value. The name of the control.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The name of the control.
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
            return super.merge({
                "controlId" => lambda {|n| @control_id = n.get_string_value() },
                "controlTypeId" => lambda {|n| @control_type_id = n.get_string_value() },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "owner" => lambda {|n| @owner = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserIdentity.create_from_discriminator_value(pn) }) },
                "program" => lambda {|n| @program = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Program.create_from_discriminator_value(pn) }) },
                "programId" => lambda {|n| @program_id = n.get_string_value() },
                "resource" => lambda {|n| @resource = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ProgramResource.create_from_discriminator_value(pn) }) },
                "status" => lambda {|n| @status = n.get_string_value() },
            })
        end
        ## 
        ## Gets the owner property value. The user who created the program control.
        ## @return a user_identity
        ## 
        def owner
            return @owner
        end
        ## 
        ## Sets the owner property value. The user who created the program control.
        ## @param value Value to set for the owner property.
        ## @return a void
        ## 
        def owner=(value)
            @owner = value
        end
        ## 
        ## Gets the program property value. The program this control is part of.
        ## @return a program
        ## 
        def program
            return @program
        end
        ## 
        ## Sets the program property value. The program this control is part of.
        ## @param value Value to set for the program property.
        ## @return a void
        ## 
        def program=(value)
            @program = value
        end
        ## 
        ## Gets the programId property value. The programId of the program this control is a part of. Required on create.
        ## @return a string
        ## 
        def program_id
            return @program_id
        end
        ## 
        ## Sets the programId property value. The programId of the program this control is a part of. Required on create.
        ## @param value Value to set for the programId property.
        ## @return a void
        ## 
        def program_id=(value)
            @program_id = value
        end
        ## 
        ## Gets the resource property value. The resource, a group or an app, targeted by this program control's access review.
        ## @return a program_resource
        ## 
        def resource
            return @resource
        end
        ## 
        ## Sets the resource property value. The resource, a group or an app, targeted by this program control's access review.
        ## @param value Value to set for the resource property.
        ## @return a void
        ## 
        def resource=(value)
            @resource = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("controlId", @control_id)
            writer.write_string_value("controlTypeId", @control_type_id)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_string_value("displayName", @display_name)
            writer.write_object_value("owner", @owner)
            writer.write_object_value("program", @program)
            writer.write_string_value("programId", @program_id)
            writer.write_object_value("resource", @resource)
            writer.write_string_value("status", @status)
        end
        ## 
        ## Gets the status property value. The life cycle status of the control.
        ## @return a string
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. The life cycle status of the control.
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
