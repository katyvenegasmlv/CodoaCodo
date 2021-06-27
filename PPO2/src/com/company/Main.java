package com.company;
import java.util.Scanner;

import javax.swing.plaf.synth.SynthSeparatorUI;

public class Main {

    public static void main(String[] args) {

        Scanner scan = new Scanner (System.in);

        System.out.println("Hola, necesito pedirte unos datos.");
        System.out.println("Cual es tu nombre?");
        String nombreP = scan.nextLine ();
        System.out.println("Cual es tu apellido?");
        String apellidoP = scan.nextLine ();
        System.out.println("Cual es tu edad?");
        int edadP = scan.nextInt ();
        scan.nextLine ();
        System.out.println("Cual es tu hobbie?");
        String hobbieP = scan.nextLine ();
        System.out.println("Cual es tu editor de codigo preferido?");
        String editorDeCodigoPreferidoP = scan.nextLine ();
        System.out.println("Cual es tu sistema operativo preferido?");
        String sistemaOperativoP = scan.nextLine ();

        Usuario cliente=new Usuario(nombreP, apellidoP, edadP, hobbieP, editorDeCodigoPreferidoP, sistemaOperativoP);

        System.out.println("Nombre: " + cliente.getNombre());
        System.out.println("Apellido: " + cliente.getApellido());
        System.out.println("Edad: " + cliente.getEdad());
        System.out.println("Hobbise: " + cliente.getHobbie());
        System.out.println("Editor de Codigo Preferido: " + cliente.getEditorDeCodigoPreferido());
        System.out.println("Sistema Operativo Preferido: " + cliente.getSistemaOperativo());
    }
}
