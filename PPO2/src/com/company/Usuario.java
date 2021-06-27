package com.company;

public class Usuario {

    String nombre;
    String apellido;
    int edad;
    String hobbie;
    String editorDeCodigoPreferido;
    String sistemaOperativo;

    public Usuario(String nombre, String apellido, int edad, String hobbie, String editorDeCodigoPreferido, String sistemaOperativo) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.hobbie = hobbie;
        this.editorDeCodigoPreferido = editorDeCodigoPreferido;
        this.sistemaOperativo = sistemaOperativo;
    }

    public Usuario() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getHobbie() {
        return hobbie;
    }

    public void setHobbie(String hobbie) {
        this.hobbie = hobbie;
    }

    public String getEditorDeCodigoPreferido() {
        return editorDeCodigoPreferido;
    }

    public void setEditorDeCodigoPreferido(String editorDeCodigoPreferido) {
        this.editorDeCodigoPreferido = editorDeCodigoPreferido;
    }

    public String getSistemaOperativo() {
        return sistemaOperativo;
    }

    public void setSistemaOperativo(String sistemaOperativo) {
        this.sistemaOperativo = sistemaOperativo;
    }
}

