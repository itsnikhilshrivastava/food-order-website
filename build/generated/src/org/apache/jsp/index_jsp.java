package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" href=\"online.css\">\n");
      out.write("        <link ref=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("        <script src=\"jquery.js\"></script>\n");
      out.write("        <script src=\"popper.js\"></script>\n");
      out.write("        <script src=\"bootstrap.js\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>home page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("             <nav class=\"navbar navbar-expand-sm navbar-light s2\">\n");
      out.write("     <a style=\"color: #7f8c8d;padding-left: 5%;\"class=\"navbar-brand\" href=\"\"><b>HungerSaver</b></a>\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarTogglerDemo01\" aria-controls=\"navbarTogglerDemo01\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("   <div class=\"collapse navbar-collapse\" id=\"navbarTogglerDemo01\">\n");
      out.write("        <ul  class=\"navbar-nav ml-auto\">\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("                <a style=\"color:#7f8c8d;\"class=\"nav-link\" href=\"signin.jsp\"><b>Sign In</b></a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("                <a style=\"color:#7f8c8d;\"class=\"nav-link\" href=\"signup.jsp\"><b>Create an account</b></a>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      \n");
      out.write("    </nav>\n");
      out.write("        <div id=\"d\"class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("            <ul class=\"carousel-indicators\">\n");
      out.write("                <li data-target=\"#d\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                <li data-target=\"#d\" data-slide-to=\"1\"></li>\n");
      out.write("                <li data-target=\"#d\" data-slide-to=\"2\"></li>\n");
      out.write("                <li data-target=\"#d\" data-slide-to=\"3\"></li>\n");
      out.write("                <li data-target=\"#d\" data-slide-to=\"4\"></li>\n");
      out.write("                <li data-target=\"#d\" data-slide-to=\"5\"></li>\n");
      out.write("                <li data-target=\"#d\" data-slide-to=\"6\"></li>\n");
      out.write("                <li data-target=\"#d\" data-slide-to=\"7\"></li>\n");
      out.write("                 \n");
      out.write("                </ul>\n");
      out.write("                    <div class=\"carousel-inner\">\n");
      out.write("    <div class=\"carousel-item active\">\n");
      out.write("                    <img src=\"images\\re3.jpg\" alt=\"first\" >\n");
      out.write("                </div>\n");
      out.write("                <div class=\"carousel-item\">\n");
      out.write("                    <img src=\"images\\indian.jpg\" alt=\"second\" width=\"1920\" height=\"481\" >\n");
      out.write("                </div>\n");
      out.write("                <div class=\"carousel-item\">\n");
      out.write("                    <img src=\"images\\pizza.jpg\" alt=\"third\" width=\"1920\" height=\"481\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"carousel-item\">\n");
      out.write("                    <img src=\"images\\re4.jpg \"alt=\"fourth\" >\n");
      out.write("                </div>\n");
      out.write("                <div class=\"carousel-item\">\n");
      out.write("                    <img src=\"images\\re5.jpg\" alt=\"5\" >\n");
      out.write("                </div>\n");
      out.write("                <div class=\"carousel-item\">\n");
      out.write("                    <img src=\"images\\re6.jpg\" alt=\"6\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"carousel-item\">\n");
      out.write("                    <img src=\"images\\re7.jpg\" alt=\"7\" >\n");
      out.write("                </div>\n");
      out.write("               \n");
      out.write("                <div class=\"carousel-item\">\n");
      out.write("                    <img src=\"images\\re9.jpg\" alt=\"9\">\n");
      out.write("                </div>\n");
      out.write("               </div>\n");
      out.write("           <a class=\"carousel-control-prev\" href=\"#d\" data-slide=\"prev\">\n");
      out.write("    <span class=\"carousel-control-prev-icon\"></span>\n");
      out.write("  </a>\n");
      out.write("  <a class=\"carousel-control-next\" href=\"#d\" data-slide=\"next\">\n");
      out.write("    <span class=\"carousel-control-next-icon\"></span>\n");
      out.write("  </a>\n");
      out.write("            </div>\n");
      out.write("        <footer class=\"full-footer\">\n");
      out.write("            <div class=\"container top-footer\">\n");
      out.write("                <div class=\"row s2\">\n");
      out.write("                    <div class=\"col-md-3 s2\">\n");
      out.write("                        <h4>The Company</h4>\n");
      out.write("                        <a href=\"about.html\" target=\"_blank\">About us</a><br>\n");
      out.write("\n");
      out.write("                        <a href=\"\">Blog</a><br>\n");
      out.write("                        <iframe style=\"width: 60%;height: 60%;\"src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d234700.85820778905!2d77.26580536426654!3d23.199347693033406!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x397c428f8fd68fbd%3A0x2155716d572d4f8!2sBhopal%2C%20Madhya%20Pradesh!5e0!3m2!1sen!2sin!4v1578633074905!5m2!1sen!2sin\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3 s2\">\n");
      out.write("                        <h4>Contact</h4>\n");
      out.write("                        <a href=\"help.html\" target=\"_blank\">Help & Support</a><br>\n");
      out.write("                        <a href=\"\">Read FAQs</a><br>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3 s2\">\n");
      out.write("                        <h4>Legal</b></h4>\n");
      out.write("                        <a href=\"T and C.html\" target=\"_blank\">Terms & Conditions</a><br>\n");
      out.write("                        <a href=\"C and R.html\" target=\"_blank\">Refund & cancellation</a><br>\n");
      out.write("                        <!-- <a href=\"\">Help & Support</a><br>-->\n");
      out.write("                        <a href=\"privacy.html\" target=\"_blank\">Privacy Policy</a><br>\n");
      out.write("                        <a href=\"cookie.html\" target=\"_blank\">Cookies Policy</a><br>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3 s2\">\n");
      out.write("                       <h4>Follow On</h><br>\n");
      out.write("                            <a href=\"\"><img class width=\"24\" height=\"24\" alt src=\"fb.png\"></a>\n");
      out.write("                            <a href=\"\"><img class width=\"24\" height=\"24\" alt src=\"insta.png\"></a>\n");
      out.write("                            <a href=\"\"><img class width=\"24\" height=\"24\" alt src=\"twitter.png\"></a>\n");
      out.write("                            <a href=\"\"><i class=\"fab fa-2x fa-youtube-square\"></i></a>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"background-color:#dfe6e9;color:#2d3436;\"class=\"footer-copyright text-center py-3\"><img src=\"\"></img><b> Delivering at your doorstep&nbsp&nbsp&nbsp&nbsp© 2020 Copyright:</b>\n");
      out.write("            <a href=\"\">Manitian</a>\n");
      out.write("        </div>\n");
      out.write("</body>\n");
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
