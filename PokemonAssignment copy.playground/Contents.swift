import UIKit

/*  ----families of Pokemon-----
Venusaur      // done
MegaVenusaur // done

Charmander   // done
Charmeleon  // done

Charizard       // done
MegaCharizard  // done

Squirtle     // done
Wartortle   // done

Blastoise      // done
MegaBlastoise // done
*/

class Pokemon {
    var healthCondition = 50
    var ammo = (count: 20, substance: "water")
    var currentPowerLevel = 3

    func damageHealthCondition() {
        --healthCondition
    }
    func addAmmo() {
        ++ammo.count
    }
    func deployAmmo() {
        --ammo.count
    }
    func changeSubstanceToFire() {
        ammo.substance = "fire"
    }
    func changeSubstanceToWater() {
        ammo.substance = "water"
    }

    func increasePowerBy(#degree: Int) {
        let defaultStep = 0
        if degree == defaultStep {
            ++currentPowerLevel
        }else{
            currentPowerLevel += degree
        }
    }
    func decreasePowerBy(#degree: Int) {
        let defaultStep = 0
        if degree == defaultStep {
            --currentPowerLevel
        }else{
            currentPowerLevel -= degree
        }
    }
                            // only mega or derived pokemon can shit
    func spitAttack() {     // but, all Pokemon can spit :-?
        --healthCondition
    }
}
let PokemonInstance = Pokemon()
// -----------------------------------------
// -----------------------------------------
class Venusaur: Pokemon {
}
let VenusaurInstance = Venusaur()

class MegaVenusaur: Venusaur {
    func shitAttack() {
        healthCondition -= 3
    }
}
let MegaVenusaurInstance = MegaVenusaur()
// -----------------------------------------
class Charmander: Pokemon {
}
let CharmanderInstance = Charmander()

class Charmeleon: Charmander {
    func shitAttack() {
        healthCondition -= 3
    }
}
let MegaCharmander = Charmander()
// -----------------------------------------
class Charizard: Pokemon {
    override func spitAttack() {  // Had to override, 'cause these guys don't brush their teeth
        healthCondition -= 5
    }                      // So, both Charizard and MegaCharizard have extra-wicked-nasty spit
}
let CharizardInstance = Charizard()

class MegaCharizard: Charizard {
    func shitAttack() {
        healthCondition -= 3
    }
}
let MegaCharizardInstance = Charizard()
// -----------------------------------------
class Squirtle: Pokemon {
    func MultiplierAndSubstance(#count: Int, substance: String) -> (Int, String) {
        if self.currentPowerLevel < 5 {
            return (count, substance)
        }else{
            return (count * 2, substance)
        }
    }
}
let SquirtleInstance = Squirtle()

class WarTurtle: Squirtle {
    func shitAttack() {
        healthCondition -= 3
    }
    func pissBlast() {   // WarTurtle was planning to piss on all other Pokemon, but had an accident :-?
        currentPowerLevel -= 6
    }
    override func decreasePowerBy(#degree: Int) {   // WarTurtle has-it-in for Venusaur, in particular.
        let defaultStep = 0
        if degree == defaultStep {
            --currentPowerLevel
        }else{
            VenusaurInstance.currentPowerLevel -= degree
        }
    }
}
let WarTurtleInstance = WarTurtle()
// -----------------------------------------
class Blastoise: Pokemon {
}
let BlastoiseInstance = Blastoise()

class MegaBlastoise: Blastoise {
    func shitAttack() {
        healthCondition -= 3  // MegaBlastoise will get sick, and sicken three others, a bit.

        BlastoiseInstance.damageHealthCondition()
        WarTurtleInstance.damageHealthCondition()
        VenusaurInstance.damageHealthCondition()
    }
}
let MegaBlastoiseInstance = MegaBlastoise()


func directorCallsAction() {
    let defaultStep = 0
    // Below, I am only showing-off my big brass tuples :-?
    PokemonInstance.ammo = WarTurtleInstance.MultiplierAndSubstance(count: 20, substance: "Fire")
        println(PokemonInstance.ammo.count)
        println(PokemonInstance.ammo.substance)

    var rick = (count: 0, substance: "air")
    rick = WarTurtleInstance.MultiplierAndSubstance(count: 20, substance: "Fire")
    rick.count
    rick.substance     // Wow, Rick's tuples are simply on ...

    VenusaurInstance.currentPowerLevel
    WarTurtleInstance.decreasePowerBy(degree: 3)  // WarTurtle was envious of Venusaur's power

    WarTurtleInstance.currentPowerLevel
    WarTurtleInstance.pissBlast()              // Emarassed-WarTurtle, has pissed his self :-?
    WarTurtleInstance.currentPowerLevel

    WarTurtleInstance.currentPowerLevel                     // WarTurtle slowly gets-over it.
    WarTurtleInstance.increasePowerBy(degree: defaultStep) //
    WarTurtleInstance.currentPowerLevel                   //
    WarTurtleInstance.increasePowerBy(degree: 4)         //

    //println(BlastoiseInstance.healthCondition)
    BlastoiseInstance.damageHealthCondition()    // Blastoise smoked a pack of cigarettes, 'cause friends did.
}
directorCallsAction()  // Finally, after struggling for hours, rick starts to have some fun :]

    println(WarTurtleInstance.currentPowerLevel)   // WarTurtle has changed his pants, power-suit looks, powerful.
    println(VenusaurInstance.currentPowerLevel)   // Venusaur's power was taken by WarTurtle
    println(BlastoiseInstance.healthCondition)   // Blastoise succumed to peer pressure (smoking is bad, um-ka)

println(WarTurtleInstance.healthCondition)
println(VenusaurInstance.healthCondition)
println(BlastoiseInstance.healthCondition)
  MegaBlastoiseInstance.shitAttack()  // MegaBlastoise sickens three other Pokemon, just a bit, with a shit attack.
println(WarTurtleInstance.healthCondition)
println(VenusaurInstance.healthCondition)
println(BlastoiseInstance.healthCondition)