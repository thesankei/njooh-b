class SellablesController < ApplicationController
  # GET /sellables
  # GET /sellables.json
  def index
    @sellables = Sellable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sellables }
    end
  end

  # GET /sellables/1
  # GET /sellables/1.json
  def show
    @sellable = Sellable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sellable }
    end
  end

  # GET /sellables/new
  # GET /sellables/new.json
  def new
    @sellable = Sellable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sellable }
    end
  end

  # GET /sellables/1/edit
  def edit
    @sellable = Sellable.find(params[:id])
  end

  # POST /sellables
  # POST /sellables.json
  def create
    @sellable = Sellable.new(params[:sellable])
    @sellable.place_id = session[:current_place].to_i

    respond_to do |format|
      if @sellable.save
        format.html { redirect_to @sellable, notice: 'Sellable was successfully created.' }
        format.json { render json: @sellable, status: :created, location: @sellable }
      else
        format.html { render action: "new" }
        format.json { render json: @sellable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sellables/1
  # PUT /sellables/1.json
  def update
    @sellable = Sellable.find(params[:id])

    respond_to do |format|
      if @sellable.update_attributes(params[:sellable])
        format.html { redirect_to @sellable, notice: 'Sellable was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sellable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sellables/1
  # DELETE /sellables/1.json
  def destroy
    @sellable = Sellable.find(params[:id])
    @sellable.destroy

    respond_to do |format|
      format.html { redirect_to sellables_url }
      format.json { head :no_content }
    end
  end
end
