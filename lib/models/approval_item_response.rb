require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ApprovalItemResponse < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The comment made by the approver.
            @comments
            ## 
            # The identity set of the approver.
            @created_by
            ## 
            # Creation date and time of the response.
            @created_date_time
            ## 
            # The identity set of the principal who owns the approval item.
            @owners
            ## 
            # Approver response based on the response options. The default response options are 'Approved' and 'Rejected'. The approval item creator can also define custom response options during approval item creation.
            @response
            ## 
            ## Gets the comments property value. The comment made by the approver.
            ## @return a string
            ## 
            def comments
                return @comments
            end
            ## 
            ## Sets the comments property value. The comment made by the approver.
            ## @param value Value to set for the comments property.
            ## @return a void
            ## 
            def comments=(value)
                @comments = value
            end
            ## 
            ## Instantiates a new ApprovalItemResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The identity set of the approver.
            ## @return a approval_identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The identity set of the approver.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. Creation date and time of the response.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Creation date and time of the response.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a approval_item_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ApprovalItemResponse.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "comments" => lambda {|n| @comments = n.get_string_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ApprovalIdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "owners" => lambda {|n| @owners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ApprovalIdentitySet.create_from_discriminator_value(pn) }) },
                    "response" => lambda {|n| @response = n.get_string_value() },
                })
            end
            ## 
            ## Gets the owners property value. The identity set of the principal who owns the approval item.
            ## @return a approval_identity_set
            ## 
            def owners
                return @owners
            end
            ## 
            ## Sets the owners property value. The identity set of the principal who owns the approval item.
            ## @param value Value to set for the owners property.
            ## @return a void
            ## 
            def owners=(value)
                @owners = value
            end
            ## 
            ## Gets the response property value. Approver response based on the response options. The default response options are 'Approved' and 'Rejected'. The approval item creator can also define custom response options during approval item creation.
            ## @return a string
            ## 
            def response
                return @response
            end
            ## 
            ## Sets the response property value. Approver response based on the response options. The default response options are 'Approved' and 'Rejected'. The approval item creator can also define custom response options during approval item creation.
            ## @param value Value to set for the response property.
            ## @return a void
            ## 
            def response=(value)
                @response = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("comments", @comments)
                writer.write_object_value("createdBy", @created_by)
                writer.write_string_value("response", @response)
            end
        end
    end
end
