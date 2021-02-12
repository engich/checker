//
// Created by slelaron on 04.01.2021.
//

#ifndef ESCA_VISITOR_H
#define ESCA_VISITOR_H

#include <clang/AST/RecursiveASTVisitor.h>
#include <clang/AST/Expr.h>

struct Visitor : public clang::RecursiveASTVisitor<Visitor> {
    Visitor() = default;

    bool VisitFunctionDecl(clang::FunctionDecl *FD);
    bool VisitBinaryOperator(clang::BinaryOperator *BO);
    bool VisitCastExpr(clang::CastExpr *CE);
private:
    clang::SourceManager *sourceManager;
};

#endif //ESCA_VISITOR_H
