require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ItemPatent < MicrosoftGraphBeta::Models::ItemFacet
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Descpription of the patent or filing.
        @description
        ## 
        # Title of the patent or filing.
        @display_name
        ## 
        # Indicates the patent is pending.
        @is_pending
        ## 
        # The date that the patent was granted.
        @issued_date
        ## 
        # Authority which granted the patent.
        @issuing_authority
        ## 
        # The patent number.
        @number
        ## 
        # URL referencing the patent or filing.
        @web_url
        ## 
        ## Instantiates a new ItemPatent and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.itemPatent"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a item_patent
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ItemPatent.new
        end
        ## 
        ## Gets the description property value. Descpription of the patent or filing.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Descpription of the patent or filing.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. Title of the patent or filing.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Title of the patent or filing.
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
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "isPending" => lambda {|n| @is_pending = n.get_boolean_value() },
                "issuedDate" => lambda {|n| @issued_date = n.get_date_value() },
                "issuingAuthority" => lambda {|n| @issuing_authority = n.get_string_value() },
                "number" => lambda {|n| @number = n.get_string_value() },
                "webUrl" => lambda {|n| @web_url = n.get_string_value() },
            })
        end
        ## 
        ## Gets the isPending property value. Indicates the patent is pending.
        ## @return a boolean
        ## 
        def is_pending
            return @is_pending
        end
        ## 
        ## Sets the isPending property value. Indicates the patent is pending.
        ## @param value Value to set for the isPending property.
        ## @return a void
        ## 
        def is_pending=(value)
            @is_pending = value
        end
        ## 
        ## Gets the issuedDate property value. The date that the patent was granted.
        ## @return a date
        ## 
        def issued_date
            return @issued_date
        end
        ## 
        ## Sets the issuedDate property value. The date that the patent was granted.
        ## @param value Value to set for the issuedDate property.
        ## @return a void
        ## 
        def issued_date=(value)
            @issued_date = value
        end
        ## 
        ## Gets the issuingAuthority property value. Authority which granted the patent.
        ## @return a string
        ## 
        def issuing_authority
            return @issuing_authority
        end
        ## 
        ## Sets the issuingAuthority property value. Authority which granted the patent.
        ## @param value Value to set for the issuingAuthority property.
        ## @return a void
        ## 
        def issuing_authority=(value)
            @issuing_authority = value
        end
        ## 
        ## Gets the number property value. The patent number.
        ## @return a string
        ## 
        def number
            return @number
        end
        ## 
        ## Sets the number property value. The patent number.
        ## @param value Value to set for the number property.
        ## @return a void
        ## 
        def number=(value)
            @number = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_boolean_value("isPending", @is_pending)
            writer.write_date_value("issuedDate", @issued_date)
            writer.write_string_value("issuingAuthority", @issuing_authority)
            writer.write_string_value("number", @number)
            writer.write_string_value("webUrl", @web_url)
        end
        ## 
        ## Gets the webUrl property value. URL referencing the patent or filing.
        ## @return a string
        ## 
        def web_url
            return @web_url
        end
        ## 
        ## Sets the webUrl property value. URL referencing the patent or filing.
        ## @param value Value to set for the webUrl property.
        ## @return a void
        ## 
        def web_url=(value)
            @web_url = value
        end
    end
end
