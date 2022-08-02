class BankAccount
  readable_attribute :balance

  def initialize(opening_balance)
    @balance = opening_balance
  end
end

class Object
  def self.redable_attribute(name)
    code = %(
      def #{name}
        @#{name}
      end
    )
    class_eval(code)
  end
end
