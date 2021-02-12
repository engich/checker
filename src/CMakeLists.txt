
add_subdirectory(AST)
add_subdirectory(CWE-468)
add_subdirectory(target)
add_subdirectory(SMT)
add_subdirectory(FSM)
add_subdirectory(utils)

add_executable(CWE468 main.cpp)


target_link_libraries(CWE468
        LLVM
        utils
        ast
        cwe-468
        target
        fsm
        smt
        z3
        clangAST
        clangLex
        clangBasic
        clangFrontend
        )
