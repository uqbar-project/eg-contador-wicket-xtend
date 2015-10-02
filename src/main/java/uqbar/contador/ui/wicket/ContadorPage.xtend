package uqbar.contador.ui.wicket

import org.apache.wicket.markup.html.WebPage
import org.apache.wicket.markup.html.basic.Label
import org.apache.wicket.model.PropertyModel
import org.uqbar.wicket.xtend.WicketExtensionFactoryMethods
import org.uqbar.wicket.xtend.XAjaxLink
import org.uqbar.wicket.xtend.XLink

/**
 * Un contador simple en wicket+xtend
 * @author jfernandes
 */
class ContadorPage extends WebPage {
	extension WicketExtensionFactoryMethods = new WicketExtensionFactoryMethods
	int contador
	
	new() {
		val labelContador = new Label("contador", new PropertyModel(this, "contador"))
//		val labelContador = new Label("contador", String.valueOf(contador))
        this.addChild(labelContador)
        labelContador.outputMarkupId = true
        
        this.addChild(new XLink<Object>("sumar") => [
        	onClick = [| 
				contador = contador + 1
        	]
        ])
        
        this.addChild(new XAjaxLink<Object>("restar") => [
        	onClick = [ target |
				contador = contador - 1
				target.add(labelContador)
        	]
        ])
	}
	
}