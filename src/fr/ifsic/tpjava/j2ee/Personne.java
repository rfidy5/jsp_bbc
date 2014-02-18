/*
 * Created on 13 déc. 2004
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package fr.ifsic.tpjava.j2ee;


import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Vector;



/**
 * @author bekkers
 * 
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */

public class Personne {
	
	private static int courant = 1 ;
	private static Hashtable <String, Personne> listePersonne = new Hashtable<String, Personne>();
	static {
		Personne p1 = new Personne("le blanc","jacques","leblanc@irisa.fr");
		add(p1);
		Personne p2 = new Personne("Dupont","pierre","pierrot@ifsic.fr");
		add(p2);
		Personne p3 = new Personne("durant","paul","polot@irisa.fr");
		add(p3);
		Personne p4 = new Personne("le cozig","hervé","herve@wanadoo.fr");
		add(p4);
		Personne p5 = new Personne("lemeur","duduche","leGrand@wanadoo.fr");
		add(p5);
	}
	
	public Personne() {}
	public Personne(String nom, String prenom, String email) {
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
	}
	
	static public void add(Personne p) {
		listePersonne.put("p"+courant,p);
		courant++;
	}
	
	

	/**
	 * 
	 * @uml.property name="nom"
	 */
	private String nom;

	/**
	 * 
	 * @uml.property name="nom"
	 */
	public String getNom() {
		return nom;
	}

	/**
	 * 
	 * @uml.property name="prenom"
	 */
	private String prenom;

	/**
	 * 
	 * @uml.property name="nom"
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}

	/**
	 * 
	 * @uml.property name="prenom"
	 */
	public String getPrenom() {
		return prenom;
	}

	/**
	 * 
	 * @uml.property name="prenom"
	 */
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	/**
	 * 
	 * @uml.property name="email"
	 */
	private String email;

	/**
	 * 
	 * @uml.property name="email"
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * 
	 * @uml.property name="email"
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	public static String[]listIds() {
		Enumeration<String> myEnum = listePersonne.keys();
		int lg = listePersonne.size();
		String[] result = new String[lg];
		for (int i = lg-1; 0 <= i ; i--) {
			result[i] = myEnum.nextElement();
		}
		return result;
	}
	
	public static Personne get(String cle) {
		return listePersonne.get(cle);
	}
	
	public String getId() {
		Enumeration<String> myEnum = listePersonne.keys();
		while (myEnum.hasMoreElements()) {
			String myId = myEnum.nextElement();
			Personne courant = get(myId);
			if (courant == this) return myId;
		}
		return null;
	}
	
	public static void main(String[]args) {
		String[]ids = listIds();
		for (int i = 0; i < ids.length; i++) {
			System.out.println(ids[i]);
		}
	}

}