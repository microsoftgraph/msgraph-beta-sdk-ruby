require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ApprovalItemRequest < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identity set of the principal assigned to this request.
            @approver
            ## 
            # Creation date and time for the request.
            @created_date_time
            ## 
            # Indicates whether a request was reassigned.
            @is_reassigned
            ## 
            # The identity set of the principal who reassigned the request.
            @reassigned_from
            ## 
            ## Gets the approver property value. The identity set of the principal assigned to this request.
            ## @return a approval_identity_set
            ## 
            def approver
                return @approver
            end
            ## 
            ## Sets the approver property value. The identity set of the principal assigned to this request.
            ## @param value Value to set for the approver property.
            ## @return a void
            ## 
            def approver=(value)
                @approver = value
            end
            ## 
            ## Instantiates a new ApprovalItemRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Creation date and time for the request.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Creation date and time for the request.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a approval_item_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ApprovalItemRequest.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "approver" => lambda {|n| @approver = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ApprovalIdentitySet.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "isReassigned" => lambda {|n| @is_reassigned = n.get_boolean_value() },
                    "reassignedFrom" => lambda {|n| @reassigned_from = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ApprovalIdentitySet.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isReassigned property value. Indicates whether a request was reassigned.
            ## @return a boolean
            ## 
            def is_reassigned
                return @is_reassigned
            end
            ## 
            ## Sets the isReassigned property value. Indicates whether a request was reassigned.
            ## @param value Value to set for the isReassigned property.
            ## @return a void
            ## 
            def is_reassigned=(value)
                @is_reassigned = value
            end
            ## 
            ## Gets the reassignedFrom property value. The identity set of the principal who reassigned the request.
            ## @return a approval_identity_set
            ## 
            def reassigned_from
                return @reassigned_from
            end
            ## 
            ## Sets the reassignedFrom property value. The identity set of the principal who reassigned the request.
            ## @param value Value to set for the reassignedFrom property.
            ## @return a void
            ## 
            def reassigned_from=(value)
                @reassigned_from = value
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
