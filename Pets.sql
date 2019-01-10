DROP TABLE IF EXISTS "Pets";
CREATE TABLE "Pets" (
"id" INTEGER PRIMARY KEY  NOT NULL ,
"name" TEXT NOT NULL ,
"age" INTEGER NOT NULL ,
"owner_id" INTEGER,
FOREIGN KEY("owner_id") references Persons("id")
);
