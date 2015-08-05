require 'rails_helper'

RSpec.describe Micropost, type: :model do
  describe Miropost do
  let(:user) { FactoryGirl.create(:user) }
  before do
    # このコードは慣用的な意味で正しくない。
    @micropost = Micropost.new(content: "Lorem ipsum", user_id: user.id)
  end

  subject { @micropost }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }
  end
end
