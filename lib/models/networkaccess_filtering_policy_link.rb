require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessFilteringPolicyLink < MicrosoftGraphBeta::Models::NetworkaccessPolicyLink
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date and time when the filtering Policy link was created.
            @created_date_time
            ## 
            # The date and time when the policy was most recently modified.
            @last_modified_date_time
            ## 
            # The loggingState property
            @logging_state
            ## 
            # Provides an integer priority level for each instance of a URL filtering policy linked to a profile. Required.
            @priority
            ## 
            ## Instantiates a new NetworkaccessFilteringPolicyLink and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.filteringPolicyLink"
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the filtering Policy link was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the filtering Policy link was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_filtering_policy_link
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessFilteringPolicyLink.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "loggingState" => lambda {|n| @logging_state = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessStatus) },
                    "priority" => lambda {|n| @priority = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time when the policy was most recently modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time when the policy was most recently modified.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the loggingState property value. The loggingState property
            ## @return a networkaccess_status
            ## 
            def logging_state
                return @logging_state
            end
            ## 
            ## Sets the loggingState property value. The loggingState property
            ## @param value Value to set for the loggingState property.
            ## @return a void
            ## 
            def logging_state=(value)
                @logging_state = value
            end
            ## 
            ## Gets the priority property value. Provides an integer priority level for each instance of a URL filtering policy linked to a profile. Required.
            ## @return a int64
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. Provides an integer priority level for each instance of a URL filtering policy linked to a profile. Required.
            ## @param value Value to set for the priority property.
            ## @return a void
            ## 
            def priority=(value)
                @priority = value
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
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("loggingState", @logging_state)
                writer.write_object_value("priority", @priority)
            end
        end
    end
end
