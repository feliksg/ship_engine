=begin
#ShipEngine API

#ShipEngine's easy-to-use REST API lets you manage all of your shipping needs without worrying about the complexities of different carrier APIs and protocols. We handle all the heavy lifting so you can focus on providing a first-class shipping experience for your customers at the best possible prices.  Each of ShipEngine's features can be used by itself or in conjunction with each other to build powerful shipping functionality into your application or service.  ## Getting Started If you're new to REST APIs then be sure to read our [introduction to REST](https://www.shipengine.com/docs/rest/) to understand the basics. Learn how to [authenticate yourself to ShipEngine](https://www.shipengine.com/docs/auth/), and then use our [sandbox environment](https://www.shipengine.com/docs/sandbox/) to kick the tires and get familiar with our API. If you run into any problems, then be sure to check the [error handling guide](https://www.shipengine.com/docs/errors/) for tips.  Here are some step-by-step **tutorials** to get you started:    - [Learn how to create your first shipping label](https://www.shipengine.com/docs/labels/create-a-label/)   - [Calculate shipping costs and compare rates across carriers](https://www.shipengine.com/docs/rates/)   - [Track packages on-demand or in real time](https://www.shipengine.com/docs/tracking/)   - [Validate mailing addresses anywhere on Earth](https://www.shipengine.com/docs/addresses/validation/)   ## Shipping Labels for Every Major Carrier ShipEngine makes it easy to [create shipping labels for any carrier](https://www.shipengine.com/docs/labels/create-a-label/) and [download them](https://www.shipengine.com/docs/labels/downloading/) in a [variety of file formats](https://www.shipengine.com/docs/labels/formats/). You can even customize labels with your own [messages](https://www.shipengine.com/docs/labels/messages/) and [images](https://www.shipengine.com/docs/labels/branding/).   ## Real-Time Package Tracking With ShipEngine you can [get the current status of a package](https://www.shipengine.com/docs/tracking/) or [subscribe to real-time tracking updates](https://www.shipengine.com/docs/tracking/webhooks/) via webhooks. You can also create [custimized tracking pages](https://www.shipengine.com/docs/tracking/branded-tracking-page/) with your own branding so your customers will always know where their package is.   ## Compare Shipping Costs Across Carriers Make sure you ship as cost-effectively as possible by [comparing rates across carriers](https://www.shipengine.com/docs/rates/get-shipment-rates/) using the ShipEngine Rates API. Or if you don't know the full shipment details yet, then you can [get rate estimates](https://www.shipengine.com/docs/rates/estimate/) with limited address info.   ## Worldwide Address Validation ShipEngine supports [address validation](https://www.shipengine.com/docs/addresses/validation/) for virtually [every country on Earth](https://www.shipengine.com/docs/addresses/validation/countries/), including the United States, Canada, Great Britain, Australia, Germany, France, Norway, Spain, Sweden, Israel, Italy, and over 160 others. 

