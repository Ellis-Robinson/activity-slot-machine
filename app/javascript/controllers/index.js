import { application } from "./application"

// Import your controllers
import HelloController from "./hello_controller"
import SpinController from "./spin_controller"

// Register controllers
application.register("spin", SpinController)
application.register("hello", HelloController)
