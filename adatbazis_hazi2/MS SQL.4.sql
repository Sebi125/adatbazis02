ALTER table Ugyfel
ALTER column LOGIN
ADD masked WITH (Function = 'partial(1,"XXX",1)')