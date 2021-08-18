class ProgController < ApplicationController
    def index 
        
    end

    def create 
        @progs = Prog.all
        @prog = Prog.new(progress_params)
        if @prog.save
            p @prog
            current_staff_id = @prog.staff_id
            current_staff_name = @prog.staff_name
            current_company = @prog.company_name
            redirect_to @prog
        else
            render :new
        end
        
        push_firebase(current_staff_id, current_staff_name, current_company)

    end


    def push_firebase(staff_id, staff_name, company_name )
            begin
                base_uri = 'https://tk-angular-dev.firebaseio.com/'
                firebase = Firebase::Client.new(base_uri)
                response = firebase.update("todos",{"#{staff_id}/staff_id" => staff_id })
                response = firebase.update("todos",{"#{staff_id}/staff_name/" => staff_name })
                response = firebase.update("todos",{"#{staff_id}/company_name/" => company_name })
            end
    end

    private
        def progress_params
            params.permit(:staff_id, :staff_name, :company_name)
        end
end
