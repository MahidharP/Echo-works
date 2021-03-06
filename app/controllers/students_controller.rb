class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update, :destroy]
    before_filter :authenticate_user!, only: [:index, :update, :destroy, :edit]
    # GET /students
    # GET /students.json

    def index
        @students = current_college.nil? ? Student.all : current_college.students
        respond_to do |format|
            format.html
            format.xls
            format.pdf do
                render pdf: 'students'
            end
        end
    end

    # GET /students/1
    # GET /students/1.json
    def show
    end

    # GET /students/new
    def new
        @student = Student.new
    end

    # GET /students/1/edit
    def edit
    end

    # POST /students
    # POST /students.json

    def create
        @student = Student.new(student_params)
        if @student.save
            redirect_to @student, notice: 'Thank You For Valuable Effort For Making Us Strong'
        else
            render :new
        end
    end

    # PATCH/PUT /students/1
    # PATCH/PUT /students/1.json
    def update
        respond_to do |format|
            if @student.update(student_params)
                format.html { redirect_to @student, notice: 'Student was successfully updated.' }
                format.json { render :show, status: :ok, location: @student }
            else
                format.html { render :edit }
                format.json { render json: @student.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /students/1
    # DELETE /students/1.json
    def destroy
        @student.destroy
        respond_to do |format|
            format.html { redirect_to colleges_url, notice: 'Student was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_student
        @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
        params.require(:student).permit(:name, :email, :mobile, :college_code, :university, :stream, :beneficial, :feedback, :joining, :consult, :suggestion, :college_id, :workshop_id, technology_ids: [])
    end
end
