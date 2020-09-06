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
  # A DHL Ecommerce account information request body
  class ConnectDhlEcommerceRequestBody
    # A nickname to help you identify this account
    attr_accessor :nickname

    # The client id
    attr_accessor :client_id

    # The account username
    attr_accessor :username

    # The account password
    attr_accessor :password

    # The pickup number
    attr_accessor :pickup_number

    # The distribution center
    attr_accessor :distribution_center

    # The DHL E-Commerce API key. This field is optional, but if not set you will not be able to get rates for this account. 
    attr_accessor :api_key

    # The DHL E-Commerce API secret. This field is optional, but if not set you will not be able to get rates for this account. 
    attr_accessor :api_secret

    attr_accessor :ancillary_endorsement

    # Account number
    attr_accessor :account_number

    # FTP username
    attr_accessor :ftp_username

    # FTP password
    attr_accessor :ftp_password

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'nickname' => :'nickname',
        :'client_id' => :'client_id',
        :'username' => :'username',
        :'password' => :'password',
        :'pickup_number' => :'pickup_number',
        :'distribution_center' => :'distribution_center',
        :'api_key' => :'api_key',
        :'api_secret' => :'api_secret',
        :'ancillary_endorsement' => :'ancillary_endorsement',
        :'account_number' => :'account_number',
        :'ftp_username' => :'ftp_username',
        :'ftp_password' => :'ftp_password'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'nickname' => :'String',
        :'client_id' => :'String',
        :'username' => :'String',
        :'password' => :'String',
        :'pickup_number' => :'String',
        :'distribution_center' => :'String',
        :'api_key' => :'String',
        :'api_secret' => :'String',
        :'ancillary_endorsement' => :'AncillaryServiceEndorsement',
        :'account_number' => :'String',
        :'ftp_username' => :'String',
        :'ftp_password' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ShipEngine::ConnectDhlEcommerceRequestBody` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ShipEngine::ConnectDhlEcommerceRequestBody`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'nickname')
        self.nickname = attributes[:'nickname']
      end

      if attributes.key?(:'client_id')
        self.client_id = attributes[:'client_id']
      end

      if attributes.key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.key?(:'pickup_number')
        self.pickup_number = attributes[:'pickup_number']
      end

      if attributes.key?(:'distribution_center')
        self.distribution_center = attributes[:'distribution_center']
      end

      if attributes.key?(:'api_key')
        self.api_key = attributes[:'api_key']
      end

      if attributes.key?(:'api_secret')
        self.api_secret = attributes[:'api_secret']
      end

      if attributes.key?(:'ancillary_endorsement')
        self.ancillary_endorsement = attributes[:'ancillary_endorsement']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'ftp_username')
        self.ftp_username = attributes[:'ftp_username']
      end

      if attributes.key?(:'ftp_password')
        self.ftp_password = attributes[:'ftp_password']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @nickname.nil?
        invalid_properties.push('invalid value for "nickname", nickname cannot be nil.')
      end

      if @nickname.to_s.length < 1
        invalid_properties.push('invalid value for "nickname", the character length must be great than or equal to 1.')
      end

      if @client_id.nil?
        invalid_properties.push('invalid value for "client_id", client_id cannot be nil.')
      end

      if @client_id.to_s.length < 1
        invalid_properties.push('invalid value for "client_id", the character length must be great than or equal to 1.')
      end

      if @username.nil?
        invalid_properties.push('invalid value for "username", username cannot be nil.')
      end

      if @username.to_s.length < 1
        invalid_properties.push('invalid value for "username", the character length must be great than or equal to 1.')
      end

      if @password.nil?
        invalid_properties.push('invalid value for "password", password cannot be nil.')
      end

      if @password.to_s.length < 1
        invalid_properties.push('invalid value for "password", the character length must be great than or equal to 1.')
      end

      if @pickup_number.nil?
        invalid_properties.push('invalid value for "pickup_number", pickup_number cannot be nil.')
      end

      if @pickup_number.to_s.length < 1
        invalid_properties.push('invalid value for "pickup_number", the character length must be great than or equal to 1.')
      end

      if @distribution_center.nil?
        invalid_properties.push('invalid value for "distribution_center", distribution_center cannot be nil.')
      end

      if @distribution_center.to_s.length < 1
        invalid_properties.push('invalid value for "distribution_center", the character length must be great than or equal to 1.')
      end

      if !@api_key.nil? && @api_key.to_s.length < 1
        invalid_properties.push('invalid value for "api_key", the character length must be great than or equal to 1.')
      end

      if !@api_secret.nil? && @api_secret.to_s.length < 1
        invalid_properties.push('invalid value for "api_secret", the character length must be great than or equal to 1.')
      end

      if !@account_number.nil? && @account_number.to_s.length < 1
        invalid_properties.push('invalid value for "account_number", the character length must be great than or equal to 1.')
      end

      if !@ftp_username.nil? && @ftp_username.to_s.length < 1
        invalid_properties.push('invalid value for "ftp_username", the character length must be great than or equal to 1.')
      end

      if !@ftp_password.nil? && @ftp_password.to_s.length < 1
        invalid_properties.push('invalid value for "ftp_password", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @nickname.nil?
      return false if @nickname.to_s.length < 1
      return false if @client_id.nil?
      return false if @client_id.to_s.length < 1
      return false if @username.nil?
      return false if @username.to_s.length < 1
      return false if @password.nil?
      return false if @password.to_s.length < 1
      return false if @pickup_number.nil?
      return false if @pickup_number.to_s.length < 1
      return false if @distribution_center.nil?
      return false if @distribution_center.to_s.length < 1
      return false if !@api_key.nil? && @api_key.to_s.length < 1
      return false if !@api_secret.nil? && @api_secret.to_s.length < 1
      return false if !@account_number.nil? && @account_number.to_s.length < 1
      return false if !@ftp_username.nil? && @ftp_username.to_s.length < 1
      return false if !@ftp_password.nil? && @ftp_password.to_s.length < 1
      true
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

    # Custom attribute writer method with validation
    # @param [Object] client_id Value to be assigned
    def client_id=(client_id)
      if client_id.nil?
        fail ArgumentError, 'client_id cannot be nil'
      end

      if client_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "client_id", the character length must be great than or equal to 1.'
      end

      @client_id = client_id
    end

    # Custom attribute writer method with validation
    # @param [Object] username Value to be assigned
    def username=(username)
      if username.nil?
        fail ArgumentError, 'username cannot be nil'
      end

      if username.to_s.length < 1
        fail ArgumentError, 'invalid value for "username", the character length must be great than or equal to 1.'
      end

      @username = username
    end

    # Custom attribute writer method with validation
    # @param [Object] password Value to be assigned
    def password=(password)
      if password.nil?
        fail ArgumentError, 'password cannot be nil'
      end

      if password.to_s.length < 1
        fail ArgumentError, 'invalid value for "password", the character length must be great than or equal to 1.'
      end

      @password = password
    end

    # Custom attribute writer method with validation
    # @param [Object] pickup_number Value to be assigned
    def pickup_number=(pickup_number)
      if pickup_number.nil?
        fail ArgumentError, 'pickup_number cannot be nil'
      end

      if pickup_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "pickup_number", the character length must be great than or equal to 1.'
      end

      @pickup_number = pickup_number
    end

    # Custom attribute writer method with validation
    # @param [Object] distribution_center Value to be assigned
    def distribution_center=(distribution_center)
      if distribution_center.nil?
        fail ArgumentError, 'distribution_center cannot be nil'
      end

      if distribution_center.to_s.length < 1
        fail ArgumentError, 'invalid value for "distribution_center", the character length must be great than or equal to 1.'
      end

      @distribution_center = distribution_center
    end

    # Custom attribute writer method with validation
    # @param [Object] api_key Value to be assigned
    def api_key=(api_key)
      if !api_key.nil? && api_key.to_s.length < 1
        fail ArgumentError, 'invalid value for "api_key", the character length must be great than or equal to 1.'
      end

      @api_key = api_key
    end

    # Custom attribute writer method with validation
    # @param [Object] api_secret Value to be assigned
    def api_secret=(api_secret)
      if !api_secret.nil? && api_secret.to_s.length < 1
        fail ArgumentError, 'invalid value for "api_secret", the character length must be great than or equal to 1.'
      end

      @api_secret = api_secret
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)
      if !account_number.nil? && account_number.to_s.length < 1
        fail ArgumentError, 'invalid value for "account_number", the character length must be great than or equal to 1.'
      end

      @account_number = account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] ftp_username Value to be assigned
    def ftp_username=(ftp_username)
      if !ftp_username.nil? && ftp_username.to_s.length < 1
        fail ArgumentError, 'invalid value for "ftp_username", the character length must be great than or equal to 1.'
      end

      @ftp_username = ftp_username
    end

    # Custom attribute writer method with validation
    # @param [Object] ftp_password Value to be assigned
    def ftp_password=(ftp_password)
      if !ftp_password.nil? && ftp_password.to_s.length < 1
        fail ArgumentError, 'invalid value for "ftp_password", the character length must be great than or equal to 1.'
      end

      @ftp_password = ftp_password
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          nickname == o.nickname &&
          client_id == o.client_id &&
          username == o.username &&
          password == o.password &&
          pickup_number == o.pickup_number &&
          distribution_center == o.distribution_center &&
          api_key == o.api_key &&
          api_secret == o.api_secret &&
          ancillary_endorsement == o.ancillary_endorsement &&
          account_number == o.account_number &&
          ftp_username == o.ftp_username &&
          ftp_password == o.ftp_password
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [nickname, client_id, username, password, pickup_number, distribution_center, api_key, api_secret, ancillary_endorsement, account_number, ftp_username, ftp_password].hash
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