package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import fyp.UserDao;
import fyp.User;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("       \n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            body{\n");
      out.write("                 margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                background-image: url(\"80222-internet_of_things-technology-gadget-electronics-communication-2880x1800.jpg\");\n");
      out.write("                background-size: cover;\n");
      out.write("                 align-items: center;\n");
      out.write("                 display:flex;\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                justify-content: center;\n");
      out.write("                min-height: 100vh;\n");
      out.write("               \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .main{\n");
      out.write("                position:relative;\n");
      out.write("                width:50%;\n");
      out.write("                min-height: 300px;\n");
      out.write("                background: rgba(255,255,255,0.05);\n");
      out.write("                box-shadow: 0 5px 15px rgba(0,0,0,1);\n");
      out.write("      \n");
      out.write("            }\n");
      out.write("           .main:before\n");
      out.write("           {\n");
      out.write("               content:'';  \n");
      out.write("               position: absolute;\n");
      out.write("               top:-5px;\n");
      out.write("               left :-5px;\n");
      out.write("               width:50%;\n");
      out.write("               right: -5px;\n");
      out.write("               bottom: -5px;\n");
      out.write("               height:100%;\n");
      out.write("               background: linear-gradient(45deg,#ff0047,#6eff00);\n");
      out.write("               pointer-events: none;\n");
      out.write("               animation:animate 10s linear infinite;\n");
      out.write("           }\n");
      out.write("           \n");
      out.write("           @keyframes animate\n");
      out.write("           {\n");
      out.write("               0%\n");
      out.write("               {\n");
      out.write("                   filter:blur(60px)hue-rotate(0deg);\n");
      out.write("               }\n");
      out.write("               100%\n");
      out.write("               {\n");
      out.write("                   filter:blur(60px)hue-rotate(360deg);\n");
      out.write("                   \n");
      out.write("               }\n");
      out.write("           }\n");
      out.write("           \n");
      out.write("           .form{\n");
      out.write("               position:absolute;\n");
      out.write("               width:100%;\n");
      out.write("               height:100%;\n");
      out.write("               padding:40px;\n");
      out.write("              box-sizing: border-box;\n");
      out.write("              z-index: 1;\n");
      out.write("           }\n");
      out.write("           \n");
      out.write("           .form h2\n");
      out.write("           {\n");
      out.write("               margin:0;\n");
      out.write("    \n");
      out.write("               padding:0;\n");
      out.write("               color:#000;\n");
      out.write("               font-size:24px;\n");
      out.write("           }\n");
      out.write("           .form .inputBox\n");
      out.write("           {\n");
      out.write("               witdh:100%;\n");
      out.write("               margin-top: 20px;\n");
      out.write("               \n");
      out.write("           }\n");
      out.write("           .form .inputBox input\n");
      out.write("           {\n");
      out.write("               width:100%;\n");
      out.write("               background: transparent;\n");
      out.write("               border:none;\n");
      out.write("               border-bottom: 2px solid #fff;\n");
      out.write("               outline:none;\n");
      out.write("               font-size: 18px;\n");
      out.write("               font-family: sans-serif;\n");
      out.write("               \n");
      out.write("           }\n");
      out.write("           \n");
      out.write("           ::placeholder\n");
      out.write("           {\n");
      out.write("              color:#eee; \n");
      out.write("           }\n");
      out.write("           \n");
      out.write("           .form .inputBox input[type=\"submit\"]\n");
      out.write("           {\n");
      out.write("               background: #fff;\n");
      out.write("               color:#000;\n");
      out.write("               border:none;\n");
      out.write("               font-weight: 800;\n");
      out.write("               max-width: 98px;\n");
      out.write("           }\n");
      out.write("           \n");
      out.write("           .main :after \n");
      out.write("           {\n");
      out.write("               content: '';\n");
      out.write("               position: absolute;\n");
      out.write("               top:-5px;\n");
      out.write("               left: -5px;\n");
      out.write("               \n");
      out.write("           }\n");
      out.write("        \n");
      out.write("           \n");
      out.write("          </style>  \n");
      out.write("         \n");
      out.write("    </head>\n");
      out.write("    <body onload=\"noBack();\" \n");
      out.write("\tonpageshow=\"if (event.persisted) noBack();\" onunload=\"\">\n");
      out.write("               \n");
      out.write("              \n");
      out.write("      \n");
      out.write("        <div class=\"main\">\n");
      out.write("            <div class=\"form\">\n");
      out.write("                <h2>Login Form</h2>\n");
      out.write("                <form action=\"process.jsp\" method=\"POST\" autocomplete=\"off\">\n");
      out.write("                    <div class=\"inputBox\">\n");
      out.write("                        \n");
      out.write("                        <input type=\"text\" name=\"username\" placeholder=\"Username\" required>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                         <div class=\"inputBox\">\n");
      out.write("                        \n");
      out.write("                        <input type=\"password\" name=\"password\" placeholder=\"Password\" required>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                     <div class=\"inputBox\">\n");
      out.write("                        \n");
      out.write("                        <input type=\"submit\" value=\"Login\">\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    <a href=\"forget.jsp\"> <p>Forget Password ?</p></a>\n");
      out.write("                </form>\n");
      out.write("     \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("     \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
