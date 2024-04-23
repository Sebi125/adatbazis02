ALTER table Ugyfel
ALTER column EMAIL
ADD masked WITH (Function = 'email()')