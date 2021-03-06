
## Implementation of the value function algorithm. Follows the work of Collard. Optimal growth model with a CRRA utility function and law of motion provided for capital. 

# This is an easy implementation, perhaps one of the simplest out of all that I have read. There are other methods, this one is just quite easy to understand

## Start by specifying the parameters

using Parameters

@with_kw struct params
    σ::Float64 = 1.5
    δ::Float64 = 0.1
    β::Float64 = 0.95
    α::Float64 = 0.30
    
p = params()

function cara_vfi()
    @unpack σ, δ, β, α = p


