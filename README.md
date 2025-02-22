# Unexpected Result from Assembly Add Operation in Solidity

This example demonstrates a potential error when using assembly's add operation in Solidity. The assembly's add operation may lead to unexpected behavior. 

## Bug
The `bug` function showcases the incorrect usage. It calls a pure function `add` directly and also uses assembly to perform addition. However, the assembly `add` does not operate as expected.

## Solution
The solution involves avoiding assembly's `add` or carefully understanding its behavior in the specific context. In this example, we use the native solidity addition which is safe and correct. 