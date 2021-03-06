
package com.emergentes.modelo;
import com.emergentes.modelo.libro;
import com.emergentes.modelo.libroDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet(name ="principal", urlPatterns =("/principal"))
public class principal {
   @override
   protected void doGet(HttpServletRequest request, HttpServletResponse responce)
      throws ServletException, IOException{
       HttpSession ses = request.getSession();
       libroDAO gestor =(libroDAO) ses.getAttribute("gestor");
       if (gestor == null){
           libroDAO auxi =new libroDAO();
           ses.setAttribute("gestor", auxi);
       }
       String op = request.getParameter("op");
       if (op==null) {
           op = "";
       }
       if (op.trim().equals("")) {
           responce.sendRedirect("vista/listado.jsp");
       }
       if (op.trim().equals("nuevo")) {
           ses = request.getSession();
           libro obj = new libro();
           obj.setId(gestor.getCorrelativo()+1);
           request.setAttribute("item", obj);
           request.getRequestDispatcher("vista/nuevo.jsp").forward(request, responce);
       }
       if (op.trim().equals("ediatr")) {
           int pos = gestor.posicion(Integer.parseInt(request.getParameter("id")));
           libro obj = gestor.getLibros().get(pos);
           request.setAttribute("item", obj);
           request.getRequestDispatcher("vista/editar.jsp").forward(request, responce);
       }
       if (op.trim().equals("eliminar")) {
           int pos = gestor.posicion(Integer.parseInt(request.getParameter("if")));
           gestor.getLibros().remove(pos);
           responce.sendRedirect("vista/listado.jsp");
       }
   }


@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException{
    HttpSession ses = request.getSession();
    libroDAO gestor = (libroDAO) ses.getAttribute("gestor");
    libro obj = new libro();
    gestor.setCorrelativo(gestor.getCorrelativo()+1);
    obj.setId(gestor.getCorrelativo());
    obj.setAutor(request.getParameter("autor"));
    obj.setTitulo(request.getParameter("titulo"));
    obj.setEstado(Integer.parseInt(request.getParameter("estado")));
    String tipo = request.getParameter("tipo");
    if (tipo.equals("-1")) {
        gestor.insertar(obj);
    }else{
        gestor.modificar(obj.getId(), obj);
    }
    response.sendRedirect("vista/listado.jsp");
}
}