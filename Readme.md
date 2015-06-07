# Kjue

## Simple Kqueue Interface for Swift

Currently some abstractions are in place, and nothing is working correctly.

## Status
- [ ] add simplified API to get a ready-made queue for a filename/nsurl, etc
- [ ] make it work again
- [ ] add tests for varous things
- [ ] add documentation
- [ ] add funcs for file modification operations
- [ ] add KjueEvent substructure (?) for each different type that encloses the specific value that are being returned/read from the queue 
- [ ] add a block-based api manager that allows people to register for events with a block
- [ ] change the filter flags, so it is less code than:
    KjueFilter.KjueFilterFlags.VNodeFlags.Delete
- [ ] add ability to watch directories

