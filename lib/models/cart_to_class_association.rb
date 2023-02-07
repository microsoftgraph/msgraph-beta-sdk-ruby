require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # CartToClassAssociation for associating device carts with classrooms.
    class CartToClassAssociation < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Identifiers of classrooms to be associated with device carts.
        @classroom_ids
        ## 
        # DateTime the object was created.
        @created_date_time
        ## 
        # Admin provided description of the CartToClassAssociation.
        @description
        ## 
        # Identifiers of device carts to be associated with classes.
        @device_cart_ids
        ## 
        # Admin provided name of the device configuration.
        @display_name
        ## 
        # DateTime the object was last modified.
        @last_modified_date_time
        ## 
        # Version of the CartToClassAssociation.
        @version
        ## 
        ## Gets the classroomIds property value. Identifiers of classrooms to be associated with device carts.
        ## @return a string
        ## 
        def classroom_ids
            return @classroom_ids
        end
        ## 
        ## Sets the classroomIds property value. Identifiers of classrooms to be associated with device carts.
        ## @param value Value to set for the classroom_ids property.
        ## @return a void
        ## 
        def classroom_ids=(value)
            @classroom_ids = value
        end
        ## 
        ## Instantiates a new cartToClassAssociation and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdDateTime property value. DateTime the object was created.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. DateTime the object was created.
        ## @param value Value to set for the created_date_time property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a cart_to_class_association
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CartToClassAssociation.new
        end
        ## 
        ## Gets the description property value. Admin provided description of the CartToClassAssociation.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Admin provided description of the CartToClassAssociation.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the deviceCartIds property value. Identifiers of device carts to be associated with classes.
        ## @return a string
        ## 
        def device_cart_ids
            return @device_cart_ids
        end
        ## 
        ## Sets the deviceCartIds property value. Identifiers of device carts to be associated with classes.
        ## @param value Value to set for the device_cart_ids property.
        ## @return a void
        ## 
        def device_cart_ids=(value)
            @device_cart_ids = value
        end
        ## 
        ## Gets the displayName property value. Admin provided name of the device configuration.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Admin provided name of the device configuration.
        ## @param value Value to set for the display_name property.
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
                "classroomIds" => lambda {|n| @classroom_ids = n.get_collection_of_primitive_values(String) },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "deviceCartIds" => lambda {|n| @device_cart_ids = n.get_collection_of_primitive_values(String) },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "version" => lambda {|n| @version = n.get_number_value() },
            })
        end
        ## 
        ## Gets the lastModifiedDateTime property value. DateTime the object was last modified.
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. DateTime the object was last modified.
        ## @param value Value to set for the last_modified_date_time property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_primitive_values("classroomIds", @classroom_ids)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_string_value("description", @description)
            writer.write_collection_of_primitive_values("deviceCartIds", @device_cart_ids)
            writer.write_string_value("displayName", @display_name)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_number_value("version", @version)
        end
        ## 
        ## Gets the version property value. Version of the CartToClassAssociation.
        ## @return a integer
        ## 
        def version
            return @version
        end
        ## 
        ## Sets the version property value. Version of the CartToClassAssociation.
        ## @param value Value to set for the version property.
        ## @return a void
        ## 
        def version=(value)
            @version = value
        end
    end
end
