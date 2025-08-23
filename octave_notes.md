

# Chebfun Status On Octave

---

As of August 23, 2025, Chebfun status on Octave is still preliminary. 1D Chebfun is working fairly decently. Differential equation solvers (chebop), 2D and 3D Chebfun are not presumed to be working currently.

## Relevant Octave bugs

--------------------

[GNU Octave - Bugs: bug #44035, unable to subclass built-in types [Savannah]](https://savannah.gnu.org/bugs/?44035). Problem crops in up `@domain`.

[GNU Octave - Bugs: bug #65179, Arrays of classdef objects not... [Savannah]](https://savannah.gnu.org/bugs/index.php?65179). A ginormous pain currently. Very limited support is available for object arrays. All object array operations should be looked at with extreme suspicion.

[GNU Octave - Bugs: bug #54028, copy of non-handle class instance... [Savannah]](https://savannah.gnu.org/bugs/index.php?54028). See issues #12 and #13 for an in-depth explanation of the issue.

[GNU Octave - Bugs: bug #66659, Octave crashes with SIGSEGV when... [Savannah]](https://savannah.gnu.org/bugs/index.php?66659). Can be worked around. Create a dummy function like `dummy_fcn.m`, have the function execute the code you are interested in. Then set the breakpoint in `dummy_fcn`, and step through the code from there.

Probably others!



## Patches applied to Octave core to help Chebfun run

Make sure your version of Octave has all of these patches applied.

[GNU Octave - Patches: patch #10537, Support for InferiorClasses... [Savannah]](https://savannah.gnu.org/patch/index.php?10537). Not merged yet.

[GNU Octave - Bugs: bug #67362, Subsref should resolve to property... [Savannah]](https://savannah.gnu.org/bugs/index.php?67362). Merged into Octave default branch.

[GNU Octave - Bugs: bug #65179, Arrays of classdef objects not... [Savannah]](https://savannah.gnu.org/bugs/index.php?65179). Merged into Octave default branch.

[GNU Octave - Bugs: bug #67413, Stacktrace from error should show... [Savannah]](https://savannah.gnu.org/bugs/index.php?67413). Not necessary, but very useful for debugging.

- - - - - - - - - - - - - - - -

Older notes
-----------

```diff
- Issue: class-related functions not same as private static methods

- My interpretation of the Matlab docs if that calling a static method
- should require the class name (or instance) and dot notation
- ("myclass.mystaticmethod()").
- Citations:

- [http://www.mathworks.co.uk/help/matlab/matlab_oop/static-methods.html]

- > % Calling a static method requires the class name

- [http://www.mathworks.co.uk/help/matlab/matlab_oop/developing-classes--typical-workflow.html]

- Matlab seems to allow you to be sloppy in this way inside your own class
- (or at least I can't find it documented anywhere that you are allowed to do this.)

- If really you want to use functions without the dot, there is another
- feature: "class-related function" which are also private to the m-file
- (and not e.g., methods of the class defined in other m-files).
+ No longer a problem in Octave, see https://savannah.gnu.org/bugs/?41723
```

Current Test Statuses:
-----------

**Update as you see fit, do all tests on octave_dev branch*



### Chebfun:

```
Running tests in chebfun:
  Test #001: chebfun/test_aaa.m ...                         passed in 87.6482s
  Test #002: chebfun/test_aaatrig.m ...                     passed in 36.0178s
  Test #003: chebfun/test_abs.m ...                         FAILED
  Test #004: chebfun/test_addBreaks.m ...                   passed in 1.5197s
  Test #005: chebfun/test_addBreaksAtRoots.m ...            passed in 27.7328s
  Test #006: chebfun/test_airy.m ...                        passed in 2.6311s
  Test #007: chebfun/test_all.m ...                         passed in 3.4160s
  Test #008: chebfun/test_and.m ...                         passed in 31.6995s
  Test #009: chebfun/test_any.m ...                         passed in 15.0410s
  Test #010: chebfun/test_arclength.m ...                   FAILED
  Test #011: chebfun/test_assignColumns.m ...               CRASHED
  Test #012: chebfun/test_atan2.m ...                       passed in 24.5712s
  Test #013: chebfun/test_besselh.m ...                     passed in 14.5646s
  Test #014: chebfun/test_besselj.m ...                     passed in 14.0155s
  Test #015: chebfun/test_besselyk.m ...                    passed in 22.4882s
  Test #016: chebfun/test_bvp4c.m ...                       passed in 0.0078s
  Test #017: chebfun/test_bvp5c.m ...                       passed in 0.0090s
  Test #018: chebfun/test_cell2quasi.m ...                  passed in 0.1707s
  Test #019: chebfun/test_cf.m ...                          passed in 9.4772s
  Test #020: chebfun/test_changeTech.m ...                  passed in 0.0048s
  Test #021: chebfun/test_chebcoeffs.m ...                  CRASHED
  Test #022: chebfun/test_chebfun_lu.m ...                  passed in 4.9856s
  Test #023: chebfun/test_chebpade.m ...                    passed in 4.4262s
  Test #024: chebfun/test_chebpoly.m ...                    CRASHED
  Test #025: chebfun/test_circconv.m ...                    passed in 1.3146s
  Test #026: chebfun/test_comet.m ...                       FAILED
  Test #027: chebfun/test_comet3.m ...                      FAILED
  Test #028: chebfun/test_complex.m ...                     passed in 2.9927s
  Test #029: chebfun/test_compose_binary.m ...              passed in 18.8363s
  Test #030: chebfun/test_compose_chebfuns.m ...            CRASHED
  Test #031: chebfun/test_compose_unary.m ...               CRASHED
  Test #032: chebfun/test_constructor_basic.m ...           passed in 32.9013s
  Test #033: chebfun/test_constructor_basic_periodic.m ...  passed in 51.7319s
  Test #034: chebfun/test_constructor_equi.m ...            CRASHED
  Test #035: chebfun/test_constructor_inputs.m ...          CRASHED
  Test #036: chebfun/test_constructor_inputs_periodic.m ... passed in 1.2994s
  Test #037: chebfun/test_constructor_singfun.m ...         passed in 16.6639s
  Test #038: chebfun/test_constructor_splitting.m ...       passed in 40.9224s
  Test #039: chebfun/test_constructor_turbo.m ...           passed in 4.3653s
  Test #040: chebfun/test_constructor_unbndfun.m ...        passed in 3.6483s
  Test #041: chebfun/test_conv.m ...                        CRASHED
  Test #042: chebfun/test_cov.m ...                         passed in 10.4400s
  Test #043: chebfun/test_cummax.m ...                      CRASHED
  Test #044: chebfun/test_cummin.m ...                      CRASHED
  Test #045: chebfun/test_cumsum.m ...                      passed in 141.8284s
  Test #046: chebfun/test_dct.m ...                         passed in 0.3695s
  Test #047: chebfun/test_defineInterval.m ...              passed in 8.2853s
  Test #048: chebfun/test_definePoint.m ...                 passed in 4.7725s
  Test #049: chebfun/test_deltaOps.m ...                    passed in 0.0089s
  Test #050: chebfun/test_deriv.m ...                       passed in 3.9665s
  Test #051: chebfun/test_diag.m ...                        passed in 0.0051s
  Test #052: chebfun/test_diff.m ...                        passed in 22.7274s
  Test #053: chebfun/test_dlt.m ...                         passed in 10.9648s
  Test #054: chebfun/test_doubleLength.m ...                passed in 1.7541s
  Test #055: chebfun/test_dst.m ...                         passed in 0.1994s
  Test #056: chebfun/test_ellipj.m ...                      passed in 15.2815s
  Test #057: chebfun/test_ellipke.m ...                     CRASHED
  Test #058: chebfun/test_end.m ...                         FAILED
  Test #059: chebfun/test_eq.m ...                          passed in 4.4959s
  Test #060: chebfun/test_erfX.m ...                        passed in 6.0014s
  Test #061: chebfun/test_exp.m ...                         passed in 1.2028s
  Test #062: chebfun/test_extractColumns.m ...              passed in 0.9911s
  Test #063: chebfun/test_feval.m ...                       passed in 56.6563s
  Test #064: chebfun/test_find.m ...                        passed in 3.2025s
  Test #065: chebfun/test_fix.m ...                         FAILED
  Test #066: chebfun/test_fliplr.m ...                      passed in 12.1772s
  Test #067: chebfun/test_flipud.m ...                      passed in 9.9880s
  Test #068: chebfun/test_floor.m ...                       FAILED
  Test #069: chebfun/test_fracCalc.m ...                    passed in 7.8026s
  Test #070: chebfun/test_fred.m ...                        passed in 36.9139s
  Test #071: chebfun/test_get.m ...                         CRASHED
  Test #072: chebfun/test_getValuesAtBreakpoints.m ...      passed in 1.8589s
  Test #073: chebfun/test_gmres.m ...                       passed in 1.8771s
  Test #074: chebfun/test_horzcat.m ...                     passed in 2.2710s
  Test #075: chebfun/test_hypot.m ...                       passed in 1.6101s
  Test #076: chebfun/test_idlt.m ...                        passed in 9.1593s
  Test #077: chebfun/test_imag.m ...                        passed in 2.9875s
  Test #078: chebfun/test_innerProduct.m ...                CRASHED
  Test #079: chebfun/test_interp1.m ...                     FAILED
  Test #080: chebfun/test_inv.m ...                         passed in 211.1584s
  Test #081: chebfun/test_isempty.m ...                     passed in 1.9613s
  Test #082: chebfun/test_isequal.m ...                     passed in 15.3473s
  Test #083: chebfun/test_isfinite.m ...                    passed in 12.3175s
  Test #084: chebfun/test_isinf.m ...                       passed in 11.1500s
  Test #085: chebfun/test_isnan.m ...                       passed in 12.1906s
  Test #086: chebfun/test_iszero.m ...                      passed in 11.4429s
  Test #087: chebfun/test_ivp.m ...                         CRASHED
  Test #088: chebfun/test_jaccoeffs.m ...                   passed in 0.8072s
  Test #089: chebfun/test_join.m ...                        passed in 3.8291s
  Test #090: chebfun/test_kron.m ...                        CRASHED
  Test #091: chebfun/test_kronOp.m ...                      passed in 3.8409s
  Test #092: chebfun/test_le.m ...                          CRASHED
  Test #093: chebfun/test_legcoeffs.m ...                   passed in 1.3130s
  Test #094: chebfun/test_log.m ...                         passed in 3.6057s
  Test #095: chebfun/test_logical.m ...                     passed in 12.3452s
  Test #096: chebfun/test_lt.m ...                          CRASHED
  Test #097: chebfun/test_mat2cell.m ...                    CRASHED
  Test #098: chebfun/test_max.m ...                         FAILED
  Test #099: chebfun/test_mean.m ...                        passed in 31.9127s
  Test #100: chebfun/test_merge.m ...                       passed in 138.1938s
  Test #101: chebfun/test_min.m ...                         FAILED
  Test #102: chebfun/test_minandmax.m ...                   FAILED
  Test #103: chebfun/test_minus.m ...                       FAILED
  Test #104: chebfun/test_mldivide.m ...                    CRASHED
  Test #105: chebfun/test_mrdivide.m ...                    CRASHED
  Test #106: chebfun/test_mtimes.m ...                      CRASHED
  Test #107: chebfun/test_ne.m ...                          passed in 4.9565s
  Test #108: chebfun/test_nextpow2.m ...                    CRASHED
  Test #109: chebfun/test_nodots.m ...                      FAILED
  Test #110: chebfun/test_norm.m ...                        passed in 56.6500s
  Test #111: chebfun/test_not.m ...                         passed in 13.0977s
  Test #112: chebfun/test_null.m ...                        passed in 0.8731s
  Test #113: chebfun/test_or.m ...                          passed in 29.9412s
  Test #114: chebfun/test_orth.m ...                        passed in 2.3743s
  Test #115: chebfun/test_overlap.m ...                     passed in 40.8688s
  Test #116: chebfun/test_pchip.m ...                       passed in 2.7159s
  Test #117: chebfun/test_permute.m ...                     passed in 0.3455s
  Test #118: chebfun/test_pinv.m ...                        CRASHED
  Test #119: chebfun/test_plot.m ...                        FAILED
  Test #120: chebfun/test_plot_xylim.m ...                  CRASHED
  Test #121: chebfun/test_plotcoeffs.m ...                  passed in 14.6862s
  Test #122: chebfun/test_plus.m ...                        FAILED
  Test #123: chebfun/test_points.m ...                      passed in 0.2699s
  Test #124: chebfun/test_polyfit.m ...                     passed in 16.0925s
  Test #125: chebfun/test_polyfitL1.m ...                   CRASHED
  Test #126: chebfun/test_polyval.m ...                     passed in 3.2238s
  Test #127: chebfun/test_power.m ...                       FAILED
  Test #128: chebfun/test_prod.m ...                        FAILED
  Test #129: chebfun/test_qr.m ...                          CRASHED
  Test #130: chebfun/test_range.m ...                       CRASHED
  Test #131: chebfun/test_rdivide.m ...                     CRASHED
  Test #132: chebfun/test_real.m ...                        passed in 3.4299s
  Test #133: chebfun/test_realpow.m ...                     passed in 2.3485s
  Test #134: chebfun/test_realsqrt.m ...                    FAILED
  Test #135: chebfun/test_removeDeltas.m ...                passed in 1.1754s
  Test #136: chebfun/test_repmat.m ...                      passed in 0.5198s
  Test #137: chebfun/test_residue.m ...                     passed in 1.9725s
  Test #138: chebfun/test_restrict.m ...                    FAILED
  Test #139: chebfun/test_roots.m ...                       passed in 18.8344s
  Test #140: chebfun/test_round.m ...                       FAILED
  Test #141: chebfun/test_sign.m ...                        CRASHED
  Test #142: chebfun/test_simplify.m ...                    passed in 1.5009s
  Test #143: chebfun/test_spline.m ...                      passed in 2.9292s
  Test #144: chebfun/test_splitting_abs.m ...               passed in 42.4619s
  Test #145: chebfun/test_sqrt.m ...                        passed in 112.8450s
  Test #146: chebfun/test_subspace.m ...                    CRASHED
  Test #147: chebfun/test_subsref.m ...                     CRASHED
  Test #148: chebfun/test_sum.m ...                         FAILED
  Test #149: chebfun/test_svd.m ...                         passed in 2.0583s
  Test #150: chebfun/test_tan.m ...                         passed in 0.8167s
  Test #151: chebfun/test_times.m ...                       passed in 394.1717s
  Test #152: chebfun/test_trig.m ...                        FAILED
  Test #153: chebfun/test_trigcasting.m ...                 passed in 0.0676s
  Test #154: chebfun/test_trigcoeffs.m ...                  passed in 180.5269s
  Test #155: chebfun/test_trigpade.m ...                    passed in 27.1908s
  Test #156: chebfun/test_trigratinterp.m ...               CRASHED
  Test #157: chebfun/test_trigremez.m ...                   passed in 0.0006s
  Test #158: chebfun/test_truncate.m ...                    CRASHED
  Test #159: chebfun/test_tweakDomain.m ...                 passed in 1.6665s
  Test #160: chebfun/test_ultracoeffs.m ...                 FAILED
  Test #161: chebfun/test_unwrap.m ...                      passed in 2.3058s
  Test #162: chebfun/test_var.m ...                         FAILED
  Test #163: chebfun/test_vectorCheck.m ...                 CRASHED
  Test #164: chebfun/test_vertcat.m ...                     CRASHED
  Test #165: chebfun/test_volt.m ...                        CRASHED
  Test #166: chebfun/test_waterfall.m ...                   FAILED
61 failed test(s) in chebfun directory.

The following tests failed or crashed:
   chebfun/test_abs.m
   chebfun/test_arclength.m
   chebfun/test_assignColumns.m
   chebfun/test_chebcoeffs.m
   chebfun/test_chebpoly.m
   chebfun/test_comet.m
   chebfun/test_comet3.m
   chebfun/test_compose_chebfuns.m
   chebfun/test_compose_unary.m
   chebfun/test_constructor_equi.m
   chebfun/test_constructor_inputs.m
   chebfun/test_conv.m
   chebfun/test_cummax.m
   chebfun/test_cummin.m
   chebfun/test_ellipke.m
   chebfun/test_end.m
   chebfun/test_fix.m
   chebfun/test_floor.m
   chebfun/test_get.m
   chebfun/test_innerProduct.m
   chebfun/test_interp1.m
   chebfun/test_ivp.m
   chebfun/test_kron.m
   chebfun/test_le.m
   chebfun/test_lt.m
   chebfun/test_mat2cell.m
   chebfun/test_max.m
   chebfun/test_min.m
   chebfun/test_minandmax.m
   chebfun/test_minus.m
   chebfun/test_mldivide.m
   chebfun/test_mrdivide.m
   chebfun/test_mtimes.m
   chebfun/test_nextpow2.m
   chebfun/test_nodots.m
   chebfun/test_pinv.m
   chebfun/test_plot.m
   chebfun/test_plot_xylim.m
   chebfun/test_plus.m
   chebfun/test_polyfitL1.m
   chebfun/test_power.m
   chebfun/test_prod.m
   chebfun/test_qr.m
   chebfun/test_range.m
   chebfun/test_rdivide.m
   chebfun/test_realsqrt.m
   chebfun/test_restrict.m
   chebfun/test_round.m
   chebfun/test_sign.m
   chebfun/test_subspace.m
   chebfun/test_subsref.m
   chebfun/test_sum.m
   chebfun/test_trig.m
   chebfun/test_trigratinterp.m
   chebfun/test_truncate.m
   chebfun/test_ultracoeffs.m
   chebfun/test_var.m
   chebfun/test_vectorCheck.m
   chebfun/test_vertcat.m
   chebfun/test_volt.m
   chebfun/test_waterfall.m
```

### Chebop:

```
Running tests in chebop:
  Test #001: chebop/test_LorenzIVP.m ...                 CRASHED
  Test #002: chebop/test_adjoint.m ...                   CRASHED
  Test #003: chebop/test_autoVectorize.m ...             CRASHED
  Test #004: chebop/test_basic_arithmetic.m ...          CRASHED
  Test #005: chebop/test_bc.m ...                        CRASHED
  Test #006: chebop/test_bcVectorInput.m ...             CRASHED
  Test #007: chebop/test_bcsyntax.m ...                  CRASHED
  Test #008: chebop/test_carrier_C1.m ...                CRASHED
  Test #009: chebop/test_carrier_C2.m ...                CRASHED
  Test #010: chebop/test_carrier_US.m ...                CRASHED
  Test #011: chebop/test_cellOperator.m ...              CRASHED
  Test #012: chebop/test_chap21.m ...                    CRASHED
  Test #013: chebop/test_cumsum.m ...                    CRASHED
  Test #014: chebop/test_deflate_bratu.m ...             CRASHED
  Test #015: chebop/test_deflate_herceg.m ...            CRASHED
  Test #016: chebop/test_deflate_painleve.m ...          CRASHED
  Test #017: chebop/test_determineDiscretization.m ...   CRASHED
  Test #018: chebop/test_diff.m ...                      CRASHED
  Test #019: chebop/test_domain.m ...                    CRASHED
  Test #020: chebop/test_eigs_basic.m ...                CRASHED
  Test #021: chebop/test_eigs_drum.m ...                 CRASHED
  Test #022: chebop/test_eigs_foxli.m ...                CRASHED
  Test #023: chebop/test_eigs_orrsom.m ...               CRASHED
  Test #024: chebop/test_eigs_periodic.m ...             CRASHED
  Test #025: chebop/test_eigs_piecewise.m ...            CRASHED
  Test #026: chebop/test_eigs_schrodinger.m ...          CRASHED
  Test #027: chebop/test_eigs_system.m ...               CRASHED
  Test #028: chebop/test_eigs_system2.m ...              CRASHED
  Test #029: chebop/test_ellipjODE.m ...                 CRASHED
  Test #030: chebop/test_exactInitial.m ...              CRASHED
  Test #031: chebop/test_expm.m ...                      CRASHED
  Test #032: chebop/test_feval.m ...                     CRASHED
  Test #033: chebop/test_feval2.m ...                    CRASHED
  Test #034: chebop/test_firstOrderIntegralEqn.m ...     CRASHED
  Test #035: chebop/test_followpath.m ...                CRASHED
  Test #036: chebop/test_gmres.m ...                     CRASHED
  Test #037: chebop/test_initialConditions.m ...         CRASHED
  Test #038: chebop/test_intops.m ...                    CRASHED
  Test #039: chebop/test_ivp.m ...                       CRASHED
  Test #040: chebop/test_ivp_chebmatrix_syntax.m ...     CRASHED
  Test #041: chebop/test_jump_scaled.m ...               CRASHED
  Test #042: chebop/test_jumps_manual.m ...              CRASHED
  Test #043: chebop/test_linearInit.m ...                CRASHED
  Test #044: chebop/test_linearScalarODEs.m ...          CRASHED
  Test #045: chebop/test_linearSystem1.m ...             CRASHED
  Test #046: chebop/test_linearSystem2.m ...             CRASHED
  Test #047: chebop/test_linearizationDimensions.m ...   CRASHED
  Test #048: chebop/test_linearize.m ...                 CRASHED
  Test #049: chebop/test_linearize_init_fails.m ...      CRASHED
  Test #050: chebop/test_manualNewton.m ...              CRASHED
  Test #051: chebop/test_matrix.m ...                    CRASHED
  Test #052: chebop/test_maxnorm.m ...                   CRASHED
  Test #053: chebop/test_minres.m ...                    CRASHED
  Test #054: chebop/test_mtimes.m ...                    CRASHED
  Test #055: chebop/test_multOutputs_simplify.m ...      CRASHED
  Test #056: chebop/test_multipleOutputs.m ...           CRASHED
  Test #057: chebop/test_nonlinSys1Breaks_C1.m ...       CRASHED
  Test #058: chebop/test_nonlinSys1Breaks_C2.m ...       CRASHED
  Test #059: chebop/test_nonlinSys1Breaks_US.m ...       CRASHED
  Test #060: chebop/test_nonlinSys1_C1.m ...             CRASHED
  Test #061: chebop/test_nonlinSys1_C2.m ...             CRASHED
  Test #062: chebop/test_nonlinSys1_US.m ...             CRASHED
  Test #063: chebop/test_nonlinSys2_C1.m ...             CRASHED
  Test #064: chebop/test_nonlinSys2_C2.m ...             CRASHED
  Test #065: chebop/test_nonlinSys2_US.m ...             CRASHED
  Test #066: chebop/test_nonlinSysDampingBreaks_C1.m ... CRASHED
  Test #067: chebop/test_nonlinSysDampingBreaks_C2.m ... CRASHED
  Test #068: chebop/test_nonlinSysDampingBreaks_US.m ... CRASHED
  Test #069: chebop/test_nonlinSysDamping_C1.m ...       CRASHED
  Test #070: chebop/test_nonlinSysDamping_C2.m ...       CRASHED
  Test #071: chebop/test_nonlinSysDamping_US.m ...       CRASHED
  Test #072: chebop/test_null.m ...                      CRASHED
  Test #073: chebop/test_pantograph.m ...                CRASHED
  Test #074: chebop/test_paramODE.m ...                  CRASHED
  Test #075: chebop/test_paramODE_inBCs.m ...            CRASHED
  Test #076: chebop/test_paramODE_linearization.m ...    CRASHED
  Test #077: chebop/test_paramODE_nonlin_C1.m ...        CRASHED
  Test #078: chebop/test_paramODE_nonlin_C2.m ...        CRASHED
  Test #079: chebop/test_paramODE_nonlin_US.m ...        CRASHED
  Test #080: chebop/test_pcg.m ...                       CRASHED
  Test #081: chebop/test_periodic.m ...                  CRASHED
  Test #082: chebop/test_periodic_nonlin.m ...           CRASHED
  Test #083: chebop/test_periodic_system.m ...           CRASHED
  Test #084: chebop/test_promote_functional.m ...        CRASHED
  Test #085: chebop/test_quiver.m ...                    CRASHED
  Test #086: chebop/test_scalarODE.m ...                 CRASHED
  Test #087: chebop/test_scalarODE_breakpoints.m ...     CRASHED
  Test #088: chebop/test_scalarODE_damping.m ...         CRASHED
  Test #089: chebop/test_scalarODE_sign.m ...            CRASHED
  Test #090: chebop/test_shortPulses.m ...               CRASHED
  Test #091: chebop/test_stringConstructor.m ...         CRASHED
  Test #092: chebop/test_svds.m ...                      CRASHED
  Test #093: chebop/test_system3.m ...                   CRASHED
  Test #094: chebop/test_uminusOp.m ...                  CRASHED
  Test #095: chebop/test_undampedNewton.m ...            CRASHED
  Test #096: chebop/test_vdpIVP.m ...                    CRASHED
  Test #097: chebop/test_vectorizeOp.m ...               CRASHED
  Test #098: chebop/test_wronskian.m ...                 CRASHED
  Test #099: chebop/test_zerothOrder.m ...               CRASHED
99 failed test(s) in chebop directory.

The following tests failed or crashed:
   chebop/test_LorenzIVP.m
   chebop/test_adjoint.m
   chebop/test_autoVectorize.m
   chebop/test_basic_arithmetic.m
   chebop/test_bc.m
   chebop/test_bcVectorInput.m
   chebop/test_bcsyntax.m
   chebop/test_carrier_C1.m
   chebop/test_carrier_C2.m
   chebop/test_carrier_US.m
   chebop/test_cellOperator.m
   chebop/test_chap21.m
   chebop/test_cumsum.m
   chebop/test_deflate_bratu.m
   chebop/test_deflate_herceg.m
   chebop/test_deflate_painleve.m
   chebop/test_determineDiscretization.m
   chebop/test_diff.m
   chebop/test_domain.m
   chebop/test_eigs_basic.m
   chebop/test_eigs_drum.m
   chebop/test_eigs_foxli.m
   chebop/test_eigs_orrsom.m
   chebop/test_eigs_periodic.m
   chebop/test_eigs_piecewise.m
   chebop/test_eigs_schrodinger.m
   chebop/test_eigs_system.m
   chebop/test_eigs_system2.m
   chebop/test_ellipjODE.m
   chebop/test_exactInitial.m
   chebop/test_expm.m
   chebop/test_feval.m
   chebop/test_feval2.m
   chebop/test_firstOrderIntegralEqn.m
   chebop/test_followpath.m
   chebop/test_gmres.m
   chebop/test_initialConditions.m
   chebop/test_intops.m
   chebop/test_ivp.m
   chebop/test_ivp_chebmatrix_syntax.m
   chebop/test_jump_scaled.m
   chebop/test_jumps_manual.m
   chebop/test_linearInit.m
   chebop/test_linearScalarODEs.m
   chebop/test_linearSystem1.m
   chebop/test_linearSystem2.m
   chebop/test_linearizationDimensions.m
   chebop/test_linearize.m
   chebop/test_linearize_init_fails.m
   chebop/test_manualNewton.m
   chebop/test_matrix.m
   chebop/test_maxnorm.m
   chebop/test_minres.m
   chebop/test_mtimes.m
   chebop/test_multOutputs_simplify.m
   chebop/test_multipleOutputs.m
   chebop/test_nonlinSys1Breaks_C1.m
   chebop/test_nonlinSys1Breaks_C2.m
   chebop/test_nonlinSys1Breaks_US.m
   chebop/test_nonlinSys1_C1.m
   chebop/test_nonlinSys1_C2.m
   chebop/test_nonlinSys1_US.m
   chebop/test_nonlinSys2_C1.m
   chebop/test_nonlinSys2_C2.m
   chebop/test_nonlinSys2_US.m
   chebop/test_nonlinSysDampingBreaks_C1.m
   chebop/test_nonlinSysDampingBreaks_C2.m
   chebop/test_nonlinSysDampingBreaks_US.m
   chebop/test_nonlinSysDamping_C1.m
   chebop/test_nonlinSysDamping_C2.m
   chebop/test_nonlinSysDamping_US.m
   chebop/test_null.m
   chebop/test_pantograph.m
   chebop/test_paramODE.m
   chebop/test_paramODE_inBCs.m
   chebop/test_paramODE_linearization.m
   chebop/test_paramODE_nonlin_C1.m
   chebop/test_paramODE_nonlin_C2.m
   chebop/test_paramODE_nonlin_US.m
   chebop/test_pcg.m
   chebop/test_periodic.m
   chebop/test_periodic_nonlin.m
   chebop/test_periodic_system.m
   chebop/test_promote_functional.m
   chebop/test_quiver.m
   chebop/test_scalarODE.m
   chebop/test_scalarODE_breakpoints.m
   chebop/test_scalarODE_damping.m
   chebop/test_scalarODE_sign.m
   chebop/test_shortPulses.m
   chebop/test_stringConstructor.m
   chebop/test_svds.m
   chebop/test_system3.m
   chebop/test_uminusOp.m
   chebop/test_undampedNewton.m
   chebop/test_vdpIVP.m
   chebop/test_vectorizeOp.m
   chebop/test_wronskian.m
   chebop/test_zerothOrder.m
```

```
Running tests in singfun:
  Test #001: singfun/test_chebcoeffs.m ...          passed in 0.4338s
  Test #002: singfun/test_compose.m ...             passed in 1.0633s
  Test #003: singfun/test_conj.m ...                passed in 0.9775s
  Test #004: singfun/test_cumsum.m ...              passed in 57.0597s
  Test #005: singfun/test_diff.m ...                passed in 2.3994s
  Test #006: singfun/test_feval.m ...               FAILED
  Test #007: singfun/test_flipud.m ...              passed in 0.6157s
  Test #008: singfun/test_imag.m ...                passed in 0.9537s
  Test #009: singfun/test_innerProduct.m ...        passed in 1.9087s
  Test #010: singfun/test_isempty.m ...             passed in 0.0807s
  Test #011: singfun/test_isequal.m ...             passed in 41.9926s
  Test #012: singfun/test_isfinite.m ...            passed in 0.1774s
  Test #013: singfun/test_isnan.m ...               passed in 0.2631s
  Test #014: singfun/test_make.m ...                passed in 1.6018s
  Test #015: singfun/test_minandmax.m ...           passed in 2.2908s
  Test #016: singfun/test_plus.m ...                passed in 3.1788s
  Test #017: singfun/test_rdivide.m ...             passed in 12.3385s
  Test #018: singfun/test_real.m ...                passed in 0.9071s
  Test #019: singfun/test_restrict.m ...            passed in 5.0781s
  Test #020: singfun/test_roots.m ...               passed in 1.0347s
  Test #021: singfun/test_singfun_constructor.m ... FAILED
  Test #022: singfun/test_sum.m ...                 passed in 0.6061s
  Test #023: singfun/test_times.m ...               passed in 2.4753s
  Test #024: singfun/test_zeroSingFun.m ...         passed in 0.0267s
2 failed test(s) in singfun directory.

The following tests failed or crashed:
   singfun/test_feval.m
   singfun/test_singfun_constructor.m
```


