=begin
#Moderation API

#API for automated content moderation

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'date'
require 'time'

module ModerationApi
  class ActionsList200ResponseInner
    # The ID of the action.
    attr_accessor :id

    # The date the action was created.
    attr_accessor :created_at

    # The name of the action.
    attr_accessor :name

    # User defined key of the action.
    attr_accessor :key

    # The description of the action.
    attr_accessor :description

    # Whether the action resolves and removes the item, unresolves and re-add it to the queue, or does not change the resolve status.
    attr_accessor :queue_behaviour

    # The IDs of the queues the action is available in.
    attr_accessor :filter_in_queue_ids

    # Show the action in all queues, selected queues or no queues (to use via API only).
    attr_accessor :position

    # The possible values of the action. The user will be prompted to select one of these values when executing the action.
    attr_accessor :possible_values

    # Whether the action requires a value to be executed.
    attr_accessor :value_required

    # Whether the action allows any text to be entered as a value or if it must be one of the possible values.
    attr_accessor :free_text

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created_at' => :'createdAt',
        :'name' => :'name',
        :'key' => :'key',
        :'description' => :'description',
        :'queue_behaviour' => :'queueBehaviour',
        :'filter_in_queue_ids' => :'filterInQueueIds',
        :'position' => :'position',
        :'possible_values' => :'possibleValues',
        :'value_required' => :'valueRequired',
        :'free_text' => :'freeText'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'created_at' => :'Time',
        :'name' => :'String',
        :'key' => :'String',
        :'description' => :'String',
        :'queue_behaviour' => :'String',
        :'filter_in_queue_ids' => :'Array<String>',
        :'position' => :'String',
        :'possible_values' => :'Array<ActionsList200ResponseInnerPossibleValuesInner>',
        :'value_required' => :'Boolean',
        :'free_text' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'key',
        :'description',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ModerationApi::ActionsList200ResponseInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ModerationApi::ActionsList200ResponseInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'key')
        self.key = attributes[:'key']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'queue_behaviour')
        self.queue_behaviour = attributes[:'queue_behaviour']
      else
        self.queue_behaviour = 'NO_CHANGE'
      end

      if attributes.key?(:'filter_in_queue_ids')
        if (value = attributes[:'filter_in_queue_ids']).is_a?(Array)
          self.filter_in_queue_ids = value
        end
      end

      if attributes.key?(:'position')
        self.position = attributes[:'position']
      else
        self.position = 'ALL_QUEUES'
      end

      if attributes.key?(:'possible_values')
        if (value = attributes[:'possible_values']).is_a?(Array)
          self.possible_values = value
        end
      end

      if attributes.key?(:'value_required')
        self.value_required = attributes[:'value_required']
      else
        self.value_required = false
      end

      if attributes.key?(:'free_text')
        self.free_text = attributes[:'free_text']
      else
        self.free_text = false
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @created_at.nil?
      return false if @name.nil?
      queue_behaviour_validator = EnumAttributeValidator.new('String', ["REMOVE", "ADD", "NO_CHANGE", "unknown_default_open_api"])
      return false unless queue_behaviour_validator.valid?(@queue_behaviour)
      position_validator = EnumAttributeValidator.new('String', ["ALL_QUEUES", "SOME_QUEUES", "HIDDEN", "unknown_default_open_api"])
      return false unless position_validator.valid?(@position)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] queue_behaviour Object to be assigned
    def queue_behaviour=(queue_behaviour)
      validator = EnumAttributeValidator.new('String', ["REMOVE", "ADD", "NO_CHANGE", "unknown_default_open_api"])
      unless validator.valid?(queue_behaviour)
        fail ArgumentError, "invalid value for \"queue_behaviour\", must be one of #{validator.allowable_values}."
      end
      @queue_behaviour = queue_behaviour
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] position Object to be assigned
    def position=(position)
      validator = EnumAttributeValidator.new('String', ["ALL_QUEUES", "SOME_QUEUES", "HIDDEN", "unknown_default_open_api"])
      unless validator.valid?(position)
        fail ArgumentError, "invalid value for \"position\", must be one of #{validator.allowable_values}."
      end
      @position = position
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          name == o.name &&
          key == o.key &&
          description == o.description &&
          queue_behaviour == o.queue_behaviour &&
          filter_in_queue_ids == o.filter_in_queue_ids &&
          position == o.position &&
          possible_values == o.possible_values &&
          value_required == o.value_required &&
          free_text == o.free_text
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created_at, name, key, description, queue_behaviour, filter_in_queue_ids, position, possible_values, value_required, free_text].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = ModerationApi.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
