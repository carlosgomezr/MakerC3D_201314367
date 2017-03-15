package org.compi2.codigo3d.parser;

/**
 * Clase sencilla para sintetizar información entre producciones.
 * Cuenta con un único atributo de tipo String, pero pueden agregársele
 * los atributos que se consideren necesarios.
 * @author esvux
 */
public class NodoC3D {
    private String cad;
    public String ETQF;
    public String ETQV;
   
    public NodoC3D(String cad) {
        this.cad = cad;
    }
    
    public NodoC3D(String v, String f) {
        this.ETQV = v;
        this.ETQF = f;
    }
    
    public String getCad(){
        return cad;
    }
    public String getFalsa(){
        return ETQF;
    }
    public String getVerdadera(){
        return ETQV;
    }
    public void setFalsa(String etqf){
        this.ETQF = etqf;
    }
    public void setVerdadera(String etqv){
        this.ETQV = etqv;
    }
        
}
