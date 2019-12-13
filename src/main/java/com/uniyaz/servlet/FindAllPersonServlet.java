package com.uniyaz.servlet;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.uniyaz.db.DbTransaction;
import com.uniyaz.domain.Person;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by AKARTAL on 13.12.2019.
 */
public class FindAllPersonServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DbTransaction dbTransaction = new DbTransaction();
        List<Person> personList = dbTransaction.findAllPerson();
        Gson gson = new GsonBuilder().create();
        String personListAsJson = gson.toJson(personList);
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        resp.getWriter().write(personListAsJson);

    }
}
