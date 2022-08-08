CREATE TABLE public.customers
(
    id smallint,
    customer_id smallint,
    PRIMARY KEY (id, customer_id)
);

ALTER TABLE IF EXISTS public.customers
    OWNER to postgres;
