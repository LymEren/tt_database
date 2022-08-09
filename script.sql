CREATE TABLE public.customers
(
    id smallint,
    customer_id smallint,
    PRIMARY KEY (id, customer_id)
);

ALTER TABLE IF EXISTS public.customers
    OWNER to postgres;



--- Ind. Customers

CREATE TABLE public."Induvidual_Customers"
(
    customer_id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    tckn integer,
    CONSTRAINT customer_id PRIMARY KEY (customer_id)
);

ALTER TABLE IF EXISTS public."Induvidual_Customers"
    OWNER to postgres;


----------------

Info for TCKN

create table some_table
(
   phone_number integer not null check (phone_number between 0 and 9999999999)
);


-- Foreign Added

ALTER TABLE IF EXISTS public."Customers"
    ADD CONSTRAINT fk_indivudual FOREIGN KEY (customer_id)
    REFERENCES public."Induvidual_Customers" (customer_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_fk_indivudual
    ON public."Customers"(customer_id);
