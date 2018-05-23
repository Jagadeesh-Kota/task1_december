class Employee < ApplicationRecord

    def view fname,lname,mail_id
       p "hi from service"
       resp = Employee.where("fname like ? or lname like ? or mail_id like ?", fname, lname, mail_id )
       return resp
    end
    
    def find id
      re = Employee.where("id like ? ", id ) 
      return re
    end
    def find_by empid
        @resp = Employee.where("empid like ?",empid)
      
    end
end
