class FrivilligsController < ApplicationController
  # GET /frivilligs
  # GET /frivilligs.json
  def index
    @frivilligs = Frivillig.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @frivilligs }
    end
  end

  # GET /frivilligs/1
  # GET /frivilligs/1.json
  def show
    @frivillig = Frivillig.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @frivillig }
    end
  end

  # GET /frivilligs/new
  # GET /frivilligs/new.json
  def new
    @frivillig = Frivillig.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @frivillig }
    end
  end

  # GET /frivilligs/1/edit
  def edit
    @frivillig = Frivillig.find(params[:id])
  end

  # POST /frivilligs
  # POST /frivilligs.json
  def create
    @frivillig = Frivillig.new(params[:frivillig])

    respond_to do |format|
      if @frivillig.save
        format.html { redirect_to @frivillig, notice: 'Frivillig was successfully created.' }
        format.json { render json: @frivillig, status: :created, location: @frivillig }
      else
        format.html { render action: "new" }
        format.json { render json: @frivillig.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /frivilligs/1
  # PUT /frivilligs/1.json
  def update
    @frivillig = Frivillig.find(params[:id])

    respond_to do |format|
      if @frivillig.update_attributes(params[:frivillig])
        format.html { redirect_to @frivillig, notice: 'Frivillig was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @frivillig.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frivilligs/1
  # DELETE /frivilligs/1.json
  def destroy
    @frivillig = Frivillig.find(params[:id])
    @frivillig.destroy

    respond_to do |format|
      format.html { redirect_to frivilligs_url }
      format.json { head :no_content }
    end
  end
end
