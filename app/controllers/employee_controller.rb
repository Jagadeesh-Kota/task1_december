class EmployeeController < ApplicationController
  
  before_action :log , except: [:index]
  
  
  def log()
    puts "Log method called..."
    #dfgdf
    #fsdgdfgf
  end
  
  
  def index
    
  end

  def create
    
    @user = Employee.new
    
  end
  def user_params
    params.require(:user).permit(:fname,:lname,:empid,:mail_id,:job,:mgr,:hiredate,:salary,:comm,:deptno)
  end
  def save
    
    
    @user = Employee.new(user_params)
    
    if @user.save
      redirect_to :action => "thankyou"
    else
      render 'create'  
    end
  end
  def search
    
    
  end
  def view
    emp_ser=Employee.new
    @user = emp_ser.view params['fname'], params["lname"], params["mail_id"]
  end
  def edit
    @user = Employee.find params['id']
  end
  def update
    emp_find = Employee.new
    @user = emp_find.find_by params[:user][:empid]
    if @user.update(user_params) 
      redirect_to :action => 'update_thank'
    end
  end

end