The version of the OpenAPI document: 1.1.202006302006
Contact: sales@shipengine.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module ShipEngine
  # A rate
  class Rate
    # A string that uniquely identifies the rate
    attr_accessor :rate_id

    attr_accessor :rate_type

    # A string that uniquely identifies the carrier
    attr_accessor :carrier_id

    # The shipping amount
    attr_accessor :shipping_amount

    # The insurance amount
    attr_accessor :insurance_amount

    # The confirmation amount
    attr_accessor :confirmation_amount

    # Any other charges associated with this rate
    attr_accessor :other_amount

    # Tariff and additional taxes associated with an international shipment.
    attr_accessor :tax_amount

    # Certain carriers base [their rates](https://blog.stamps.com/2017/09/08/usps-postal-zones/) off of custom zones that vary depending upon the ship_to and ship_from location 
    attr_accessor :zone

    # package type that this rate was estimated for
    attr_accessor :package_type

    # The number of days estimated for delivery, this will show the _actual_ deliverty time if for example, the package gets shipped on a Friday 
    attr_accessor :delivery_days

    # Indicates if the rate is guaranteed.
    attr_accessor :guaranteed_service

    attr_accessor :estimated_delivery_date

    # The carrier delivery days
    attr_accessor :carrier_delivery_days

    # ship date
    attr_accessor :ship_date

    # Indicates if the rates been negotiated
    attr_accessor :negotiated_rate

    # service type
    attr_accessor :service_type

    # service code for the rate
    attr_accessor :service_code

    # Indicates if rate is trackable
    attr_accessor :trackable

    # carrier code
    attr_accessor :carrier_code

    # carrier nickname
    attr_accessor :carrier_nickname

    # carrier friendly name
    attr_accessor :carrier_friendly_name

    attr_accessor :validation_status

    # The warning messages
    attr_accessor :warning_messages

    # The error messages
    attr_accessor :error_messages

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'rate_id' => :'rate_id',
        :'rate_type' => :'rate_type',
        :'carrier_id' => :'carrier_id',
        :'shipping_amount' => :'shipping_amount',
        :'insurance_amount' => :'insurance_amount',
        :'confirmation_amount' => :'confirmation_amount',
        :'other_amount' => :'other_amount',
        :'tax_amount' => :'tax_amount',
        :'zone' => :'zone',
        :'package_type' => :'package_type',
        :'delivery_days' => :'delivery_days',
        :'guaranteed_service' => :'guaranteed_service',
        :'estimated_delivery_date' => :'estimated_delivery_date',
        :'carrier_delivery_days' => :'carrier_delivery_days',
        :'ship_date' => :'ship_date',
        :'negotiated_rate' => :'negotiated_rate',
        :'service_type' => :'service_type',
        :'service_code' => :'service_code',
        :'trackable' => :'trackable',
        :'carrier_code' => :'carrier_code',
        :'carrier_nickname' => :'carrier_nickname',
        :'carrier_friendly_name' => :'carrier_friendly_name',
        :'validation_status' => :'validation_status',
        :'warning_messages' => :'warning_messages',
        :'error_messages' => :'error_messages'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'rate_id' => :'String',
        :'rate_type' => :'RateType',
        :'carrier_id' => :'String',
        :'shipping_amount' => :'MonetaryValue',
        :'insurance_amount' => :'MonetaryValue',
        :'confirmation_amount' => :'MonetaryValue',
        :'other_amount' => :'MonetaryValue',
        :'tax_amount' => :'MonetaryValue',
        :'zone' => :'Integer',
        :'package_type' => :'String',
        :'delivery_days' => :'Integer',
        :'guaranteed_service' => :'Boolean',
        :'estimated_delivery_date' => :'DateTime',
        :'carrier_delivery_days' => :'String',
        :'ship_date' => :'DateTime',
        :'negotiated_rate' => :'Boolean',
        :'service_type' => :'String',
        :'service_code' => :'String',
        :'trackable' => :'Boolean',
        :'carrier_code' => :'String',
        :'carrier_nickname' => :'String',
        :'carrier_friendly_name' => :'String',
        :'validation_status' => :'ValidationStatus',
        :'warning_messages' => :'Array<String>',
        :'error_messages' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'zone',
        :'package_type',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ShipEngine::Rate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ShipEngine::Rate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'rate_id')
        self.rate_id = attributes[:'rate_id']
      end

      if attributes.key?(:'rate_type')
        self.rate_type = attributes[:'rate_type']
      end

      if attributes.key?(:'carrier_id')
        self.carrier_id = attributes[:'carrier_id']
      end

      if attributes.key?(:'shipping_amount')
        self.shipping_amount = attributes[:'shipping_amount']
      end

      if attributes.key?(:'insurance_amount')
        self.insurance_amount = attributes[:'insurance_amount']
      end

      if attributes.key?(:'confirmation_amount')
        self.confirmation_amount = attributes[:'confirmation_amount']
      end

      if attributes.key?(:'other_amount')
        self.other_amount = attributes[:'other_amount']
      end

      if attributes.key?(:'tax_amount')
        self.tax_amount = attributes[:'tax_amount']
      end

      if attributes.key?(:'zone')
        self.zone = attributes[:'zone']
      end

      if attributes.key?(:'package_type')
        self.package_type = attributes[:'package_type']
      end

      if attributes.key?(:'delivery_days')
        self.delivery_days = attributes[:'delivery_days']
      end

      if attributes.key?(:'guaranteed_service')
        self.guaranteed_service = attributes[:'guaranteed_service']
      end

      if attributes.key?(:'estimated_delivery_date')
        self.estimated_delivery_date = attributes[:'estimated_delivery_date']
      end

      if attributes.key?(:'carrier_delivery_days')
        self.carrier_delivery_days = attributes[:'carrier_delivery_days']
      end

      if attributes.key?(:'ship_date')
        self.ship_date = attributes[:'ship_date']
      end

      if attributes.key?(:'negotiated_rate')
        self.negotiated_rate = attributes[:'negotiated_rate']
      end

      if attributes.key?(:'service_type')
        self.service_type = attributes[:'service_type']
      end

      if attributes.key?(:'service_code')
        self.service_code = attributes[:'service_code']
      end

      if attributes.key?(:'trackable')
        self.trackable = attributes[:'trackable']
      end

      if attributes.key?(:'carrier_code')
        self.carrier_code = attributes[:'carrier_code']
      end

      if attributes.key?(:'carrier_nickname')
        self.carrier_nickname = attributes[:'carrier_nickname']
      end

      if attributes.key?(:'carrier_friendly_name')
        self.carrier_friendly_name = attributes[:'carrier_friendly_name']
      end

      if attributes.key?(:'validation_status')
        self.validation_status = attributes[:'validation_status']
      end

      if attributes.key?(:'warning_messages')
        if (value = attributes[:'warning_messages']).is_a?(Array)
          self.warning_messages = value
        end
      end

      if attributes.key?(:'error_messages')
        if (value = attributes[:'error_messages']).is_a?(Array)
          self.error_messages = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @rate_id.nil?
        invalid_properties.push('invalid value for "rate_id", rate_id cannot be nil.')
      end

      if @rate_type.nil?
        invalid_properties.push('invalid value for "rate_type", rate_type cannot be nil.')
      end

      if @carrier_id.nil?
        invalid_properties.push('invalid value for "carrier_id", carrier_id cannot be nil.')
      end

      if @shipping_amount.nil?
        invalid_properties.push('invalid value for "shipping_amount", shipping_amount cannot be nil.')
      end

      if @insurance_amount.nil?
        invalid_properties.push('invalid value for "insurance_amount", insurance_amount cannot be nil.')
      end

      if @confirmation_amount.nil?
        invalid_properties.push('invalid value for "confirmation_amount", confirmation_amount cannot be nil.')
      end

      if @other_amount.nil?
        invalid_properties.push('invalid value for "other_amount", other_amount cannot be nil.')
      end

      if @zone < 0
        invalid_properties.push('invalid value for "zone", must be greater than or equal to 0.')
      end

      if @package_type.to_s.length < 1
        invalid_properties.push('invalid value for "package_type", the character length must be great than or equal to 1.')
      end

      if !@delivery_days.nil? && @delivery_days < 1
        invalid_properties.push('invalid value for "delivery_days", must be greater than or equal to 1.')
      end

      if @guaranteed_service.nil?
        invalid_properties.push('invalid value for "guaranteed_service", guaranteed_service cannot be nil.')
      end

      if !@carrier_delivery_days.nil? && @carrier_delivery_days.to_s.length < 1
        invalid_properties.push('invalid value for "carrier_delivery_days", the character length must be great than or equal to 1.')
      end

      if @negotiated_rate.nil?
        invalid_properties.push('invalid value for "negotiated_rate", negotiated_rate cannot be nil.')
      end

      if @service_type.nil?
        invalid_properties.push('invalid value for "service_type", service_type cannot be nil.')
      end

      if @service_type.to_s.length < 1
        invalid_properties.push('invalid value for "service_type", the character length must be great than or equal to 1.')
      end

      if @service_code.nil?
        invalid_properties.push('invalid value for "service_code", service_code cannot be nil.')
      end

      if @service_code.to_s.length < 1
        invalid_properties.push('invalid value for "service_code", the character length must be great than or equal to 1.')
      end

      if @trackable.nil?
        invalid_properties.push('invalid value for "trackable", trackable cannot be nil.')
      end

      if @carrier_code.nil?
        invalid_properties.push('invalid value for "carrier_code", carrier_code cannot be nil.')
      end

      if @carrier_code.to_s.length < 1
        invalid_properties.push('invalid value for "carrier_code", the character length must be great than or equal to 1.')
      end

      if @carrier_nickname.nil?
        invalid_properties.push('invalid value for "carrier_nickname", carrier_nickname cannot be nil.')
      end

      if @carrier_nickname.to_s.length < 1
        invalid_properties.push('invalid value for "carrier_nickname", the character length must be great than or equal to 1.')
      end

      if @carrier_friendly_name.nil?
        invalid_properties.push('invalid value for "carrier_friendly_name", carrier_friendly_name cannot be nil.')
      end

      if @carrier_friendly_name.to_s.length < 1
        invalid_properties.push('invalid value for "carrier_friendly_name", the character length must be great than or equal to 1.')
      end

      if @validation_status.nil?
        invalid_properties.push('invalid value for "validation_status", validation_status cannot be nil.')
      end

      if @warning_messages.nil?
        invalid_properties.push('invalid value for "warning_messages", warning_messages cannot be nil.')
      end

      if @error_messages.nil?
        invalid_properties.push('invalid value for "error_messages", error_messages cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @rate_id.nil?
      return false if @rate_type.nil?
      return false if @carrier_id.nil?
      return false if @shipping_amount.nil?
      return false if @insurance_amount.nil?
      return false if @confirmation_amount.nil?
      return false if @other_amount.nil?
      return false if @zone < 0
      return false if @package_type.to_s.length < 1
      return false if !@delivery_days.nil? && @delivery_days < 1
      return false if @guaranteed_service.nil?
      return false if !@carrier_delivery_days.nil? && @carrier_delivery_days.to_s.length < 1
      return false if @negotiated_rate.nil?
      return false if @service_type.nil?
      return false if @service_type.to_s.length < 1
      return false if @service_code.nil?
      return false if @service_code.to_s.length < 1
      return false if @trackable.nil?
      return false if @carrier_code.nil?
      return false if @carrier_code.to_s.length < 1
      return false if @carrier_nickname.nil?
      return false if @carrier_nickname.to_s.length < 1
      return false if @carrier_friendly_name.nil?
      return false if @carrier_friendly_name.to_s.length < 1
      return false if @validation_status.nil?
      return false if @warning_messages.nil?
      return false if @error_messages.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] zone Value to be assigned
    def zone=(zone)
      if zone < 0
        fail ArgumentError, 'invalid value for "zone", must be greater than or equal to 0.'
      end

      @zone = zone
    end

    # Custom attribute writer method with validation
    # @param [Object] package_type Value to be assigned
    def package_type=(package_type)
      if package_type.to_s.length < 1
        fail ArgumentError, 'invalid value for "package_type", the character length must be great than or equal to 1.'
      end

      @package_type = package_type
    end

    # Custom attribute writer method with validation
    # @param [Object] delivery_days Value to be assigned
    def delivery_days=(delivery_days)
      if !delivery_days.nil? && delivery_days < 1
        fail ArgumentError, 'invalid value for "delivery_days", must be greater than or equal to 1.'
      end

      @delivery_days = delivery_days
    end

    # Custom attribute writer method with validation
    # @param [Object] carrier_delivery_days Value to be assigned
    def carrier_delivery_days=(carrier_delivery_days)
      if !carrier_delivery_days.nil? && carrier_delivery_days.to_s.length < 1
        fail ArgumentError, 'invalid value for "carrier_delivery_days", the character length must be great than or equal to 1.'
      end

      @carrier_delivery_days = carrier_delivery_days
    end

    # Custom attribute writer method with validation
    # @param [Object] service_type Value to be assigned
    def service_type=(service_type)
      if service_type.nil?
        fail ArgumentError, 'service_type cannot be nil'
      end

      if service_type.to_s.length < 1
        fail ArgumentError, 'invalid value for "service_type", the character length must be great than or equal to 1.'
      end

      @service_type = service_type
    end

    # Custom attribute writer method with validation
    # @param [Object] service_code Value to be assigned
    def service_code=(service_code)
      if service_code.nil?
        fail ArgumentError, 'service_code cannot be nil'
      end

      if service_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "service_code", the character length must be great than or equal to 1.'
      end

      @service_code = service_code
    end

    # Custom attribute writer method with validation
    # @param [Object] carrier_code Value to be assigned
    def carrier_code=(carrier_code)
      if carrier_code.nil?
        fail ArgumentError, 'carrier_code cannot be nil'
      end

      if carrier_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "carrier_code", the character length must be great than or equal to 1.'
      end

      @carrier_code = carrier_code
    end

    # Custom attribute writer method with validation
    # @param [Object] carrier_nickname Value to be assigned
    def carrier_nickname=(carrier_nickname)
      if carrier_nickname.nil?
        fail ArgumentError, 'carrier_nickname cannot be nil'
      end

      if carrier_nickname.to_s.length < 1
        fail ArgumentError, 'invalid value for "carrier_nickname", the character length must be great than or equal to 1.'
      end

      @carrier_nickname = carrier_nickname
    end

    # Custom attribute writer method with validation
    # @param [Object] carrier_friendly_name Value to be assigned
    def carrier_friendly_name=(carrier_friendly_name)
      if carrier_friendly_name.nil?
        fail ArgumentError, 'carrier_friendly_name cannot be nil'
      end

      if carrier_friendly_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "carrier_friendly_name", the character length must be great than or equal to 1.'
      end

      @carrier_friendly_name = carrier_friendly_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          rate_id == o.rate_id &&
          rate_type == o.rate_type &&
          carrier_id == o.carrier_id &&
          shipping_amount == o.shipping_amount &&
          insurance_amount == o.insurance_amount &&
          confirmation_amount == o.confirmation_amount &&
          other_amount == o.other_amount &&
          tax_amount == o.tax_amount &&
          zone == o.zone &&
          package_type == o.package_type &&
          delivery_days == o.delivery_days &&
          guaranteed_service == o.guaranteed_service &&
          estimated_delivery_date == o.estimated_delivery_date &&
          carrier_delivery_days == o.carrier_delivery_days &&
          ship_date == o.ship_date &&
          negotiated_rate == o.negotiated_rate &&
          service_type == o.service_type &&
          service_code == o.service_code &&
          trackable == o.trackable &&
          carrier_code == o.carrier_code &&
          carrier_nickname == o.carrier_nickname &&
          carrier_friendly_name == o.carrier_friendly_name &&
          validation_status == o.validation_status &&
          warning_messages == o.warning_messages &&
          error_messages == o.error_messages
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [rate_id, rate_type, carrier_id, shipping_amount, insurance_amount, confirmation_amount, other_amount, tax_amount, zone, package_type, delivery_days, guaranteed_service, estimated_delivery_date, carrier_delivery_days, ship_date, negotiated_rate, service_type, service_code, trackable, carrier_code, carrier_nickname, carrier_friendly_name, validation_status, warning_messages, error_messages].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
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
        ShipEngine.const_get(type).build_from_hash(value)
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
