namespace MyFSharpProject
open UnityEngine
open System.Linq
 
type MyFSharpProject() =
    inherit MonoBehaviour()
    let mutable speed = 500.0f
 
    member this.stuff = 42
    member this.Start () =
        this.transform.Translate(1.0f, -1.0f, 2.0f)