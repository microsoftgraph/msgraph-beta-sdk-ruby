require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class GovernanceSubject < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The display name of the subject.
        @display_name
        ## 
        # The email address of the user subject. If the subject is in other types, it is empty.
        @email
        ## 
        # The principal name of the user subject. If the subject is in other types, it is empty.
        @principal_name
        ## 
        # The type of the subject. The value can be User, Group, and ServicePrincipal.
        @type
        ## 
        ## Instantiates a new governanceSubject and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a governance_subject
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return GovernanceSubject.new
        end
        ## 
        ## Gets the displayName property value. The display name of the subject.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The display name of the subject.
        ## @param value Value to set for the display_name property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the email property value. The email address of the user subject. If the subject is in other types, it is empty.
        ## @return a string
        ## 
        def email
            return @email
        end
        ## 
        ## Sets the email property value. The email address of the user subject. If the subject is in other types, it is empty.
        ## @param value Value to set for the email property.
        ## @return a void
        ## 
        def email=(value)
            @email = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "email" => lambda {|n| @email = n.get_string_value() },
                "principalName" => lambda {|n| @principal_name = n.get_string_value() },
                "type" => lambda {|n| @type = n.get_string_value() },
            })
        end
        ## 
        ## Gets the principalName property value. The principal name of the user subject. If the subject is in other types, it is empty.
        ## @return a string
        ## 
        def principal_name
            return @principal_name
        end
        ## 
        ## Sets the principalName property value. The principal name of the user subject. If the subject is in other types, it is empty.
        ## @param value Value to set for the principal_name property.
        ## @return a void
        ## 
        def principal_name=(value)
            @principal_name = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("displayName", @display_name)
            writer.write_string_value("email", @email)
            writer.write_string_value("principalName", @principal_name)
            writer.write_string_value("type", @type)
        end
        ## 
        ## Gets the type property value. The type of the subject. The value can be User, Group, and ServicePrincipal.
        ## @return a string
        ## 
        def type
            return @type
        end
        ## 
        ## Sets the type property value. The type of the subject. The value can be User, Group, and ServicePrincipal.
        ## @param value Value to set for the type property.
        ## @return a void
        ## 
        def type=(value)
            @type = value
        end
    end
end
