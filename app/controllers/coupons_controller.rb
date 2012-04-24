class CouponsController < ApplicationController
  # GET /coupons
  # GET /coupons.json
  before_filter :require_login
  load_and_authorize_resource

  def index
    if(params[:coupon])
      @coupons = Coupon.search(params[:coupon])
      @event = params[:event_id]
    else
      @coupons = Coupon.all
    end
    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  def show
    @coupon = Coupon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coupon }
    end
  end

  def new
    @coupon = Coupon.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coupon }
    end
  end

  # GET /coupons/1/edit
  def edit
    @coupon = Coupon.find(params[:id])
  end

  # POST /coupons
  # POST /coupons.json
  def create
    @coupon = Coupon.new(params[:coupon])
    puts @coupon.event.created_by == current_user.id
    if @coupon.event.created_by == current_user.id
      respond_to do |format|
        if @coupon.save
          format.html { redirect_to @coupon, notice: 'Coupon was successfully created.' }
          format.json { render json: @coupon, status: :created, location: @coupon }
        else
          format.html { render action: "new" }
          format.json { render json: @coupon.errors, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { render action: "new" }
      end
    end
  end

  # PUT /coupons/1
  # PUT /coupons/1.json
  def update
    @coupon = Coupon.find(params[:id])

    respond_to do |format|
      if @coupon.update_attributes(params[:coupon])
        format.html { redirect_to @coupon, notice: 'Coupon was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @coupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coupons/1
  # DELETE /coupons/1.json
  def destroy
    @coupon = Coupon.find(params[:id])
    @coupon.destroy

    respond_to do |format|
      format.html { redirect_to coupons_url }
      format.json { head :ok }
    end
  end
end
