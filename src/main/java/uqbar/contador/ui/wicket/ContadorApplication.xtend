package uqbar.contador.ui.wicket

import org.apache.wicket.protocol.http.WebApplication

/**
 * 
 */
class ContadorApplication extends WebApplication {
	
	override getHomePage() {
		ContadorPage
	}
	
}