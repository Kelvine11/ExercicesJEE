package org.example.projet;

import java.time.LocalDate;

public class Chat {

    private String nom;
    private String race;
    private String repas;
    private LocalDate dateDeNaissance;

    public Chat(String nom, String race, String repas, LocalDate date) {
        this.nom = nom;
        this.race = race;
        this.repas = repas;
        this.dateDeNaissance = date;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public LocalDate getDateDeNaissance() {
        return dateDeNaissance;
    }

    public void setDateDeNaissance(LocalDate dateDeNaissance) {
        this.dateDeNaissance = dateDeNaissance;
    }

    public String getRepas() {
        return repas;
    }

    public void setRepas(String repas) {
        this.repas = repas;
    }

    public String getRace() {
        return race;
    }

    public void setRace(String race) {
        this.race = race;
    }
}
