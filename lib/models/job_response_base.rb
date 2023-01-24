require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class JobResponseBase < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The creationDateTime property
        @creation_date_time
        ## 
        # The endDateTime property
        @end_date_time
        ## 
        # The error property
        @error
        ## 
        # The startDateTime property
        @start_date_time
        ## 
        # The status property
        @status
        ## 
        # The tenantId property
        @tenant_id
        ## 
        # The type property
        @type
        ## 
        ## Instantiates a new JobResponseBase and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a job_response_base
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.classificationJobResponse"
                        return ClassificationJobResponse.new
                    when "#microsoft.graph.dlpEvaluatePoliciesJobResponse"
                        return DlpEvaluatePoliciesJobResponse.new
                    when "#microsoft.graph.evaluateLabelJobResponse"
                        return EvaluateLabelJobResponse.new
                end
            end
            return JobResponseBase.new
        end
        ## 
        ## Gets the creationDateTime property value. The creationDateTime property
        ## @return a date_time
        ## 
        def creation_date_time
            return @creation_date_time
        end
        ## 
        ## Sets the creationDateTime property value. The creationDateTime property
        ## @param value Value to set for the creationDateTime property.
        ## @return a void
        ## 
        def creation_date_time=(value)
            @creation_date_time = value
        end
        ## 
        ## Gets the endDateTime property value. The endDateTime property
        ## @return a date_time
        ## 
        def end_date_time
            return @end_date_time
        end
        ## 
        ## Sets the endDateTime property value. The endDateTime property
        ## @param value Value to set for the endDateTime property.
        ## @return a void
        ## 
        def end_date_time=(value)
            @end_date_time = value
        end
        ## 
        ## Gets the error property value. The error property
        ## @return a classification_error
        ## 
        def error
            return @error
        end
        ## 
        ## Sets the error property value. The error property
        ## @param value Value to set for the error property.
        ## @return a void
        ## 
        def error=(value)
            @error = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "creationDateTime" => lambda {|n| @creation_date_time = n.get_date_time_value() },
                "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ClassificationError.create_from_discriminator_value(pn) }) },
                "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                "status" => lambda {|n| @status = n.get_string_value() },
                "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                "type" => lambda {|n| @type = n.get_string_value() },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_time_value("creationDateTime", @creation_date_time)
            writer.write_date_time_value("endDateTime", @end_date_time)
            writer.write_object_value("error", @error)
            writer.write_date_time_value("startDateTime", @start_date_time)
            writer.write_string_value("status", @status)
            writer.write_string_value("tenantId", @tenant_id)
            writer.write_string_value("type", @type)
        end
        ## 
        ## Gets the startDateTime property value. The startDateTime property
        ## @return a date_time
        ## 
        def start_date_time
            return @start_date_time
        end
        ## 
        ## Sets the startDateTime property value. The startDateTime property
        ## @param value Value to set for the startDateTime property.
        ## @return a void
        ## 
        def start_date_time=(value)
            @start_date_time = value
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
        ## Gets the tenantId property value. The tenantId property
        ## @return a string
        ## 
        def tenant_id
            return @tenant_id
        end
        ## 
        ## Sets the tenantId property value. The tenantId property
        ## @param value Value to set for the tenantId property.
        ## @return a void
        ## 
        def tenant_id=(value)
            @tenant_id = value
        end
        ## 
        ## Gets the type property value. The type property
        ## @return a string
        ## 
        def type
            return @type
        end
        ## 
        ## Sets the type property value. The type property
        ## @param value Value to set for the type property.
        ## @return a void
        ## 
        def type=(value)
            @type = value
        end
    end
end
