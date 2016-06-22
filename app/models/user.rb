class User < ActiveRecord::Base
  has_many :posts
  belongs_to :circle
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true, uniqueness: true
  validates :user_id, presence: false, uniqueness: false
  validates :circle_id, presence: false, uniqueness: false

  #usernameを利用してログインするようにオーバーライド
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      #認証の条件式を変更する
      where(conditions).where(["username = :value", { :value => username }]).first
    else
      where(conditions).first
    end
  end

  #emailを不要とする
  def email_required?
    false
  end

  def email_changed?
    false
  end
end
