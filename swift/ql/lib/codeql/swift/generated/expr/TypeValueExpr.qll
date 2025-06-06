// generated by codegen/codegen.py, do not edit
/**
 * This module provides the generated definition of `TypeValueExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.internal.ExprImpl::Impl as ExprImpl
import codeql.swift.elements.type.TypeRepr

/**
 * INTERNAL: This module contains the fully generated definition of `TypeValueExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::TypeValueExpr` class directly.
   * Use the subclass `TypeValueExpr`, where the following predicates are available.
   */
  class TypeValueExpr extends Synth::TTypeValueExpr, ExprImpl::Expr {
    override string getAPrimaryQlClass() { result = "TypeValueExpr" }

    /**
     * Gets the type representation of this type value expression.
     */
    TypeRepr getTypeRepr() {
      result =
        Synth::convertTypeReprFromRaw(Synth::convertTypeValueExprToRaw(this)
              .(Raw::TypeValueExpr)
              .getTypeRepr())
    }
  }
}
