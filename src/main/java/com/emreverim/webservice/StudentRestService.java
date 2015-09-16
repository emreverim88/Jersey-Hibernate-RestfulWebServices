package com.emreverim.webservice;

import com.emreverim.model.Response;
import com.emreverim.model.Student;

import javax.ws.rs.*;
import java.util.ArrayList;


@Path("/studentrestservice")
@Produces("application/json")
public class StudentRestService {

    private static final ArrayList<Student> studentArrayList = new ArrayList<Student>();
    // get , post, delete, update
    static int newId = 0;

    @GET
    public ArrayList<Student> get() {
        return studentArrayList;
    }

    @GET
    @Path("/{id}")
    public Student getStudentById(@PathParam("id") int id) {
        return studentArrayList.get(id);
    }

    @POST
    public Response postStudent(Student student) {

        student.setId(newId++);
        studentArrayList.add(student);
        Response response = new Response();
        response.setStatus(200);
        response.setDestcription("Student has been added");
        return response;
    }

    @DELETE
    @Path(("/{id}"))
    public Response deleteStudent(@PathParam("id") int id) {
        for (int i = 0; i < studentArrayList.size(); i++) {
            Student student = studentArrayList.get(i);
            if (student.getId() == id) {
                studentArrayList.remove(student);
                break;
            }
        }
        Response response = new Response();
        response.setStatus(200);
        response.setDestcription("Student has been deleted");
        return response;
    }

    @PUT
    public Response updateStudent(Student student) {
        studentArrayList.set(student.getId(), student);
        Response response = new Response();
        response.setStatus(200);
        response.setDestcription("Student has been updated");
        return response;

    }
}
