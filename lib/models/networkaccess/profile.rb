require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class Profile < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Description.
                @description
                ## 
                # Profile last modified time.
                @last_modified_date_time
                ## 
                # Profile name.
                @name
                ## 
                # Traffic forwarding policies associated with this profile.
                @policies
                ## 
                # The state property
                @state
                ## 
                # Profile version.
                @version
                ## 
                ## Instantiates a new profile and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a profile
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.networkaccess.forwardingProfile"
                                return ForwardingProfile.new
                        end
                    end
                    return Profile.new
                end
                ## 
                ## Gets the description property value. Description.
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. Description.
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "policies" => lambda {|n| @policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::PolicyLink.create_from_discriminator_value(pn) }) },
                        "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::Status) },
                        "version" => lambda {|n| @version = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the lastModifiedDateTime property value. Profile last modified time.
                ## @return a date_time
                ## 
                def last_modified_date_time
                    return @last_modified_date_time
                end
                ## 
                ## Sets the lastModifiedDateTime property value. Profile last modified time.
                ## @param value Value to set for the lastModifiedDateTime property.
                ## @return a void
                ## 
                def last_modified_date_time=(value)
                    @last_modified_date_time = value
                end
                ## 
                ## Gets the name property value. Profile name.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Profile name.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the policies property value. Traffic forwarding policies associated with this profile.
                ## @return a policy_link
                ## 
                def policies
                    return @policies
                end
                ## 
                ## Sets the policies property value. Traffic forwarding policies associated with this profile.
                ## @param value Value to set for the policies property.
                ## @return a void
                ## 
                def policies=(value)
                    @policies = value
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
                    writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                    writer.write_string_value("name", @name)
                    writer.write_collection_of_object_values("policies", @policies)
                    writer.write_enum_value("state", @state)
                    writer.write_string_value("version", @version)
                end
                ## 
                ## Gets the state property value. The state property
                ## @return a status
                ## 
                def state
                    return @state
                end
                ## 
                ## Sets the state property value. The state property
                ## @param value Value to set for the state property.
                ## @return a void
                ## 
                def state=(value)
                    @state = value
                end
                ## 
                ## Gets the version property value. Profile version.
                ## @return a string
                ## 
                def version
                    return @version
                end
                ## 
                ## Sets the version property value. Profile version.
                ## @param value Value to set for the version property.
                ## @return a void
                ## 
                def version=(value)
                    @version = value
                end
            end
        end
    end
end
