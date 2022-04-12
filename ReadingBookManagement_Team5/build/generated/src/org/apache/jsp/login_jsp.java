package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" \n");
      out.write("              integrity=\"sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"canonical\" href=\"https://getbootstrap.com/docs/4.0/examples/sign-in/\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link href=\"../../dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        ");

            if (request.getAttribute("error") != null) {
        
      out.write("\n");
      out.write("    <h2 style=\"color: red\">");
      out.print( request.getAttribute("error"));
      out.write("</h2>\n");
      out.write("    ");

        }
    
      out.write("\n");
      out.write("</head>    \n");
      out.write("<body class=\"text-center\">\n");
      out.write("    <form action=\"login\" method=\"GET\"\n");
      out.write("          class=\"form-signin\">\n");
      out.write("        <div class=\"topnav\">\n");
      out.write("            <a class=\"btn btn-dark\" href=\"home.jsp\">HOME</a>\n");
      out.write("            <div class=\"topnav-right\">\n");
      out.write("                <a href=\"login.jsp\">LOGIN</a>            \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <label for=\"inputEmail\" >Username:</label>\n");
      out.write("        <br>\n");
      out.write("        <input type=\"text\" name=\"userName\" id=\"inputUsername\"  placeholder=\"Username\" required autofocus>\n");
      out.write("        <br>\n");
      out.write("        <label for=\"inputPassword\">Password:</label>\n");
      out.write("        <br>\n");
      out.write("        <input type=\"password\" name=\"password\" id=\"inputPassword\" placeholder=\"Password\" required>\n");
      out.write("        <br>\n");
      out.write("        <button class=\"btn btn-success\" type=\"submit\">Sign in</button>\n");
      out.write("        <div>\n");
      out.write("            <a href=\"adminController.jsp\" style=\"color: blue; text-align: center;\">----Login with administrator----</a>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </form>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
