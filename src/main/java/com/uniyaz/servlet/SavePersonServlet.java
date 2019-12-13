package com.uniyaz.servlet;

import com.uniyaz.db.DbTransaction;
import com.uniyaz.domain.Person;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by AKARTAL on 13.12.2019.
 */
public class SavePersonServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        addPerson(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        addPerson(req, resp);
    }

    private void addPerson(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String phone = req.getParameter("phone");

        Person person = new Person();
        person.setName(name);
        person.setSurname(surname);
        person.setPhone(phone);

        DbTransaction dbTransaction = new DbTransaction();
        dbTransaction.addPerson(person);

        resp.getWriter().write("Kayıt yapıldı");
    }
}
