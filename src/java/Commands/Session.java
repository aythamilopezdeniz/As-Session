package Commands;

import java.io.IOException;
import javax.servlet.ServletException;

public class Session extends FrontCommand {

    @Override
    public void process() throws ServletException, IOException {
        Comando comando = Comando.find(request.getParameter("command"));
        request.setAttribute("helper", new ComandoHelper(comando));
        forward("/session.jsp");
    }
}