package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src = \"http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("        <script src = \"http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js\"></script>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <script src=\"https://cdn.zingchart.com/zingchart.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.zingchart.com/zingchart.min.js\"></script>\n");
      out.write("        <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                background-image: url(\"80222-internet_of_things-technology-gadget-electronics-communication-2880x1800.jpg\") ;\n");
      out.write("                justify-content: center;\n");
      out.write("                min-height: 100vh;\n");
      out.write("                background-size: cover;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .main{\n");
      out.write("\n");
      out.write("                background-color: whitesmoke;\n");
      out.write("                margin-left: 20%;\n");
      out.write("                margin-top: 5%;\n");
      out.write("                width:60%;\n");
      out.write("                height:auto;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            *{\n");
      out.write("                margin: 0px;\n");
      out.write("                padding:0px;\n");
      out.write("                font-family: sans-serif;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            .tab {\n");
      out.write("                overflow: hidden;\n");
      out.write("                border: 1px solid #ccc;\n");
      out.write("                background-color: #f1f1f1;\n");
      out.write("                width:60%;\n");
      out.write("                margin-left: 20%;\n");
      out.write("                margin-top:4%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Style the buttons inside the tab */\n");
      out.write("            .tab button {\n");
      out.write("                background-color: inherit;\n");
      out.write("                float: left;\n");
      out.write("                border: none;\n");
      out.write("                outline: none;\n");
      out.write("                cursor: pointer;\n");
      out.write("                padding: 14px 16px;\n");
      out.write("                transition: 0.3s;\n");
      out.write("                font-size: 17px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Change background color of buttons on hover */\n");
      out.write("            .tab button:hover {\n");
      out.write("                background-color: #ddd;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Create an active/current tablink class */\n");
      out.write("            .tab button.active {\n");
      out.write("                background-color: #ccc;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Style the tab content */\n");
      out.write("            .tabcontent {\n");
      out.write("                display: none;\n");
      out.write("                padding: 6px 12px;\n");
      out.write("                border: 1px solid #ccc;\n");
      out.write("                border-top: none;\n");
      out.write("                width:60%;\n");
      out.write("                margin-left: 20%;\n");
      out.write("                background-color: white;\n");
      out.write("            }\n");
      out.write("            #bar\n");
      out.write("            {\n");
      out.write("                position: fixed;\n");
      out.write("                width:14%;\n");
      out.write("                height:100%;\n");
      out.write("                background: #33cce6;\n");
      out.write("                left: -200px;\n");
      out.write("                margin-top:-5%;\n");
      out.write("                transition: all 500ms linear;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            #bar.active\n");
      out.write("            {\n");
      out.write("                left:0px;\n");
      out.write("            }\n");
      out.write("            #bar ul li{\n");
      out.write("                color:rgba(238,230,230,0.9);\n");
      out.write("                list-style: none;\n");
      out.write("                padding: 15px 10px;\n");
      out.write("                border-bottom: 1px solid rgba(100,100,100,0.3)\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #bar ul li:hover\n");
      out.write("            {\n");
      out.write("                color:#003333\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #bar .toggle-btn\n");
      out.write("            {\n");
      out.write("                position: absolute;\n");
      out.write("                left: 230px;\n");
      out.write("                top:20px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            #bar .toggle-btn span{\n");
      out.write("                display: block;\n");
      out.write("                width:30px;\n");
      out.write("                height: 5px;\n");
      out.write("                background: #151719;\n");
      out.write("                margin: 3px 0px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #profileid\n");
      out.write("            {\n");
      out.write("                width:36%;\n");
      out.write("                height:70px;\n");
      out.write("                border-radius: 50%;\n");
      out.write("                border:2px solid #34495e;\n");
      out.write("\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                position:absolute;\n");
      out.write("                margin-top: 1px;\n");
      out.write("                margin-left: 10px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .info\n");
      out.write("            {\n");
      out.write("                float:right;\n");
      out.write("\n");
      out.write("                background: white;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input {\n");
      out.write("                background: none;\n");
      out.write("                color: black;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("        <script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("   <div id=\"myChart\"></div>  \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        // --- add a comma after each value in the array and convert to javascript string representing an array  \n");
      out.write("\n");
      out.write("\n");
      out.write("        var monthData2 = [device01,device02];\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        var monthData = [16,2];\n");
      out.write("        \n");
      out.write("\n");
      out.write("    </script>  \n");
      out.write("\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    window.onload = function () {\n");
      out.write("        zingchart.render({\n");
      out.write("            id: \"myChart1\",\n");
      out.write("            width: \"100%\",\n");
      out.write("            height: 380,\n");
      out.write("            data: {\n");
      out.write("                \"type\": \"bar\",\n");
      out.write("                \"title\": {\n");
      out.write("                    \"text\": \"Usage of Soap\"\n");
      out.write("                },\n");
      out.write("                \"scale-x\": {\n");
      out.write("\n");
      out.write("                    \"labels\": Data2\n");
      out.write("                },\n");
      out.write("                \"plot\": {\n");
      out.write("                    \"line-width\": 1\n");
      out.write("                },\n");
      out.write("                \"series\": [{\n");
      out.write("\n");
      out.write("                        \"values\": Data\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    }\n");
      out.write("\n");
      out.write("\n");
      out.write("                ]\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("\n");
      out.write("        zingchart.render({\n");
      out.write("            id: \"myChart\",\n");
      out.write("            width: \"100%\",\n");
      out.write("            height: 380,\n");
      out.write("\n");
      out.write("            data: {\n");
      out.write("                \"type\": \"bar\",\n");
      out.write("                \"title\": {\n");
      out.write("                    \"text\": \"Level of Graph Soap\"\n");
      out.write("                },\n");
      out.write("                \"scale-x\": {\n");
      out.write("                    \"labels\": monthData2\n");
      out.write("                },\n");
      out.write("                \"plot\": {\n");
      out.write("                    \"animation\": {\n");
      out.write("      \"delay\": \"2000\",\n");
      out.write("      \"effect\": \"4\",\n");
      out.write("      \"method\": \"5\",\n");
      out.write("      \"sequence\": \"1\"\n");
      out.write("    }\n");
      out.write("            \n");
      out.write("                },\n");
      out.write("                \"series\": [\n");
      out.write("                    \n");
      out.write("\n");
      out.write("    ");


       
       
    
      
 
   
        

      
      out.write("      \n");
      out.write("            \n");
      out.write("            \n");
      out.write("           {\n");
      out.write("\n");
      out.write("                        \"values\":monthData,\n");
      out.write("                               \n");
      out.write("                                              \n");
      out.write("                   \n");
      out.write("                          //this to write condition\n");
      out.write("                      \n");
      out.write("                                \n");
      out.write("\n");
      out.write("                    },\n");
      out.write("            \n");
      out.write("            \n");
      out.write("       \n");
      out.write("                             \n");
      out.write("                       \n");
      out.write("                                              \n");
      out.write("     \n");
      out.write(" \n");
      out.write(" \n");
      out.write("    \n");
      out.write("                                      \n");
      out.write("                                               \n");
      out.write("                                            \n");
      out.write("    \n");
      out.write("                          \n");
      out.write("                                          \n");
      out.write("                     \n");
      out.write("\n");
      out.write("                ]\n");
      out.write("                 }\n");
      out.write("                }\n");
      out.write("            \n");
      out.write("        );\n");
      out.write("        \n");
      out.write("          ");

                            
                            
                        
      out.write("\n");
      out.write("               \n");
      out.write("     \n");
      out.write("\n");
      out.write("                                \n");
      out.write("};\n");
      out.write("  \n");
      out.write("                      \n");
      out.write(" \n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("\n");
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
