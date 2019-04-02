#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: categories
#------------------------------------------------------------

CREATE TABLE categories(
        id  Int  Auto_increment  NOT NULL ,
        nom Varchar (80) NOT NULL
	,CONSTRAINT categories_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: adress
#------------------------------------------------------------

CREATE TABLE adress(
        id          Int  Auto_increment  NOT NULL ,
        number      Varchar (10) NOT NULL ,
        road        Varchar (80) NOT NULL ,
        postal_code Varchar (80) NOT NULL ,
        town        Varchar (80) NOT NULL ,
        country     Varchar (80) NOT NULL
	,CONSTRAINT adress_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: users
#------------------------------------------------------------

CREATE TABLE users(
        id                       Int  Auto_increment  NOT NULL ,
        lastname                 Varchar (50) NOT NULL ,
        name                     Varchar (50) NOT NULL ,
        mail                     Varchar (80) NOT NULL ,
        id_user                  Int NOT NULL ,
        id_adress                Int NOT NULL ,
        id_adress_relation_us_ad Int NOT NULL
	,CONSTRAINT users_PK PRIMARY KEY (id)

	,CONSTRAINT users_adress_FK FOREIGN KEY (id_adress_relation_us_ad) REFERENCES adress(id)
	,CONSTRAINT users_adress_AK UNIQUE (id_adress_relation_us_ad)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: products
#------------------------------------------------------------

CREATE TABLE products(
        id                     Int  Auto_increment  NOT NULL ,
        title                  Varchar (80) NOT NULL ,
        description            Text NOT NULL ,
        id_categorie           Int NOT NULL ,
        id_product             Int NOT NULL ,
        id_reservation         Int NOT NULL ,
        id_user                Int NOT NULL ,
        id_product_reservation Int NOT NULL ,
        id_categories          Int NOT NULL ,
        id_users               Int NOT NULL
	,CONSTRAINT products_PK PRIMARY KEY (id)

	,CONSTRAINT products_categories_FK FOREIGN KEY (id_categories) REFERENCES categories(id)
	,CONSTRAINT products_users0_FK FOREIGN KEY (id_users) REFERENCES users(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: bills
#------------------------------------------------------------

CREATE TABLE bills(
        id                         Int  Auto_increment  NOT NULL ,
        id_user                    Int NOT NULL ,
        id_product                 Int NOT NULL ,
        id_adress                  Int NOT NULL ,
        id_user_relation_Us_Bi     Int NOT NULL ,
        id_bill                    Int NOT NULL ,
        id_adress_relation_ad_bi   Int NOT NULL ,
        id_bill_relation_ad_bi     Int NOT NULL ,
        id_users                   Int NOT NULL ,
        id_adress_relation_ad_bi_1 Int NOT NULL
	,CONSTRAINT bills_PK PRIMARY KEY (id)

	,CONSTRAINT bills_users_FK FOREIGN KEY (id_users) REFERENCES users(id)
	,CONSTRAINT bills_adress0_FK FOREIGN KEY (id_adress_relation_ad_bi_1) REFERENCES adress(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: relation_pr_bi
#------------------------------------------------------------

CREATE TABLE relation_pr_bi(
        id          Int NOT NULL ,
        id_products Int NOT NULL ,
        id_product  Int NOT NULL ,
        id_bill     Int NOT NULL
	,CONSTRAINT relation_pr_bi_PK PRIMARY KEY (id,id_products)

	,CONSTRAINT relation_pr_bi_bills_FK FOREIGN KEY (id) REFERENCES bills(id)
	,CONSTRAINT relation_pr_bi_products0_FK FOREIGN KEY (id_products) REFERENCES products(id)
)ENGINE=InnoDB;

