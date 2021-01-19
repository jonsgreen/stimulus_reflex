import ApplicationController from './application_controller'

/* This is the custom StimulusReflex controller for the Example Reflex.
 * Learn more at: https://docs.stimulusreflex.com
 */
export default class extends ApplicationController {
  static targets = ['lifecycles']

  connect () {
    super.connect()
    // add your code here, if applicable
  }

    beforeLifecycles(element, reflex, noop, reflexId) {
      console.log(element)
      this.insertLifecyle('Before Lifecycle', element.id)
   }

   lifecyclesSuccess(element, reflex, noop, reflexId) {
     this.insertLifecyle('Success Lifecycle', element.id)
   }

   afterLifecycles(element, reflex, noop, reflexId) {
     this.insertLifecyle('After Lifecycle', element.id)
   }

   finalizeLifecycles(element, reflex, noop, reflexId) {
     this.insertLifecyle('Finalize Lifecycle', element.id)
   }

   insertLifecyle(text, id) {
     this.lifecyclesTarget
         .insertAdjacentHTML('beforeend', `<div>${text} With Element: ${id} </div>`)
   }
}
