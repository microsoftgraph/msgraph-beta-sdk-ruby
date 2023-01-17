require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class RequestorSettings
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Indicates whether new requests are accepted on this policy.
        @accept_requests
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The users who are allowed to request on this policy, which can be singleUser, groupMembers, and connectedOrganizationMembers.
        @allowed_requestors
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Who can request. One of NoSubjects, SpecificDirectorySubjects, SpecificConnectedOrganizationSubjects, AllConfiguredConnectedOrganizationSubjects, AllExistingConnectedOrganizationSubjects, AllExistingDirectoryMemberUsers, AllExistingDirectorySubjects or AllExternalSubjects.
        @scope_type
        ## 
        ## Gets the acceptRequests property value. Indicates whether new requests are accepted on this policy.
        ## @return a boolean
        ## 
        def accept_requests
            return @accept_requests
        end
        ## 
        ## Sets the acceptRequests property value. Indicates whether new requests are accepted on this policy.
        ## @param value Value to set for the acceptRequests property.
        ## @return a void
        ## 
        def accept_requests=(value)
            @accept_requests = value
        end
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the allowedRequestors property value. The users who are allowed to request on this policy, which can be singleUser, groupMembers, and connectedOrganizationMembers.
        ## @return a user_set
        ## 
        def allowed_requestors
            return @allowed_requestors
        end
        ## 
        ## Sets the allowedRequestors property value. The users who are allowed to request on this policy, which can be singleUser, groupMembers, and connectedOrganizationMembers.
        ## @param value Value to set for the allowedRequestors property.
        ## @return a void
        ## 
        def allowed_requestors=(value)
            @allowed_requestors = value
        end
        ## 
        ## Instantiates a new requestorSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a requestor_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return RequestorSettings.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "acceptRequests" => lambda {|n| @accept_requests = n.get_boolean_value() },
                "allowedRequestors" => lambda {|n| @allowed_requestors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserSet.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "scopeType" => lambda {|n| @scope_type = n.get_string_value() },
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the scopeType property value. Who can request. One of NoSubjects, SpecificDirectorySubjects, SpecificConnectedOrganizationSubjects, AllConfiguredConnectedOrganizationSubjects, AllExistingConnectedOrganizationSubjects, AllExistingDirectoryMemberUsers, AllExistingDirectorySubjects or AllExternalSubjects.
        ## @return a string
        ## 
        def scope_type
            return @scope_type
        end
        ## 
        ## Sets the scopeType property value. Who can request. One of NoSubjects, SpecificDirectorySubjects, SpecificConnectedOrganizationSubjects, AllConfiguredConnectedOrganizationSubjects, AllExistingConnectedOrganizationSubjects, AllExistingDirectoryMemberUsers, AllExistingDirectorySubjects or AllExternalSubjects.
        ## @param value Value to set for the scopeType property.
        ## @return a void
        ## 
        def scope_type=(value)
            @scope_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_boolean_value("acceptRequests", @accept_requests)
            writer.write_collection_of_object_values("allowedRequestors", @allowed_requestors)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("scopeType", @scope_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
