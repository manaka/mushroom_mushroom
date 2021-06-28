 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/mushrooms", type: :request do
  
  # Mushroom. As you add validations to Mushroom, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Mushroom.create! valid_attributes
      get mushrooms_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      mushroom = Mushroom.create! valid_attributes
      get mushroom_url(mushroom)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_mushroom_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      mushroom = Mushroom.create! valid_attributes
      get edit_mushroom_url(mushroom)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Mushroom" do
        expect {
          post mushrooms_url, params: { mushroom: valid_attributes }
        }.to change(Mushroom, :count).by(1)
      end

      it "redirects to the created mushroom" do
        post mushrooms_url, params: { mushroom: valid_attributes }
        expect(response).to redirect_to(mushroom_url(Mushroom.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Mushroom" do
        expect {
          post mushrooms_url, params: { mushroom: invalid_attributes }
        }.to change(Mushroom, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post mushrooms_url, params: { mushroom: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested mushroom" do
        mushroom = Mushroom.create! valid_attributes
        patch mushroom_url(mushroom), params: { mushroom: new_attributes }
        mushroom.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the mushroom" do
        mushroom = Mushroom.create! valid_attributes
        patch mushroom_url(mushroom), params: { mushroom: new_attributes }
        mushroom.reload
        expect(response).to redirect_to(mushroom_url(mushroom))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        mushroom = Mushroom.create! valid_attributes
        patch mushroom_url(mushroom), params: { mushroom: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested mushroom" do
      mushroom = Mushroom.create! valid_attributes
      expect {
        delete mushroom_url(mushroom)
      }.to change(Mushroom, :count).by(-1)
    end

    it "redirects to the mushrooms list" do
      mushroom = Mushroom.create! valid_attributes
      delete mushroom_url(mushroom)
      expect(response).to redirect_to(mushrooms_url)
    end
  end
end