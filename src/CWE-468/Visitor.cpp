//
// Created by slelaron on 04.01.2021.
//

#include "Visitor.h"
#include <iostream>

clang::ASTContext *context;

void print_error_msg(const clang::Stmt *Stmt, clang::SourceManager *sourceManager) {
    clang::SourceLocation SourceLocation = Stmt->getBeginLoc();
    std::string location = SourceLocation.printToString(*sourceManager);
    std::cerr << "Dangerous pointer arithmetic in cast expression " << location << std::endl;
}

bool Visitor::VisitFunctionDecl(clang::FunctionDecl *FO) {
    sourceManager = &FO->getASTContext().getSourceManager();
    return true;
}

bool Visitor::VisitBinaryOperator(clang::BinaryOperator *BOp) {
    /*const clang::BinaryOperatorKind OpKind = BOp->getOpcode();

    if (!BOp->isAdditiveOp() && OpKind != clang::BO_AddAssign && OpKind != clang::BO_SubAssign)
        return true;

    const clang::Expr *LeftExpr = BOp->getLHS();
    const clang::Expr *RightExpr = BOp->getRHS();

    if (LeftExpr->getStmtClass() == clang::Stmt::UnaryExprOrTypeTraitExprClass ||
        RightExpr->getStmtClass() == clang::Stmt::UnaryExprOrTypeTraitExprClass) {
        auto lol = reinterpret_cast<const clang::UnaryExprOrTypeTraitExpr*>(RightExpr->getBestDynamicClassTypeExpr());
        print_error_msg(lol, sourceManager);
    }

    return true;*/
}

bool Visitor::VisitCastExpr(clang::CastExpr *CE) {
    if (CE->getCastKind() != clang::CK_BitCast)
        return true;

    const clang::Expr *CastedExpr = CE->getSubExpr();
    const clang::Expr *DynamicCastedExpr = CastedExpr->getBestDynamicClassTypeExpr();

    switch (DynamicCastedExpr->getStmtClass()) {
        case clang::Stmt::BinaryOperatorClass: {
            auto *stmt = reinterpret_cast<const clang::BinaryOperator*>(DynamicCastedExpr);

            if ((stmt->getLHS()->getType()->isPointerType() && stmt->getRHS()->getType()->isArithmeticType()) ||
                (stmt->getLHS()->getType()->isIntegerType() && stmt->getRHS()->getType()->isPointerType())) {
                print_error_msg(stmt, sourceManager);
            }
            break;
        }
        default: {
            break;
        }
    }

    return true;
}
