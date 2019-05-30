package loginv2

class BootStrap {

    def init = { servletContext ->
        if (Questions.count() == 0) {
            new Questions(id: '1', pregunta: 'lenguaje de programacion para ciencia de datos', opcion1: 'c++',opcion2: 'c#',opcion3:'python', sol:'python',dif:0).save()
            new Questions(id: '2', pregunta: 'lenguaje basico de microsoft', opcion1: 'c++',opcion2: 'R',opcion3:'python', sol:'c++',dif:0).save()
    }
    def destroy = {
    }
}
}