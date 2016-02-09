require 'rails_helper'

RSpec.describe EnrollmentsController, :type => :controller do

  let(:valid_attributes_course) {
    {name: 'React', description: 'Create web components', status: 1}
  }

  let(:valid_attributes_student) {
    {name: 'marcelo', register_number: 'B01', status: 1}
  }

  let(:valid_attributes) {
    {student: valid_attributes_student, course: valid_attributes_course, entry_at: "2016-02-05 21:19:06"}
  }

  let(:valid_session) { {} }  

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Course" do
        expect {
          post :create, {:classroom => valid_attributes}, valid_session
        }.to change(Classroom, :count).by(1)
      end
    end
  end

end
