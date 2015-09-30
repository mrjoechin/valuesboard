class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.all.order(created_at: :desc)
    add_breadcrumb "Stories", stories_path
  end

  # GET /stories/1
  # GET /stories/1.json
  def show
    @story = Value.find(params[:id])
    add_breadcrumb "Story Details", story_path(@stories)
  end

  # GET /stories/new
  def new
    @story = Story.new
    add_breadcrumb "Sharing a new Story"
    render layout: 'dashboard'
  end

  # GET /stories/1/edit
  def edit
    @story = Story.find(params[:id])
    add_breadcrumb "Edit Story", story_path(@story) 
    render layout: 'dashboard'
  end

  # POST /stories
  # POST /stories.json
  def create
    @story = Story.new(story_params)

    respond_to do |format|
      if @story.save
        format.html { redirect_to details_path(@story.value_id), notice: "<strong>Well done!</strong> The value story was successfully updated." }
        format.json { render :show, status: :created, location: @story }
      else
        format.html { render :new, layout: 'dashboard' }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stories/1
  # PATCH/PUT /stories/1.json
  def update
    respond_to do |format|
      if @story.update(story_params)
        format.html { redirect_to stories_path, notice: "<strong>Well done!</strong> That value story was successfully updated." }
        format.json { render :show, status: :ok, location: @story }
      else
        format.html { render :edit, layout: 'dashboard' }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story.destroy
    respond_to do |format|
      format.html { redirect_to stories_url, notice: "<strong>Boom!</strong> That value story is gone for good." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit(:text,:value_id) #:bootsy_image_gallery_id
    end
end
