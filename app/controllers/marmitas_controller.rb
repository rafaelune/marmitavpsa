class MarmitasController < ApplicationController
  # GET /marmitas
  # GET /marmitas.xml
  def index
    @marmitas = Marmita.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @marmitas }
    end
  end
  
  # GET /admin
  def admin
    @marmitas = Marmita.all
	
    respond_to do |format|
      format.html # admin.html.erb
      format.xml  { render :xml => @marmitas }
    end
  end
  
  # GET /marmitas/1
  # GET /marmitas/1.xml
  def show
    @marmita = Marmita.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @marmita }
    end
  end

  # GET /marmitas/new
  # GET /marmitas/new.xml
  def new
    @marmita = Marmita.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @marmita }
    end
  end

  # GET /marmitas/1/edit
  def edit
    @marmita = Marmita.find(params[:id])
  end

  # POST /marmitas
  # POST /marmitas.xml
  def create
    @marmita = Marmita.new(params[:marmita])

    respond_to do |format|
      if @marmita.save
        format.html { redirect_to(@marmita, :notice => 'Marmita was successfully created.') }
        format.xml  { render :xml => @marmita, :status => :created, :location => @marmita }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @marmita.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /marmitas/1
  # PUT /marmitas/1.xml
  def update
    @marmita = Marmita.find(params[:id])

    respond_to do |format|
      if @marmita.update_attributes(params[:marmita])
        format.html { redirect_to(@marmita, :notice => 'Marmita was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @marmita.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /marmitas/1
  # DELETE /marmitas/1.xml
  def destroy
    @marmita = Marmita.find(params[:id])
    @marmita.destroy

    respond_to do |format|
      format.html { redirect_to(marmitas_url) }
      format.xml  { head :ok }
    end
  end
  
  # DELETE /marmitas/all
  def destroy_all
    Marmita.destroy_all
    respond_to do |format|
      format.html { redirect_to(marmitas_url) }
      format.xml  { head :ok }
    end
  end
end
