require 'spec_helper'

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

describe SellablesController do

  # This should return the minimal set of attributes required to create a valid
  # Sellable. As you add validations to Sellable, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SellablesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all sellables as @sellables" do
      sellable = Sellable.create! valid_attributes
      get :index, {}, valid_session
      assigns(:sellables).should eq([sellable])
    end
  end

  describe "GET show" do
    it "assigns the requested sellable as @sellable" do
      sellable = Sellable.create! valid_attributes
      get :show, {:id => sellable.to_param}, valid_session
      assigns(:sellable).should eq(sellable)
    end
  end

  describe "GET new" do
    it "assigns a new sellable as @sellable" do
      get :new, {}, valid_session
      assigns(:sellable).should be_a_new(Sellable)
    end
  end

  describe "GET edit" do
    it "assigns the requested sellable as @sellable" do
      sellable = Sellable.create! valid_attributes
      get :edit, {:id => sellable.to_param}, valid_session
      assigns(:sellable).should eq(sellable)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Sellable" do
        expect {
          post :create, {:sellable => valid_attributes}, valid_session
        }.to change(Sellable, :count).by(1)
      end

      it "assigns a newly created sellable as @sellable" do
        post :create, {:sellable => valid_attributes}, valid_session
        assigns(:sellable).should be_a(Sellable)
        assigns(:sellable).should be_persisted
      end

      it "redirects to the created sellable" do
        post :create, {:sellable => valid_attributes}, valid_session
        response.should redirect_to(Sellable.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sellable as @sellable" do
        # Trigger the behavior that occurs when invalid params are submitted
        Sellable.any_instance.stub(:save).and_return(false)
        post :create, {:sellable => { "name" => "invalid value" }}, valid_session
        assigns(:sellable).should be_a_new(Sellable)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Sellable.any_instance.stub(:save).and_return(false)
        post :create, {:sellable => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested sellable" do
        sellable = Sellable.create! valid_attributes
        # Assuming there are no other sellables in the database, this
        # specifies that the Sellable created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Sellable.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => sellable.to_param, :sellable => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested sellable as @sellable" do
        sellable = Sellable.create! valid_attributes
        put :update, {:id => sellable.to_param, :sellable => valid_attributes}, valid_session
        assigns(:sellable).should eq(sellable)
      end

      it "redirects to the sellable" do
        sellable = Sellable.create! valid_attributes
        put :update, {:id => sellable.to_param, :sellable => valid_attributes}, valid_session
        response.should redirect_to(sellable)
      end
    end

    describe "with invalid params" do
      it "assigns the sellable as @sellable" do
        sellable = Sellable.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Sellable.any_instance.stub(:save).and_return(false)
        put :update, {:id => sellable.to_param, :sellable => { "name" => "invalid value" }}, valid_session
        assigns(:sellable).should eq(sellable)
      end

      it "re-renders the 'edit' template" do
        sellable = Sellable.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Sellable.any_instance.stub(:save).and_return(false)
        put :update, {:id => sellable.to_param, :sellable => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sellable" do
      sellable = Sellable.create! valid_attributes
      expect {
        delete :destroy, {:id => sellable.to_param}, valid_session
      }.to change(Sellable, :count).by(-1)
    end

    it "redirects to the sellables list" do
      sellable = Sellable.create! valid_attributes
      delete :destroy, {:id => sellable.to_param}, valid_session
      response.should redirect_to(sellables_url)
    end
  end

end
