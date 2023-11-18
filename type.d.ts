export interface ActivityProps{
    id: number;
    section_id: number;
    saison_id: number;
    categorie_id: number;
    nom: string;
    sous_condition: boolean;
    certificat_obligatoire: boolean;
    tarif: number;
    nb_de_place: number;
    cotisation: number;
    duree: string
}