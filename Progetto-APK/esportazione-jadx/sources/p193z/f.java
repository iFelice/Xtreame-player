package p193z;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import p156u.h;
import p170w.c;
import p170w.d;
import p170w.e;
import p170w.i;
import p178x.b;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f31548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f31550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f31551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f31552e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f31553f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f31554g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ConstraintLayout f31555h;

    public f(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2) {
        this.f31555h = constraintLayout;
        this.f31548a = constraintLayout2;
    }

    public static boolean a(int i8, int i9, int i10) {
        if (i8 == i9) {
            return true;
        }
        int mode = View.MeasureSpec.getMode(i8);
        return View.MeasureSpec.getMode(i9) == 1073741824 && (mode == Integer.MIN_VALUE || mode == 0) && i10 == View.MeasureSpec.getSize(i9);
    }

    /* JADX WARN: Code duplicated, block: B:113:0x019d  */
    /* JADX WARN: Code duplicated, block: B:114:0x019f  */
    /* JADX WARN: Code duplicated, block: B:116:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:117:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:123:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:128:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:134:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:139:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:141:0x01d0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:142:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:154:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:156:0x020d  */
    /* JADX WARN: Code duplicated, block: B:157:0x0212  */
    /* JADX WARN: Code duplicated, block: B:160:0x0217  */
    /* JADX WARN: Code duplicated, block: B:163:0x021f  */
    /* JADX WARN: Code duplicated, block: B:164:0x0226  */
    /* JADX WARN: Code duplicated, block: B:167:0x022d  */
    /* JADX WARN: Code duplicated, block: B:170:0x023a  */
    /* JADX WARN: Code duplicated, block: B:172:0x023e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:174:0x0249 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:175:0x024b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:178:0x0255 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:181:0x025c  */
    /* JADX WARN: Code duplicated, block: B:183:0x0260  */
    /* JADX WARN: Code duplicated, block: B:185:0x0266  */
    /* JADX WARN: Code duplicated, block: B:186:0x026b  */
    /* JADX WARN: Code duplicated, block: B:189:0x0288  */
    /* JADX WARN: Code duplicated, block: B:190:0x028a  */
    /* JADX WARN: Code duplicated, block: B:197:0x0296  */
    /* JADX WARN: Code duplicated, block: B:200:0x029d  */
    /* JADX WARN: Code duplicated, block: B:201:0x029f  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:55:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:57:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:58:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:60:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:61:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:63:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:65:0x00db  */
    /* JADX WARN: Code duplicated, block: B:67:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:68:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:71:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:74:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:77:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:86:0x0110  */
    /* JADX WARN: Code duplicated, block: B:87:0x011b  */
    /* JADX WARN: Code duplicated, block: B:88:0x0125  */
    public final void b(d dVar, b bVar) {
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        int iB;
        int iMakeMeasureSpec3;
        e eVar;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        e eVar2;
        int i8;
        int measuredWidth;
        int measuredHeight;
        int i9;
        int iMin;
        int i10;
        int i11;
        int measuredHeight2;
        int i12;
        int iMakeMeasureSpec4;
        int baseline;
        int i13;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        int i14;
        int i15;
        boolean z17;
        int i16;
        if (dVar == null) {
            return;
        }
        if (dVar.f30829f0 == 8) {
            bVar.f31119e = 0;
            bVar.f31120f = 0;
            bVar.f31121g = 0;
            return;
        }
        if (dVar.f30810S == null) {
            return;
        }
        s sVar = ConstraintLayout.f8949V;
        ConstraintLayout constraintLayout = this.f31555h;
        constraintLayout.getClass();
        int i17 = bVar.f31115a;
        int i18 = bVar.f31116b;
        int i19 = bVar.f31117c;
        int i20 = bVar.f31118d;
        int i21 = this.f31549b + this.f31550c;
        int i22 = this.f31551d;
        View view = (View) dVar.f30827e0;
        int iB2 = h.b(i17);
        c cVar = dVar.f30801J;
        c cVar2 = dVar.f30799H;
        if (iB2 == 0) {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i19, 1073741824);
        } else {
            if (iB2 != 1) {
                if (iB2 == 2) {
                    iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f31553f, i22, -2);
                    boolean z18 = dVar.f30850r == 1;
                    int i23 = bVar.f31124j;
                    if (i23 == 1 || i23 == 2) {
                        boolean z19 = view.getMeasuredHeight() == dVar.i();
                        if (bVar.f31124j == 2 || !z18 || ((z18 && z19) || dVar.y())) {
                            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(dVar.o(), 1073741824);
                        }
                    }
                } else if (iB2 != 3) {
                    iMakeMeasureSpec2 = 0;
                } else {
                    int i24 = this.f31553f;
                    int i25 = cVar2 != null ? cVar2.f30789g : 0;
                    if (cVar != null) {
                        i25 += cVar.f30789g;
                    }
                    iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(i24, i22 + i25, -1);
                }
                iB = h.b(i18);
                if (iB != 0) {
                    iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i20, 1073741824);
                } else if (iB != 1) {
                    iMakeMeasureSpec3 = ViewGroup.getChildMeasureSpec(this.f31554g, i21, -2);
                } else if (iB != 2) {
                    iMakeMeasureSpec3 = ViewGroup.getChildMeasureSpec(this.f31554g, i21, -2);
                    if (dVar.f30851s == 1) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    i14 = bVar.f31124j;
                    if (i14 != 1) {
                        i15 = 2;
                        if (i14 == 2) {
                        }
                    } else {
                        i15 = 2;
                    }
                    if (view.getMeasuredWidth() == dVar.o()) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    if (bVar.f31124j != i15 || !z16 || ((z16 && z17) || dVar.z())) {
                        iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(dVar.i(), 1073741824);
                    }
                } else if (iB != 3) {
                    iMakeMeasureSpec3 = 0;
                } else {
                    int i26 = this.f31554g;
                    if (cVar2 != null) {
                        i16 = dVar.f30800I.f30789g;
                    } else {
                        i16 = 0;
                    }
                    if (cVar != null) {
                        i16 += dVar.f30802K.f30789g;
                    }
                    iMakeMeasureSpec3 = ViewGroup.getChildMeasureSpec(i26, i21 + i16, -1);
                }
                eVar = (e) dVar.f30810S;
                if (eVar == null && i.b(constraintLayout.f8958O, 256) && view.getMeasuredWidth() == dVar.o() && view.getMeasuredWidth() < eVar.o() && view.getMeasuredHeight() == dVar.i() && view.getMeasuredHeight() < eVar.i() && view.getBaseline() == dVar.f30817Z && !dVar.x() && a(dVar.f30797F, iMakeMeasureSpec2, dVar.o()) && a(dVar.f30798G, iMakeMeasureSpec3, dVar.i())) {
                    bVar.f31119e = dVar.o();
                    bVar.f31120f = dVar.i();
                    bVar.f31121g = dVar.f30817Z;
                    return;
                }
                if (i17 == 3) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (i18 == 3) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                if (i18 != 4 || i18 == 1) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                if (i17 != 4 || i17 == 1) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z7 || dVar.f30813V <= 0.0f) {
                    z11 = false;
                } else {
                    z11 = true;
                }
                if (z8 || dVar.f30813V <= 0.0f) {
                    z12 = false;
                } else {
                    z12 = true;
                }
                if (view == null) {
                    return;
                }
                eVar2 = (e) view.getLayoutParams();
                i8 = bVar.f31124j;
                if (i8 == 1 && i8 != 2 && z7 && dVar.f30850r == 0 && z8 && dVar.f30851s == 0) {
                    measuredHeight2 = 0;
                    i13 = -1;
                    baseline = 0;
                    iMin = 0;
                } else {
                    view.measure(iMakeMeasureSpec2, iMakeMeasureSpec3);
                    dVar.f30797F = iMakeMeasureSpec2;
                    dVar.f30798G = iMakeMeasureSpec3;
                    dVar.f30830g = false;
                    measuredWidth = view.getMeasuredWidth();
                    measuredHeight = view.getMeasuredHeight();
                    int baseline2 = view.getBaseline();
                    i9 = dVar.f30853u;
                    if (i9 > 0) {
                        iMin = Math.max(i9, measuredWidth);
                    } else {
                        iMin = measuredWidth;
                    }
                    i10 = dVar.f30854v;
                    if (i10 > 0) {
                        iMin = Math.min(i10, iMin);
                    }
                    i11 = dVar.f30856x;
                    if (i11 > 0) {
                        measuredHeight2 = Math.max(i11, measuredHeight);
                    } else {
                        measuredHeight2 = measuredHeight;
                    }
                    i12 = dVar.f30857y;
                    if (i12 > 0) {
                        measuredHeight2 = Math.min(i12, measuredHeight2);
                    }
                    if (!i.b(constraintLayout.f8958O, 1)) {
                        if (!z11 && z9) {
                            iMin = (int) ((measuredHeight2 * dVar.f30813V) + 0.5f);
                        } else if (z12 && z10) {
                            measuredHeight2 = (int) ((iMin / dVar.f30813V) + 0.5f);
                        }
                    }
                    if (measuredWidth == iMin || measuredHeight != measuredHeight2) {
                        if (measuredWidth != iMin) {
                            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                        }
                        if (measuredHeight != measuredHeight2) {
                            iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824);
                        } else {
                            iMakeMeasureSpec4 = iMakeMeasureSpec3;
                        }
                        view.measure(iMakeMeasureSpec2, iMakeMeasureSpec4);
                        dVar.f30797F = iMakeMeasureSpec2;
                        dVar.f30798G = iMakeMeasureSpec4;
                        dVar.f30830g = false;
                        int measuredWidth2 = view.getMeasuredWidth();
                        measuredHeight2 = view.getMeasuredHeight();
                        iMin = measuredWidth2;
                        baseline = view.getBaseline();
                        i13 = -1;
                    } else {
                        baseline = baseline2;
                        i13 = -1;
                    }
                }
                if (baseline != i13) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                if (iMin == bVar.f31117c || measuredHeight2 != bVar.f31118d) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                bVar.f31123i = z14;
                if (eVar2.f31511c0) {
                    z15 = true;
                } else {
                    z15 = z13;
                }
                if (z15 && baseline != -1 && dVar.f30817Z != baseline) {
                    bVar.f31123i = true;
                }
                bVar.f31119e = iMin;
                bVar.f31120f = measuredHeight2;
                bVar.f31122h = z15;
                bVar.f31121g = baseline;
            }
            iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f31553f, i22, -2);
        }
        iMakeMeasureSpec2 = iMakeMeasureSpec;
        iB = h.b(i18);
        if (iB != 0) {
            iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i20, 1073741824);
        } else if (iB != 1) {
            iMakeMeasureSpec3 = ViewGroup.getChildMeasureSpec(this.f31554g, i21, -2);
        } else if (iB != 2) {
            iMakeMeasureSpec3 = ViewGroup.getChildMeasureSpec(this.f31554g, i21, -2);
            if (dVar.f30851s == 1) {
                z16 = true;
            } else {
                z16 = false;
            }
            i14 = bVar.f31124j;
            if (i14 != 1) {
                i15 = 2;
                if (i14 == 2) {
                }
            } else {
                i15 = 2;
            }
            if (view.getMeasuredWidth() == dVar.o()) {
                z17 = true;
            } else {
                z17 = false;
            }
            if (bVar.f31124j != i15) {
                iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(dVar.i(), 1073741824);
            } else {
                iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(dVar.i(), 1073741824);
            }
        } else if (iB != 3) {
            iMakeMeasureSpec3 = 0;
        } else {
            int i27 = this.f31554g;
            if (cVar2 != null) {
                i16 = dVar.f30800I.f30789g;
            } else {
                i16 = 0;
            }
            if (cVar != null) {
                i16 += dVar.f30802K.f30789g;
            }
            iMakeMeasureSpec3 = ViewGroup.getChildMeasureSpec(i27, i21 + i16, -1);
        }
        eVar = (e) dVar.f30810S;
        if (eVar == null) {
        }
        if (i17 == 3) {
            z7 = true;
        } else {
            z7 = false;
        }
        if (i18 == 3) {
            z8 = true;
        } else {
            z8 = false;
        }
        if (i18 != 4) {
            z9 = true;
        } else {
            z9 = true;
        }
        if (i17 != 4) {
            z10 = true;
        } else {
            z10 = true;
        }
        if (z7) {
            z11 = false;
        } else {
            z11 = false;
        }
        if (z8) {
            z12 = false;
        } else {
            z12 = false;
        }
        if (view == null) {
            return;
        }
        eVar2 = (e) view.getLayoutParams();
        i8 = bVar.f31124j;
        if (i8 == 1) {
            view.measure(iMakeMeasureSpec2, iMakeMeasureSpec3);
            dVar.f30797F = iMakeMeasureSpec2;
            dVar.f30798G = iMakeMeasureSpec3;
            dVar.f30830g = false;
            measuredWidth = view.getMeasuredWidth();
            measuredHeight = view.getMeasuredHeight();
            int baseline3 = view.getBaseline();
            i9 = dVar.f30853u;
            if (i9 > 0) {
                iMin = Math.max(i9, measuredWidth);
            } else {
                iMin = measuredWidth;
            }
            i10 = dVar.f30854v;
            if (i10 > 0) {
                iMin = Math.min(i10, iMin);
            }
            i11 = dVar.f30856x;
            if (i11 > 0) {
                measuredHeight2 = Math.max(i11, measuredHeight);
            } else {
                measuredHeight2 = measuredHeight;
            }
            i12 = dVar.f30857y;
            if (i12 > 0) {
                measuredHeight2 = Math.min(i12, measuredHeight2);
            }
            if (!i.b(constraintLayout.f8958O, 1)) {
                if (!z11) {
                    if (z12) {
                        measuredHeight2 = (int) ((iMin / dVar.f30813V) + 0.5f);
                    }
                } else if (z12) {
                    measuredHeight2 = (int) ((iMin / dVar.f30813V) + 0.5f);
                }
            }
            if (measuredWidth == iMin) {
                if (measuredWidth != iMin) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                }
                if (measuredHeight != measuredHeight2) {
                    iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824);
                } else {
                    iMakeMeasureSpec4 = iMakeMeasureSpec3;
                }
                view.measure(iMakeMeasureSpec2, iMakeMeasureSpec4);
                dVar.f30797F = iMakeMeasureSpec2;
                dVar.f30798G = iMakeMeasureSpec4;
                dVar.f30830g = false;
                int measuredWidth3 = view.getMeasuredWidth();
                measuredHeight2 = view.getMeasuredHeight();
                iMin = measuredWidth3;
                baseline = view.getBaseline();
                i13 = -1;
            } else {
                if (measuredWidth != iMin) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                }
                if (measuredHeight != measuredHeight2) {
                    iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824);
                } else {
                    iMakeMeasureSpec4 = iMakeMeasureSpec3;
                }
                view.measure(iMakeMeasureSpec2, iMakeMeasureSpec4);
                dVar.f30797F = iMakeMeasureSpec2;
                dVar.f30798G = iMakeMeasureSpec4;
                dVar.f30830g = false;
                int measuredWidth4 = view.getMeasuredWidth();
                measuredHeight2 = view.getMeasuredHeight();
                iMin = measuredWidth4;
                baseline = view.getBaseline();
                i13 = -1;
            }
        } else {
            view.measure(iMakeMeasureSpec2, iMakeMeasureSpec3);
            dVar.f30797F = iMakeMeasureSpec2;
            dVar.f30798G = iMakeMeasureSpec3;
            dVar.f30830g = false;
            measuredWidth = view.getMeasuredWidth();
            measuredHeight = view.getMeasuredHeight();
            int baseline4 = view.getBaseline();
            i9 = dVar.f30853u;
            if (i9 > 0) {
                iMin = Math.max(i9, measuredWidth);
            } else {
                iMin = measuredWidth;
            }
            i10 = dVar.f30854v;
            if (i10 > 0) {
                iMin = Math.min(i10, iMin);
            }
            i11 = dVar.f30856x;
            if (i11 > 0) {
                measuredHeight2 = Math.max(i11, measuredHeight);
            } else {
                measuredHeight2 = measuredHeight;
            }
            i12 = dVar.f30857y;
            if (i12 > 0) {
                measuredHeight2 = Math.min(i12, measuredHeight2);
            }
            if (!i.b(constraintLayout.f8958O, 1)) {
                if (!z11) {
                    if (z12) {
                        measuredHeight2 = (int) ((iMin / dVar.f30813V) + 0.5f);
                    }
                } else if (z12) {
                    measuredHeight2 = (int) ((iMin / dVar.f30813V) + 0.5f);
                }
            }
            if (measuredWidth == iMin) {
                if (measuredWidth != iMin) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                }
                if (measuredHeight != measuredHeight2) {
                    iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824);
                } else {
                    iMakeMeasureSpec4 = iMakeMeasureSpec3;
                }
                view.measure(iMakeMeasureSpec2, iMakeMeasureSpec4);
                dVar.f30797F = iMakeMeasureSpec2;
                dVar.f30798G = iMakeMeasureSpec4;
                dVar.f30830g = false;
                int measuredWidth5 = view.getMeasuredWidth();
                measuredHeight2 = view.getMeasuredHeight();
                iMin = measuredWidth5;
                baseline = view.getBaseline();
                i13 = -1;
            } else {
                if (measuredWidth != iMin) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                }
                if (measuredHeight != measuredHeight2) {
                    iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824);
                } else {
                    iMakeMeasureSpec4 = iMakeMeasureSpec3;
                }
                view.measure(iMakeMeasureSpec2, iMakeMeasureSpec4);
                dVar.f30797F = iMakeMeasureSpec2;
                dVar.f30798G = iMakeMeasureSpec4;
                dVar.f30830g = false;
                int measuredWidth6 = view.getMeasuredWidth();
                measuredHeight2 = view.getMeasuredHeight();
                iMin = measuredWidth6;
                baseline = view.getBaseline();
                i13 = -1;
            }
        }
        if (baseline != i13) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (iMin == bVar.f31117c) {
            z14 = true;
        } else {
            z14 = true;
        }
        bVar.f31123i = z14;
        if (eVar2.f31511c0) {
            z15 = true;
        } else {
            z15 = z13;
        }
        if (z15) {
            bVar.f31123i = true;
        }
        bVar.f31119e = iMin;
        bVar.f31120f = measuredHeight2;
        bVar.f31122h = z15;
        bVar.f31121g = baseline;
    }
}
