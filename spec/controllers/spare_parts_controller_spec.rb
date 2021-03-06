require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe SparePartsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # SparePart. As you add validations to SparePart, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SparePartsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all spare_parts as @spare_parts" do
      spare_part = SparePart.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:spare_parts)).to eq([spare_part])
    end
  end

  describe "GET show" do
    it "assigns the requested spare_part as @spare_part" do
      spare_part = SparePart.create! valid_attributes
      get :show, {:id => spare_part.to_param}, valid_session
      expect(assigns(:spare_part)).to eq(spare_part)
    end
  end

  describe "GET new" do
    it "assigns a new spare_part as @spare_part" do
      get :new, {}, valid_session
      expect(assigns(:spare_part)).to be_a_new(SparePart)
    end
  end

  describe "GET edit" do
    it "assigns the requested spare_part as @spare_part" do
      spare_part = SparePart.create! valid_attributes
      get :edit, {:id => spare_part.to_param}, valid_session
      expect(assigns(:spare_part)).to eq(spare_part)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SparePart" do
        expect {
          post :create, {:spare_part => valid_attributes}, valid_session
        }.to change(SparePart, :count).by(1)
      end

      it "assigns a newly created spare_part as @spare_part" do
        post :create, {:spare_part => valid_attributes}, valid_session
        expect(assigns(:spare_part)).to be_a(SparePart)
        expect(assigns(:spare_part)).to be_persisted
      end

      it "redirects to the created spare_part" do
        post :create, {:spare_part => valid_attributes}, valid_session
        expect(response).to redirect_to(SparePart.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved spare_part as @spare_part" do
        post :create, {:spare_part => invalid_attributes}, valid_session
        expect(assigns(:spare_part)).to be_a_new(SparePart)
      end

      it "re-renders the 'new' template" do
        post :create, {:spare_part => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested spare_part" do
        spare_part = SparePart.create! valid_attributes
        put :update, {:id => spare_part.to_param, :spare_part => new_attributes}, valid_session
        spare_part.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested spare_part as @spare_part" do
        spare_part = SparePart.create! valid_attributes
        put :update, {:id => spare_part.to_param, :spare_part => valid_attributes}, valid_session
        expect(assigns(:spare_part)).to eq(spare_part)
      end

      it "redirects to the spare_part" do
        spare_part = SparePart.create! valid_attributes
        put :update, {:id => spare_part.to_param, :spare_part => valid_attributes}, valid_session
        expect(response).to redirect_to(spare_part)
      end
    end

    describe "with invalid params" do
      it "assigns the spare_part as @spare_part" do
        spare_part = SparePart.create! valid_attributes
        put :update, {:id => spare_part.to_param, :spare_part => invalid_attributes}, valid_session
        expect(assigns(:spare_part)).to eq(spare_part)
      end

      it "re-renders the 'edit' template" do
        spare_part = SparePart.create! valid_attributes
        put :update, {:id => spare_part.to_param, :spare_part => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested spare_part" do
      spare_part = SparePart.create! valid_attributes
      expect {
        delete :destroy, {:id => spare_part.to_param}, valid_session
      }.to change(SparePart, :count).by(-1)
    end

    it "redirects to the spare_parts list" do
      spare_part = SparePart.create! valid_attributes
      delete :destroy, {:id => spare_part.to_param}, valid_session
      expect(response).to redirect_to(spare_parts_url)
    end
  end

end
