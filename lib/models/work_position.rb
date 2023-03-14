require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WorkPosition < MicrosoftGraphBeta::Models::ItemFacet
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Categories that the user has associated with this position.
            @categories
            ## 
            # Colleagues that are associated with this position.
            @colleagues
            ## 
            # The detail property
            @detail
            ## 
            # Denotes whether or not the position is current.
            @is_current
            ## 
            # Contains detail of the user's manager in this position.
            @manager
            ## 
            ## Gets the categories property value. Categories that the user has associated with this position.
            ## @return a string
            ## 
            def categories
                return @categories
            end
            ## 
            ## Sets the categories property value. Categories that the user has associated with this position.
            ## @param value Value to set for the categories property.
            ## @return a void
            ## 
            def categories=(value)
                @categories = value
            end
            ## 
            ## Gets the colleagues property value. Colleagues that are associated with this position.
            ## @return a related_person
            ## 
            def colleagues
                return @colleagues
            end
            ## 
            ## Sets the colleagues property value. Colleagues that are associated with this position.
            ## @param value Value to set for the colleagues property.
            ## @return a void
            ## 
            def colleagues=(value)
                @colleagues = value
            end
            ## 
            ## Instantiates a new WorkPosition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.workPosition"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a work_position
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WorkPosition.new
            end
            ## 
            ## Gets the detail property value. The detail property
            ## @return a position_detail
            ## 
            def detail
                return @detail
            end
            ## 
            ## Sets the detail property value. The detail property
            ## @param value Value to set for the detail property.
            ## @return a void
            ## 
            def detail=(value)
                @detail = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "categories" => lambda {|n| @categories = n.get_collection_of_primitive_values(String) },
                    "colleagues" => lambda {|n| @colleagues = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RelatedPerson.create_from_discriminator_value(pn) }) },
                    "detail" => lambda {|n| @detail = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PositionDetail.create_from_discriminator_value(pn) }) },
                    "isCurrent" => lambda {|n| @is_current = n.get_boolean_value() },
                    "manager" => lambda {|n| @manager = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RelatedPerson.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isCurrent property value. Denotes whether or not the position is current.
            ## @return a boolean
            ## 
            def is_current
                return @is_current
            end
            ## 
            ## Sets the isCurrent property value. Denotes whether or not the position is current.
            ## @param value Value to set for the is_current property.
            ## @return a void
            ## 
            def is_current=(value)
                @is_current = value
            end
            ## 
            ## Gets the manager property value. Contains detail of the user's manager in this position.
            ## @return a related_person
            ## 
            def manager
                return @manager
            end
            ## 
            ## Sets the manager property value. Contains detail of the user's manager in this position.
            ## @param value Value to set for the manager property.
            ## @return a void
            ## 
            def manager=(value)
                @manager = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("categories", @categories)
                writer.write_collection_of_object_values("colleagues", @colleagues)
                writer.write_object_value("detail", @detail)
                writer.write_boolean_value("isCurrent", @is_current)
                writer.write_object_value("manager", @manager)
            end
        end
    end
end
