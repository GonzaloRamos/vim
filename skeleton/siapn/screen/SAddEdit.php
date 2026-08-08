<?php

class XXX_AE extends SAddEdit
{
	public function build()
	{
		$this->setPerm('XXX_XXX_W'); 
		$this->setTabla("XXX.XXX"); 
		$this->setTitles("XXX", "XXX"); 
		
        // INPUTS
        // $this->addInput(new IString("Dirección","dir"));
        // $this->addInput(new IString("Código postal", "codigo_postal"));
        // $this->addInput(new ITextEdit("Observaciones"));
	}

    public function validar() {
        if(!parent::validar())
            return false;

        return true;
    }
}
