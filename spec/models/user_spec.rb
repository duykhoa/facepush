describe User do
  describe ".find_by_facebook_omniauth" do

    subject { User.find_by_facebook_omniauth(omniauth_params) }

    context "user is not existed in database" do
      let!(:user) { create(:user) }

      let(:omniauth_params) { { uid: user.uid } }

      it "returns user" do
        is_expected.to eq(user)
        expect(User.count).to eq(1)
      end
    end

    context "user existed in database" do
      let(:omniauth_params) { { uid: '123' } }

      it "returns user" do
        is_expected.not_to be_nil
        expect(User.count).to eq(1)
      end
    end
  end
end
