<?php

class XXX_Q extends SGrid {

    public function build() {
        $this->setPerm("XXX_XXX_R");
        $this->setTitle("XXX");
        $this->setSql("SELECT * FROM XXX.XXX");

        //-------------------FILT-------------------
        //$this->addFilter(new RhArea_F());
        //$this->addFilter(new FSearch(["XXX", "XXX", "XXX"], "XXX"));

        //-------------------ACT--------------------
        //$this->addAction(new AAdd(XXX_AE::class),"XXX_XXX_W");
        //$this->addActionItem(new AView(XXX_V::class,"id_XXX"), "XXX_XXX_R");
        //$this->addActionItem(new AEdit(XXX_AE::class, "id_XXX"), "XXX_XXX_W");
        //$this->addActionItem(new ADel("XXX.XXX"), "XXX_XXX_W");

        //-------------------COLS-------------------
        // $this->addCol(new CId("id_taller"));
        // $this->addCol(new CString("Dirección","dir"));
        // $this->addCol(new CString("Código Postal","codigo_postal"));
        // $this->addCol(new CText("Observaciones"));
		// $this->addCol(new RhArea_C());  
		// $this->addCol(new CCreated());
        // $this->addCol(new CUpdated());
    }
}
