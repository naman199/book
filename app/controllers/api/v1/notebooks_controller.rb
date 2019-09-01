module Api::V1
  class NotebooksController < ApplicationController
    before_action :set_notebook, only: [:show, :update, :destroy]
    before_action :get_notebook, only: [:external_books]

    # GET /notebooks
    def index
      @notebooks = Notebook.all
    end

    def external_books
    end

    # GET /notebooks/1
    def show
    end

    # POST /notebooks
    def create
      @notebook = Notebook.new(notebook_params)

      if @notebook.save!
      else
        render json: @notebook.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /notebooks/1
    def update
      if @notebook.update(notebook_params)
        render json: @notebook
      else
        render json: @notebook.errors, status: :unprocessable_entity
      end
    end

    # DELETE /notebooks/1
    def destroy
      @notebook.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_notebook
        @notebook = Notebook.find(params[:id])
      end

      def get_notebook
        @notebooks = HTTParty.get("https://www.anapioficeandfire.com/api/books?name=#{params[:name]}")
      end

      # Only allow a trusted parameter "white list" through.
      def notebook_params
        params.require(:notebook).permit(:name, :isbn, :authors, :country, :number_of_pages, :publisher, :release_date)
      end
  end
end
