{
  "profile": {
    "id": "tuna-atlas-catch",
    "mode": "entity",
    "project": "FIRMS Tuna Atlas",
    "organization": "FIRMS Tuna Atlas",
    "logos": [
      "http://firms.fao.org/figis/website/assets/images/templates/firms/firms_banner.gif",
      "https://www.blue-cloud.org/sites/default/files/styles/logo_small/public/FAO_2lines_500x500_1.png?itok=igwPSL5v",
      "https://en.ird.fr/sites/ird_fr/files/2019-08/logo_IRD_2016_BLOC_UK_COUL.png"
    ],
    "options": {
      "line_separator": "_\n"
    }
  },
  "metadata": {
    "entities": [
      {
        "handler": "gsheet",
        "source": "https://docs.google.com/spreadsheets/d/13SJB2PYkCCdrzw8HNJMPFg0yXs0OSYY2mUOAl5dagUc/edit?usp=sharing"
      }
    ],
    "contacts" : [
      {
        "handler": "gsheet",
        "source": "https://docs.google.com/spreadsheets/d/1DtGR8cHAkro12DOFZn40cehfU9LoI9l7wVUCHfHH-xY/edit?usp=sharing"
      }
    ],
    "dictionary" : [
      {
        "handler": "gsheet",
        "source": "https://docs.google.com/spreadsheets/d/166f_fIB9ctwdsRI8MCqKmfYtyh6DPbipHp8_qVjrIs8/edit#gid=0"
      }
    ]
  },
  "software": [
    {
      "id": "my-database-read",
      "type": "input",
      "software_type": "dbi",
      "parameters": {
        "drv": "PostgreSQL",
        "user": "tunaatlas_u",
        "password": "21c0551e7ed2911",
        "host": "localhost",
        "port": "5432",
        "dbname": "tunaatlas"
      },
      "properties" : {}
    },
    {
      "id": "my-database-write",
      "type": "output",
      "software_type": "dbi",
      "parameters": {
        "drv": "PostgreSQL",
        "user": "tunaatlas_u",
        "password": "21c0551e7ed2911",
        "host": "localhost",
        "port": "5432",
        "dbname": "tunaatlas"
      },
      "properties" : {}
    },
    {
      "id": "googledrive",
      "type": "input",
      "software_type": "googledrive",
      "parameters": {
        "email": "firmstunaatlas@gmail.com",
        "token": "4/1AX4XfWi7-xPaD8VK5uPjBqN-IGI30tdYNz4aQnGGpWyS3n3zMXoH_hHkpVM"
      },
      "properties" : {}
    }
  ],
  "actions": [ 
    {
      "id": "markdown",
      "script": "markdown_total",
      "run": true,
      "options": {
        "upload_to_db": false,
        "create_materialized_view" : true,
        "add_sql_comments" : true,
        "upload_to_googledrive": false
      }
    }
  ]
}
