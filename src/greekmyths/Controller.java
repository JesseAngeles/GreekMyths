package greekmyths;

import java.util.Map;
import javax.swing.ImageIcon;
import javax.swing.JList;
import javax.swing.event.ListSelectionEvent;
import org.jpl7.*;

public class Controller {

    private Query swipl;
    private String[] classes;
    private String[] properties;

    public Controller() {
        loadKnowledge("engine.pl");
        loadKnowledge("knowledge.pl");
    }

    private void loadKnowledge(String prolog) {
        String query = "consult('" + "src/prolog/" + prolog + "')";
        swipl = new Query(query);
        System.out.println(query + " " + (swipl.hasSolution() ? "succeeded" : "failed"));
    }

    public String[] consultClasses() {
        String query = "classes(L)";
        String[] res = null;
        swipl = new Query(query);
        if (swipl.hasSolution()) {
            String answer = "";
            Map solutions = swipl.nextSolution();
            answer += solutions.get("L");
            res = answer.substring(answer.indexOf("[") + 1, answer.indexOf("]")).split(",");
        }
        return res;
    }

    public String[] consultProperties(String obj) {
        String query = "propiedadesc(" + obj + ", L)";
        //System.out.println(query);
        String[] res = null;
        swipl = new Query(query);
        if (swipl.hasSolution()) {
            String answer = "";
            Map solutions = swipl.nextSolution();
            answer += solutions.get("L");
            res = answer.substring(answer.indexOf("[") + 1, answer.indexOf("]")).split(",");
        }
        return res;
    }

    public String[] consultSuperclasses(String clas) {
        String query = "superclasses_de(" + clas + ", L)";
        //System.out.println(query);
        String[] res = null;
        swipl = new Query(query);
        if (swipl.hasSolution()) {
            String answer = "";
            Map solutions = swipl.nextSolution();
            answer += solutions.get("L");
            res = answer.substring(answer.indexOf("[") + 1, answer.indexOf("]")).split(",");
        }
        return res;
    }

    public String[] consultAllProperties() {
        String query = "todas_propiedades(L)";
        String[] res = null;
        swipl = new Query(query);
        if (swipl.hasSolution()) {
            String answer = "";
            Map solutions = swipl.nextSolution();
            answer += solutions.get("L");
            res = answer.substring(answer.indexOf("[") + 1, answer.indexOf("]")).split(",");
        }
        return res;
    }

    public String consultDescription(String clas) {
        String query = "obtiene_descripcion(" + clas + ",L)";
        String res = "";
        swipl = new Query(query);
        if (swipl.hasSolution()) {
            Map solutions = swipl.nextSolution();
            res += solutions.get("L");
        }
        return res;
    }

    public String[] consultHasProperty(String property) {
        String query = "tiene_propiedad(" + property + ",L)";
        String[] res = null;
        swipl = new Query(query);
        if (swipl.hasSolution()) {
            String answer = "";
            Map solutions = swipl.nextSolution();
            answer += solutions.get("L");
            res = answer.substring(answer.indexOf("[") + 1, answer.indexOf("]")).split(",");
        }
        return res;
    }
}
