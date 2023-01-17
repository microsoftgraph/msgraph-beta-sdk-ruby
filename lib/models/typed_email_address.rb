require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TypedEmailAddress < MicrosoftGraphBeta::Models::EmailAddress
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # To specify a custom type of email address, set type to other, and assign otherLabel to a custom string. For example, you may use a specific email address for your volunteer activities. Set type to other, and set otherLabel to a custom string such as Volunteer work.
        @other_label
        ## 
        # The type of email address. Possible values are: unknown, work, personal, main, other. The default value is unknown, which means address has not been set as a specific type.
        @type
        ## 
        ## Instantiates a new TypedEmailAddress and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.typedEmailAddress"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a typed_email_address
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TypedEmailAddress.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "otherLabel" => lambda {|n| @other_label = n.get_string_value() },
                "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraphBeta::Models::EmailType) },
            })
        end
        ## 
        ## Gets the otherLabel property value. To specify a custom type of email address, set type to other, and assign otherLabel to a custom string. For example, you may use a specific email address for your volunteer activities. Set type to other, and set otherLabel to a custom string such as Volunteer work.
        ## @return a string
        ## 
        def other_label
            return @other_label
        end
        ## 
        ## Sets the otherLabel property value. To specify a custom type of email address, set type to other, and assign otherLabel to a custom string. For example, you may use a specific email address for your volunteer activities. Set type to other, and set otherLabel to a custom string such as Volunteer work.
        ## @param value Value to set for the otherLabel property.
        ## @return a void
        ## 
        def other_label=(value)
            @other_label = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("otherLabel", @other_label)
            writer.write_enum_value("type", @type)
        end
        ## 
        ## Gets the type property value. The type of email address. Possible values are: unknown, work, personal, main, other. The default value is unknown, which means address has not been set as a specific type.
        ## @return a email_type
        ## 
        def type
            return @type
        end
        ## 
        ## Sets the type property value. The type of email address. Possible values are: unknown, work, personal, main, other. The default value is unknown, which means address has not been set as a specific type.
        ## @param value Value to set for the type property.
        ## @return a void
        ## 
        def type=(value)
            @type = value
        end
    end
end
