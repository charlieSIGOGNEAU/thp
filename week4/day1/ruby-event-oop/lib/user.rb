class User
  attr_accessor :email, :age
  @@tableau_tout_user=[]

  def initialize(email,age)
    @email=email
    @age=age
    @@tableau_tout_user<<self
  end

  def self.all
    return @@tableau_tout_user
  end
  
  def self.find_by_email(string)
    @@tableau_tout_user.find { |user| user.email == string}
  end
        

    
end