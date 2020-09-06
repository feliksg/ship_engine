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
  # A Royal Mail account information request body
  class ConnectRoyalMailRequestBody
    # Account number
    attr_accessor :account_number

    # The oba email address
    attr_accessor :oba_email

    # Contact name
    attr_accessor :contact_name

    # The email address
    attr_accessor :email

    # Company name
    attr_accessor :company_name

    # Street line1
    attr_accessor :street_line1

    # Street line2
    attr_accessor :street_line2

    # Street line3
    attr_accessor :street_line3

    # City
    attr_accessor :city

    # Postal code
    attr_accessor :postal_code

    # Phone
    attr_accessor :phone

    # Nickname
    attr_accessor :nickname

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_number' => :'account_number',
        :'oba_email' => :'oba_email',
        :'contact_name' => :'contact_name',
        :'email' => :'email',
        :'company_name' => :'company_name',
        :'street_line1' => :'street_line1',
        :'street_line2' => :'street_line2',
        :'street_line3' => :'street_line3',
        :'city' => :'city',
        :'postal_code' => :'postal_code',
        :'phone' => :'phone',
        :'nickname' => :'nickname'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_number' => :'String',
        :'oba_email' => :'String',
        :'contact_name' => :'String',
        :'email' => :'String',
        :'company_name' => :'String',
        :'street_line1' => :'String',
        :'street_line2' => :'String',
        :'street_line3' => :'String',
        :'city' => :'String',
        :'postal_code' => :'String',
        :'phone' => :'String',
        :'nickname' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ShipEngine::ConnectRoyalMailRequestBody` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ShipEngine::ConnectRoyalMailRequestBody`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'oba_email')
        self.oba_email = attributes[:'oba_email']
      end

      if attributes.key?(:'contact_name')
        self.contact_name = attributes[:'contact_name']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'company_name')
        self.company_name = attributes[:'company_name']
      end

      if attributes.key?(:'street_line1')
        self.street_line1 = attributes[:'street_line1']
      end

      if attributes.key?(:'street_line2')
        self.street_line2 = attributes[:'street_line2']
      end

      if attributes.key?(:'street_line3')
        self.street_line3 = attributes[:'street_line3']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'nickname')
        self.nickname = attributes[:'nickname']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @account_number.nil?
        invalid_properties.push('invalid value for "account_number", account_number cannot be nil.')
      end

      if @account_number.to_s.length < 1
        invalid_properties.push('invalid value for "account_number", the character length must be great than or equal to 1.')
      end

      if @contact_name.nil?
        invalid_properties.push('invalid value for "contact_name", contact_name cannot be nil.')
      end

      if @contact_name.to_s.length < 1
        invalid_properties.push('invalid value for "contact_name", the character length must be great than or equal to 1.')
      end

      if !@company_name.nil? && @company_name.to_s.length < 1
        invalid_properties.push('invalid value for "company_name", the character length must be great than or equal to 1.')
      end

      if !@street_line1.nil? && @street_line1.to_s.length < 1
        invalid_properties.push('invalid value for "street_line1", the character length must be great than or equal to 1.')
      end

      if !@street_line2.nil? && @street_line2.to_s.length < 1
        invalid_properties.push('invalid value for "street_line2", the character length must be great than or equal to 1.')
      end

      if !@street_line3.nil? && @street_line3.to_s.length < 1
        invalid_properties.push('invalid value for "street_line3", the character length must be great than or equal to 1.')
      end

      if @city.nil?
        invalid_properties.push('invalid value for "city", city cannot be nil.')
      end

      if @city.to_s.length < 1
        invalid_properties.push('invalid value for "city", the character length must be great than or equal to 1.')
      end

      if @postal_code.nil?
        invalid_properties.push('invalid value for "postal_code", postal_code cannot be nil.')
      end

      if @postal_code.to_s.length < 1
        invalid_properties.push('invalid value for "postal_code", the character length must be great than or equal to 1.')
      end

      if !@phone.nil? && @phone.to_s.length < 1
        invalid_properties.push('invalid value for "phone", the character length must be great than or equal to 1.')
      end

      if @nickname.nil?
        invalid_properties.push('invalid value for "nickname", nickname cannot be nil.')
      end

      if @nickname.to_s.length < 1
        invalid_properties.push('invalid value for "nickname", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_number.nil?
      return false if @account_number.to_s.length < 1
      return false if @contact_name.nil?
      return false if @contact_name.to_s.length < 1
      return false if !@company_name.nil? && @company_name.to_s.length < 1
      return false if !@street_line1.nil? && @street_line1.to_s.length < 1
      return false if !@street_line2.nil? && @street_line2.to_s.length < 1
      return false if !@street_line3.nil? && @street_line3.to_s.length < 1
      return false if @city.nil?
      return false if @city.to_s.length < 1
      return false if @postal_code.nil?
      return false if @postal_code.to_s.length < 1
      return false if !@phone.nil? && @phone.to_s.length < 1
      return false if @nickname.nil?
      return false if @nickname.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)
      if account_number.nil?
        fail ArgumentError, 'account_number cannot be nil'
      end

      if account_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "account_number", the character length must be great than or equal to 1.'
      end

      @account_number = account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_name Value to be assigned
    def contact_name=(contact_name)
      if contact_name.nil?
        fail ArgumentError, 'contact_name cannot be nil'
      end

      if contact_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "contact_name", the character length must be great than or equal to 1.'
      end

      @contact_name = contact_name
    end

    # Custom attribute writer method with validation
    # @param [Object] company_name Value to be assigned
    def company_name=(company_name)
      if !company_name.nil? && company_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "company_name", the character length must be great than or equal to 1.'
      end

      @company_name = company_name
    end

    # Custom attribute writer method with validation
    # @param [Object] street_line1 Value to be assigned
    def street_line1=(street_line1)
      if !street_line1.nil? && street_line1.to_s.length < 1
        fail ArgumentError, 'invalid value for "street_line1", the character length must be great than or equal to 1.'
      end

      @street_line1 = street_line1
    end

    # Custom attribute writer method with validation
    # @param [Object] street_line2 Value to be assigned
    def street_line2=(street_line2)
      if !street_line2.nil? && street_line2.to_s.length < 1
        fail ArgumentError, 'invalid value for "street_line2", the character length must be great than or equal to 1.'
      end

      @street_line2 = street_line2
    end

    # Custom attribute writer method with validation
    # @param [Object] street_line3 Value to be assigned
    def street_line3=(street_line3)
      if !street_line3.nil? && street_line3.to_s.length < 1
        fail ArgumentError, 'invalid value for "street_line3", the character length must be great than or equal to 1.'
      end

      @street_line3 = street_line3
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)
      if city.nil?
        fail ArgumentError, 'city cannot be nil'
      end

      if city.to_s.length < 1
        fail ArgumentError, 'invalid value for "city", the character length must be great than or equal to 1.'
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code)
      if postal_code.nil?
        fail ArgumentError, 'postal_code cannot be nil'
      end

      if postal_code.to_s.length < 1
        fail ArgumentError, 'invalid value for "postal_code", the character length must be great than or equal to 1.'
      end

      @postal_code = postal_code
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)
      if !phone.nil? && phone.to_s.length < 1
        fail ArgumentError, 'invalid value for "phone", the character length must be great than or equal to 1.'
      end

      @phone = phone
    end

    # Custom attribute writer method with validation
    # @param [Object] nickname Value to be assigned
    def nickname=(nickname)
      if nickname.nil?
        fail ArgumentError, 'nickname cannot be nil'
      end

      if nickname.to_s.length < 1
        fail ArgumentError, 'invalid value for "nickname", the character length must be great than or equal to 1.'
      end

      @nickname = nickname
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_number == o.account_number &&
          oba_email == o.oba_email &&
          contact_name == o.contact_name &&
          email == o.email &&
          company_name == o.company_name &&
          street_line1 == o.street_line1 &&
          street_line2 == o.street_line2 &&
          street_line3 == o.street_line3 &&
          city == o.city &&
          postal_code == o.postal_code &&
          phone == o.phone &&
          nickname == o.nickname
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_number, oba_email, contact_name, email, company_name, street_line1, street_line2, street_line3, city, postal_code, phone, nickname].hash
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
