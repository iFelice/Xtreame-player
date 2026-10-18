package androidx.leanback.widget;

import K3.C0234g;
import O1.AbstractC0326z;
import O1.C0323w;
import O1.C0325y;
import O1.c0;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.FocusFinder;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.leanback.widget.picker.DatePicker;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.ads.CO;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: renamed from: androidx.leanback.widget.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0491q extends O1.L {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final Rect f9336e0 = new Rect();

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final int[] f9337f0 = new int[2];

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public AbstractC0487m f9341D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public C0489o f9342E;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f9344G;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f9346I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f9347J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f9348K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int[] f9349L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f9350M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f9351N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f9352O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f9353P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f9354Q;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f9356S;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public AbstractC0485k f9358U;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public int f9362Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public int f9363Z;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final AbstractC0480f f9369q;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public O1.Y f9372t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f9373u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f9374v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int[] f9376x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public p142s1.g f9377y;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f9368p = 10;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f9370r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public C0325y f9371s = new C0325y(this, 0);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final SparseIntArray f9375w = new SparseIntArray();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f9378z = 221696;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public ArrayList f9338A = null;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public int f9339B = -1;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public int f9340C = 0;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public int f9343F = 0;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f9355R = 8388659;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f9357T = 1;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f9359V = 0;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final p086l.D f9360W = new p086l.D(2);

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final p086l.D f9361X = new p086l.D(1);

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int[] f9364a0 = new int[2];

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final V.b f9365b0 = new V.b(1);

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final p000a.f f9366c0 = new p000a.f(this, 10);

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final p039f.S f9367d0 = new p039f.S(this, 20);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f9345H = -1;

    public C0491q(AbstractC0480f abstractC0480f) {
        this.f9369q = abstractC0480f;
        if (this.f5287i) {
            this.f5287i = false;
            this.f5288j = 0;
            RecyclerView recyclerView = this.f5280b;
            if (recyclerView != null) {
                recyclerView.f9624I.n();
            }
        }
    }

    public static int X0(View view) {
        C0488n c0488n;
        if (view == null || (c0488n = (C0488n) view.getLayoutParams()) == null || c0488n.f5294a.j()) {
            return -1;
        }
        return c0488n.f5294a.c();
    }

    public static int Y0(View view) {
        C0488n c0488n = (C0488n) view.getLayoutParams();
        return O1.L.D(view) + ((ViewGroup.MarginLayoutParams) c0488n).topMargin + ((ViewGroup.MarginLayoutParams) c0488n).bottomMargin;
    }

    public static int Z0(View view) {
        C0488n c0488n = (C0488n) view.getLayoutParams();
        return O1.L.E(view) + ((ViewGroup.MarginLayoutParams) c0488n).leftMargin + ((ViewGroup.MarginLayoutParams) c0488n).rightMargin;
    }

    @Override // O1.L
    public final int A(View view) {
        return super.A(view) - ((C0488n) view.getLayoutParams()).f9314h;
    }

    public final void A1(View view) {
        C0488n c0488n = (C0488n) view.getLayoutParams();
        c0488n.getClass();
        p086l.D d6 = this.f9361X;
        C0494u c0494u = (C0494u) d6.f26083d;
        c0488n.f9315i = AbstractC0495v.a(view, c0494u, c0494u.f9383e);
        C0494u c0494u2 = (C0494u) d6.f26082c;
        c0488n.f9316j = AbstractC0495v.a(view, c0494u2, c0494u2.f9383e);
    }

    @Override // O1.L
    public final void B(Rect rect, View view) {
        RecyclerView.M(rect, view);
        C0488n c0488n = (C0488n) view.getLayoutParams();
        rect.left += c0488n.f9311e;
        rect.top += c0488n.f9312f;
        rect.right -= c0488n.f9313g;
        rect.bottom -= c0488n.f9314h;
    }

    @Override // O1.L
    public final boolean B0(RecyclerView recyclerView, View view, Rect rect, boolean z7) {
        return false;
    }

    public final void B1() {
        if (x() <= 0) {
            this.f9373u = 0;
        } else {
            this.f9373u = this.f9358U.f9304f - ((C0488n) w(0).getLayoutParams()).f5294a.d();
        }
    }

    @Override // O1.L
    public final int C(View view) {
        return super.C(view) + ((C0488n) view.getLayoutParams()).f9311e;
    }

    public final void C1() {
        int i8 = (this.f9378z & (-1025)) | (n1(false) ? 1024 : 0);
        this.f9378z = i8;
        if ((i8 & 1024) != 0) {
            WeakHashMap weakHashMap = N.N.f4843a;
            this.f9369q.postOnAnimation(this.f9366c0);
        }
    }

    public final void D1() {
        int i8;
        int i9;
        int iB;
        int i10;
        int i11;
        int i12;
        int top;
        int i13;
        int top2;
        int i14;
        if (this.f9372t.b() == 0) {
            return;
        }
        if ((this.f9378z & 262144) == 0) {
            i10 = this.f9358U.f9305g;
            int iB2 = this.f9372t.b() - 1;
            i8 = this.f9358U.f9304f;
            i9 = iB2;
            iB = 0;
        } else {
            AbstractC0485k abstractC0485k = this.f9358U;
            int i15 = abstractC0485k.f9304f;
            i8 = abstractC0485k.f9305g;
            i9 = 0;
            iB = this.f9372t.b() - 1;
            i10 = i15;
        }
        if (i10 < 0 || i8 < 0) {
            return;
        }
        boolean z7 = i10 == i9;
        boolean z8 = i8 == iB;
        int iH = Integer.MIN_VALUE;
        int iF = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        p086l.D d6 = this.f9360W;
        if (!z7) {
            Object obj = d6.f26084e;
            if (((Y) obj).f9278a == Integer.MAX_VALUE && !z8 && ((Y) obj).f9279b == Integer.MIN_VALUE) {
                return;
            }
        }
        int[] iArr = f9337f0;
        if (z7) {
            iF = this.f9358U.f(true, iArr);
            View viewS = s(iArr[1]);
            if (this.f9370r == 0) {
                C0488n c0488n = (C0488n) viewS.getLayoutParams();
                c0488n.getClass();
                top2 = viewS.getLeft() + c0488n.f9311e;
                i14 = c0488n.f9315i;
            } else {
                C0488n c0488n2 = (C0488n) viewS.getLayoutParams();
                c0488n2.getClass();
                top2 = viewS.getTop() + c0488n2.f9312f;
                i14 = c0488n2.f9316j;
            }
            i11 = top2 + i14;
            ((C0488n) viewS.getLayoutParams()).getClass();
        } else {
            i11 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        }
        if (z8) {
            iH = this.f9358U.h(false, iArr);
            View viewS2 = s(iArr[1]);
            if (this.f9370r == 0) {
                C0488n c0488n3 = (C0488n) viewS2.getLayoutParams();
                c0488n3.getClass();
                top = viewS2.getLeft() + c0488n3.f9311e;
                i13 = c0488n3.f9315i;
            } else {
                C0488n c0488n4 = (C0488n) viewS2.getLayoutParams();
                c0488n4.getClass();
                top = viewS2.getTop() + c0488n4.f9312f;
                i13 = c0488n4.f9316j;
            }
            i12 = top + i13;
        } else {
            i12 = Integer.MIN_VALUE;
        }
        ((Y) d6.f26084e).c(iH, iF, i12, i11);
    }

    public final void E1() {
        Y y7 = (Y) this.f9360W.f26085f;
        int i8 = y7.f9287j - this.f9346I;
        int iE1 = e1() + i8;
        y7.c(i8, iE1, i8, iE1);
    }

    @Override // O1.L
    public final int F(View view) {
        return super.F(view) - ((C0488n) view.getLayoutParams()).f9313g;
    }

    @Override // O1.L
    public final int F0(int i8, p142s1.g gVar, O1.Y y7) {
        if ((this.f9378z & IMediaList.Event.ItemAdded) == 0 || this.f9358U == null) {
            return 0;
        }
        r1(gVar, y7);
        this.f9378z = (this.f9378z & (-4)) | 2;
        int iS1 = this.f9370r == 0 ? s1(i8) : t1(i8);
        j1();
        this.f9378z &= -4;
        return iS1;
    }

    @Override // O1.L
    public final int G(View view) {
        return super.G(view) + ((C0488n) view.getLayoutParams()).f9312f;
    }

    @Override // O1.L
    public final void G0(int i8) {
        y1(i8, false);
    }

    @Override // O1.L
    public final int H0(int i8, p142s1.g gVar, O1.Y y7) {
        int i9 = this.f9378z;
        if ((i9 & IMediaList.Event.ItemAdded) == 0 || this.f9358U == null) {
            return 0;
        }
        this.f9378z = (i9 & (-4)) | 2;
        r1(gVar, y7);
        int iS1 = this.f9370r == 1 ? s1(i8) : t1(i8);
        j1();
        this.f9378z &= -4;
        return iS1;
    }

    @Override // O1.L
    public final int O(p142s1.g gVar, O1.Y y7) {
        AbstractC0485k abstractC0485k;
        return (this.f9370r != 0 || (abstractC0485k = this.f9358U) == null) ? super.O(gVar, y7) : abstractC0485k.f9303e;
    }

    @Override // O1.L
    public final void Q0(RecyclerView recyclerView, int i8) {
        y1(i8, true);
    }

    @Override // O1.L
    public final void R0(C0323w c0323w) {
        AbstractC0487m abstractC0487m = this.f9341D;
        if (abstractC0487m != null) {
            abstractC0487m.f9309q = true;
        }
        super.R0(c0323w);
        if (!c0323w.f5541e || !(c0323w instanceof AbstractC0487m)) {
            this.f9341D = null;
            this.f9342E = null;
            return;
        }
        AbstractC0487m abstractC0487m2 = (AbstractC0487m) c0323w;
        this.f9341D = abstractC0487m2;
        if (abstractC0487m2 instanceof C0489o) {
            this.f9342E = (C0489o) abstractC0487m2;
        } else {
            this.f9342E = null;
        }
    }

    @Override // O1.L
    public final boolean S0() {
        return true;
    }

    public final void T0() {
        this.f9358U.b((this.f9378z & 262144) != 0 ? (-this.f9363Z) - this.f9374v : this.f9362Y + this.f9363Z + this.f9374v, false);
    }

    public final void U0() {
        ArrayList arrayList = this.f9338A;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        int i8 = this.f9339B;
        View viewS = i8 == -1 ? null : s(i8);
        AbstractC0480f abstractC0480f = this.f9369q;
        if (viewS != null) {
            W0(abstractC0480f, abstractC0480f.K(viewS), this.f9339B);
        } else {
            W0(abstractC0480f, null, -1);
        }
        if ((this.f9378z & 3) == 1 || abstractC0480f.isLayoutRequested()) {
            return;
        }
        int iX = x();
        for (int i9 = 0; i9 < iX; i9++) {
            if (w(i9).isLayoutRequested()) {
                WeakHashMap weakHashMap = N.N.f4843a;
                abstractC0480f.postOnAnimation(this.f9366c0);
                return;
            }
        }
    }

    public final void V0() {
        ArrayList arrayList = this.f9338A;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        int i8 = this.f9339B;
        View viewS = i8 == -1 ? null : s(i8);
        if (viewS == null) {
            ArrayList arrayList2 = this.f9338A;
            if (arrayList2 == null) {
                return;
            }
            for (int size = arrayList2.size() - 1; size >= 0; size--) {
                ((z) this.f9338A.get(size)).getClass();
            }
            return;
        }
        this.f9369q.K(viewS);
        ArrayList arrayList3 = this.f9338A;
        if (arrayList3 == null) {
            return;
        }
        for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
            ((z) this.f9338A.get(size2)).getClass();
        }
    }

    public final void W0(AbstractC0480f abstractC0480f, c0 c0Var, int i8) {
        ArrayList arrayList = this.f9338A;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            p017c0.b bVar = (p017c0.b) ((z) this.f9338A.get(size));
            bVar.getClass();
            p017c0.e eVar = bVar.f10565a;
            int iIndexOf = eVar.f10574I.indexOf(abstractC0480f);
            eVar.d(iIndexOf);
            if (c0Var != null) {
                int i9 = ((p017c0.f) eVar.f10575J.get(iIndexOf)).f10589b + i8;
                DatePicker datePicker = (DatePicker) eVar;
                datePicker.f9335l0.setTimeInMillis(datePicker.f9334k0.getTimeInMillis());
                ArrayList arrayList2 = datePicker.f10575J;
                int i10 = (arrayList2 == null ? null : (p017c0.f) arrayList2.get(iIndexOf)).f10588a;
                if (iIndexOf == datePicker.f9328e0) {
                    datePicker.f9335l0.add(5, i9 - i10);
                } else if (iIndexOf == datePicker.f9327d0) {
                    datePicker.f9335l0.add(2, i9 - i10);
                } else {
                    if (iIndexOf != datePicker.f9329f0) {
                        throw new IllegalArgumentException();
                    }
                    datePicker.f9335l0.add(1, i9 - i10);
                }
                datePicker.f9334k0.set(datePicker.f9335l0.get(1), datePicker.f9335l0.get(2), datePicker.f9335l0.get(5));
                if (datePicker.f9334k0.before(datePicker.f9332i0)) {
                    datePicker.f9334k0.setTimeInMillis(datePicker.f9332i0.getTimeInMillis());
                } else if (datePicker.f9334k0.after(datePicker.f9333j0)) {
                    datePicker.f9334k0.setTimeInMillis(datePicker.f9333j0.getTimeInMillis());
                }
                datePicker.post(new p017c0.a(0, datePicker, 0 == true ? 1 : 0));
            }
        }
    }

    @Override // O1.L
    public final void Y(O1.C c8) {
        if (c8 != null) {
            this.f9358U = null;
            this.f9349L = null;
            this.f9378z &= -1025;
            this.f9339B = -1;
            this.f9343F = 0;
            this.f9365b0.e();
        }
    }

    /* JADX WARN: Code duplicated, block: B:63:0x00b2  */
    @Override // O1.L
    public final boolean Z(RecyclerView recyclerView, ArrayList arrayList, int i8, int i9) {
        int i10;
        View viewW;
        int i11;
        View viewR;
        if ((this.f9378z & 32768) != 0) {
            return true;
        }
        if (!recyclerView.hasFocus()) {
            int size = arrayList.size();
            if (this.f9359V != 0) {
                Y y7 = (Y) this.f9360W.f26084e;
                int i12 = y7.f9287j;
                int i13 = ((y7.f9286i - i12) - y7.f9288k) + i12;
                int iX = x();
                for (int i14 = 0; i14 < iX; i14++) {
                    View viewW2 = w(i14);
                    if (viewW2.getVisibility() == 0 && this.f9371s.d(viewW2) >= i12 && this.f9371s.b(viewW2) <= i13) {
                        viewW2.addFocusables(arrayList, i8, i9);
                    }
                }
                if (arrayList.size() == size) {
                    int iX2 = x();
                    for (int i15 = 0; i15 < iX2; i15++) {
                        View viewW3 = w(i15);
                        if (viewW3.getVisibility() == 0) {
                            viewW3.addFocusables(arrayList, i8, i9);
                        }
                    }
                }
            } else {
                View viewS = s(this.f9339B);
                if (viewS != null) {
                    viewS.addFocusables(arrayList, i8, i9);
                }
            }
            if (arrayList.size() == size && recyclerView.isFocusable()) {
                arrayList.add(recyclerView);
            }
        } else {
            if (this.f9342E != null) {
                return true;
            }
            int iA1 = a1(i8);
            View viewFindFocus = recyclerView.findFocus();
            AbstractC0480f abstractC0480f = this.f9369q;
            if (abstractC0480f == null || viewFindFocus == abstractC0480f || (viewR = r(viewFindFocus)) == null) {
                i10 = -1;
                break;
            }
            int iX3 = x();
            i10 = 0;
            while (true) {
                if (i10 >= iX3) {
                    i10 = -1;
                    break;
                }
                if (w(i10) == viewR) {
                    break;
                }
                i10++;
            }
            int iX0 = X0(w(i10));
            View viewS2 = iX0 == -1 ? null : s(iX0);
            if (viewS2 != null) {
                viewS2.addFocusables(arrayList, i8, i9);
            }
            if (this.f9358U == null || x() == 0) {
                return true;
            }
            if ((iA1 == 3 || iA1 == 2) && this.f9358U.f9303e <= 1) {
                return true;
            }
            AbstractC0485k abstractC0485k = this.f9358U;
            int i16 = (abstractC0485k == null || viewS2 == null) ? -1 : abstractC0485k.k(iX0).f9298H;
            int size2 = arrayList.size();
            int i17 = (iA1 == 1 || iA1 == 3) ? 1 : -1;
            int iX4 = i17 > 0 ? x() - 1 : 0;
            int iX5 = i10 == -1 ? i17 > 0 ? 0 : x() - 1 : i10 + i17;
            while (true) {
                if (i17 <= 0) {
                    if (iX5 < iX4) {
                        break;
                    }
                    viewW = w(iX5);
                    if (viewW.getVisibility() != 0) {
                    }
                    iX5 += i17;
                } else {
                    if (iX5 > iX4) {
                        break;
                    }
                    viewW = w(iX5);
                    if (viewW.getVisibility() != 0 && viewW.hasFocusable()) {
                        if (viewS2 == null) {
                            viewW.addFocusables(arrayList, i8, i9);
                            if (arrayList.size() > size2) {
                                break;
                            }
                        } else {
                            int iX1 = X0(w(iX5));
                            C0484j c0484jK = this.f9358U.k(iX1);
                            if (c0484jK != null) {
                                if (iA1 == 1) {
                                    if (c0484jK.f9298H == i16 && iX1 > iX0) {
                                        viewW.addFocusables(arrayList, i8, i9);
                                        if (arrayList.size() > size2) {
                                            break;
                                        }
                                    }
                                } else if (iA1 == 0) {
                                    if (c0484jK.f9298H == i16 && iX1 < iX0) {
                                        viewW.addFocusables(arrayList, i8, i9);
                                        if (arrayList.size() > size2) {
                                            break;
                                        }
                                    }
                                } else if (iA1 == 3) {
                                    int i18 = c0484jK.f9298H;
                                    if (i18 != i16) {
                                        if (i18 < i16) {
                                            break;
                                        }
                                        viewW.addFocusables(arrayList, i8, i9);
                                    }
                                } else if (iA1 == 2 && (i11 = c0484jK.f9298H) != i16) {
                                    if (i11 > i16) {
                                        break;
                                    }
                                    viewW.addFocusables(arrayList, i8, i9);
                                }
                            }
                        }
                    }
                    iX5 += i17;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001d  */
    /* JADX WARN: Code duplicated, block: B:13:0x0024  */
    /* JADX WARN: Code duplicated, block: B:14:0x0026  */
    public final int a1(int i8) {
        int i9 = this.f9370r;
        int i10 = 2;
        if (i9 != 0) {
            if (i9 == 1) {
                if (i8 != 17) {
                    if (i8 == 33) {
                        return 0;
                    }
                    if (i8 != 66) {
                        if (i8 == 130) {
                            return 1;
                        }
                    } else if ((this.f9378z & 524288) == 0) {
                        i10 = 3;
                    }
                } else if ((this.f9378z & 524288) != 0) {
                    i10 = 3;
                }
            }
            return 17;
        }
        if (i8 != 17) {
            if (i8 != 33) {
                if (i8 != 66) {
                    if (i8 != 130) {
                        i10 = 17;
                    } else {
                        i10 = 3;
                    }
                } else if ((this.f9378z & 262144) == 0) {
                    i10 = 1;
                } else {
                    i10 = 0;
                }
            }
        } else if ((this.f9378z & 262144) == 0) {
            i10 = 0;
        } else {
            i10 = 1;
        }
        return i10;
    }

    public final int b1(int i8) {
        int i9 = this.f9348K;
        if (i9 != 0) {
            return i9;
        }
        int[] iArr = this.f9349L;
        if (iArr == null) {
            return 0;
        }
        return iArr[i8];
    }

    public final int c1(int i8) {
        int iB1 = 0;
        if ((this.f9378z & 524288) != 0) {
            for (int i9 = this.f9356S - 1; i9 > i8; i9--) {
                iB1 += b1(i9) + this.f9354Q;
            }
            return iB1;
        }
        int iB2 = 0;
        while (iB1 < i8) {
            iB2 += b1(iB1) + this.f9354Q;
            iB1++;
        }
        return iB2;
    }

    @Override // O1.L
    public final void d0(p142s1.g gVar, O1.Y y7, O.f fVar) {
        r1(gVar, y7);
        int iB = y7.b();
        boolean z7 = (this.f9378z & 262144) != 0;
        if (iB > 1 && !h1(0)) {
            if (Build.VERSION.SDK_INT < 23) {
                fVar.a(8192);
            } else if (this.f9370r == 0) {
                fVar.b(z7 ? O.d.f5014i : O.d.f5012g);
            } else {
                fVar.b(O.d.f5011f);
            }
            fVar.h(true);
        }
        if (iB > 1 && !h1(iB - 1)) {
            if (Build.VERSION.SDK_INT < 23) {
                fVar.a(4096);
            } else if (this.f9370r == 0) {
                fVar.b(z7 ? O.d.f5012g : O.d.f5014i);
            } else {
                fVar.b(O.d.f5013h);
            }
            fVar.h(true);
        }
        fVar.f5019a.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(O(gVar, y7), z(gVar, y7), false, 0));
        j1();
    }

    /* JADX WARN: Code duplicated, block: B:70:0x0158  */
    /* JADX WARN: Code duplicated, block: B:71:0x015a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x015c  */
    /* JADX WARN: Code duplicated, block: B:75:0x0161  */
    /* JADX WARN: Code duplicated, block: B:77:0x0175  */
    public final boolean d1(View view, View view2, int[] iArr) {
        View viewS;
        int i8;
        int iB;
        int left;
        int i9;
        int iB2;
        int top;
        int i10;
        int left2;
        int i11;
        int i12 = this.f9359V;
        p086l.D d6 = this.f9360W;
        if (i12 != 1 && i12 != 2) {
            Y y7 = (Y) d6.f26084e;
            if (this.f9370r == 0) {
                C0488n c0488n = (C0488n) view.getLayoutParams();
                c0488n.getClass();
                top = view.getLeft() + c0488n.f9311e;
                i10 = c0488n.f9315i;
            } else {
                C0488n c0488n2 = (C0488n) view.getLayoutParams();
                c0488n2.getClass();
                top = view.getTop() + c0488n2.f9312f;
                i10 = c0488n2.f9316j;
            }
            int iB3 = y7.b(top + i10);
            if (view2 != null) {
                ((C0488n) view.getLayoutParams()).getClass();
            }
            if (this.f9370r == 0) {
                C0488n c0488n3 = (C0488n) view.getLayoutParams();
                c0488n3.getClass();
                left2 = view.getTop() + c0488n3.f9312f;
                i11 = c0488n3.f9316j;
            } else {
                C0488n c0488n4 = (C0488n) view.getLayoutParams();
                c0488n4.getClass();
                left2 = view.getLeft() + c0488n4.f9311e;
                i11 = c0488n4.f9315i;
            }
            int iB4 = ((Y) d6.f26085f).b(left2 + i11);
            int i13 = iB3 + this.f9344G;
            if (i13 == 0 && iB4 == 0) {
                iArr[0] = 0;
                iArr[1] = 0;
                return false;
            }
            iArr[0] = i13;
            iArr[1] = iB4;
            return true;
        }
        int iX0 = X0(view);
        int iD = this.f9371s.d(view);
        int iB5 = this.f9371s.b(view);
        Y y8 = (Y) d6.f26084e;
        int i14 = y8.f9287j;
        int i15 = (y8.f9286i - i14) - y8.f9288k;
        C0484j c0484jK = this.f9358U.k(iX0);
        int i16 = c0484jK == null ? -1 : c0484jK.f9298H;
        View viewS2 = null;
        if (iD < i14) {
            if (this.f9359V == 2) {
                View view3 = view;
                while (true) {
                    AbstractC0485k abstractC0485k = this.f9358U;
                    if (!abstractC0485k.m(abstractC0485k.f9301c ? Integer.MIN_VALUE : com.google.android.gms.common.api.d.API_PRIORITY_OTHER, true)) {
                        viewS = null;
                        viewS2 = view3;
                        break;
                    }
                    AbstractC0485k abstractC0485k2 = this.f9358U;
                    p132r.h hVar = abstractC0485k2.j(abstractC0485k2.f9304f, iX0)[i16];
                    View viewS3 = s(hVar.d(0));
                    if (iB5 - this.f9371s.d(viewS3) > i15) {
                        if (hVar.h() <= 2) {
                            viewS = null;
                            viewS2 = viewS3;
                            break;
                        }
                        viewS = null;
                        viewS2 = s(hVar.d(2));
                        break;
                    }
                    view3 = viewS3;
                }
            } else {
                viewS = null;
                viewS2 = view;
            }
        } else if (iB5 <= i15 + i14) {
            viewS = null;
        } else if (this.f9359V == 2) {
            do {
                AbstractC0485k abstractC0485k3 = this.f9358U;
                p132r.h hVar2 = abstractC0485k3.j(iX0, abstractC0485k3.f9305g)[i16];
                viewS = s(hVar2.d(hVar2.h() - 1));
                if (this.f9371s.b(viewS) - iD > i15) {
                    viewS = null;
                    break;
                }
            } while (this.f9358U.a());
            if (viewS == null) {
                viewS2 = view;
            }
        } else {
            viewS = view;
        }
        if (viewS2 == null) {
            if (viewS != null) {
                iB = this.f9371s.b(viewS);
                i14 += i15;
            } else {
                i8 = 0;
            }
            if (viewS2 != null) {
                view = viewS2;
            } else if (viewS != null) {
                view = viewS;
            }
            if (this.f9370r == 0) {
                C0488n c0488n5 = (C0488n) view.getLayoutParams();
                c0488n5.getClass();
                left = view.getTop() + c0488n5.f9312f;
                i9 = c0488n5.f9316j;
            } else {
                C0488n c0488n6 = (C0488n) view.getLayoutParams();
                c0488n6.getClass();
                left = view.getLeft() + c0488n6.f9311e;
                i9 = c0488n6.f9315i;
            }
            iB2 = ((Y) d6.f26085f).b(left + i9);
            if (i8 != 0 && iB2 == 0) {
                return false;
            }
            iArr[0] = i8;
            iArr[1] = iB2;
            return true;
        }
        iB = this.f9371s.d(viewS2);
        i8 = iB - i14;
        if (viewS2 != null) {
            view = viewS2;
        } else if (viewS != null) {
            view = viewS;
        }
        if (this.f9370r == 0) {
            C0488n c0488n7 = (C0488n) view.getLayoutParams();
            c0488n7.getClass();
            left = view.getTop() + c0488n7.f9312f;
            i9 = c0488n7.f9316j;
        } else {
            C0488n c0488n8 = (C0488n) view.getLayoutParams();
            c0488n8.getClass();
            left = view.getLeft() + c0488n8.f9311e;
            i9 = c0488n8.f9315i;
        }
        iB2 = ((Y) d6.f26085f).b(left + i9);
        if (i8 != 0) {
        }
        iArr[0] = i8;
        iArr[1] = iB2;
        return true;
    }

    @Override // O1.L
    public final boolean e() {
        return this.f9370r == 0 || this.f9356S > 1;
    }

    public final int e1() {
        int i8 = (this.f9378z & 524288) != 0 ? 0 : this.f9356S - 1;
        return b1(i8) + c1(i8);
    }

    @Override // O1.L
    public final boolean f() {
        return this.f9370r == 1 || this.f9356S > 1;
    }

    @Override // O1.L
    public final void f0(p142s1.g gVar, O1.Y y7, View view, O.f fVar) {
        C0484j c0484jK;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (this.f9358U == null || !(layoutParams instanceof C0488n)) {
            return;
        }
        int iC = ((C0488n) layoutParams).f5294a.c();
        int i8 = -1;
        if (iC >= 0 && (c0484jK = this.f9358U.k(iC)) != null) {
            i8 = c0484jK.f9298H;
        }
        if (i8 < 0) {
            return;
        }
        int i9 = iC / this.f9358U.f9303e;
        if (this.f9370r == 0) {
            fVar.g(C0234g.a(i8, 1, i9, 1));
        } else {
            fVar.g(C0234g.a(i9, 1, i8, 1));
        }
    }

    public final boolean f1() {
        return H() == 0 || this.f9369q.H(0) != null;
    }

    @Override // O1.L
    public final View g0(View view, int i8) {
        View viewFindNextFocus;
        View viewFindNextFocus2;
        if ((this.f9378z & 32768) != 0) {
            return view;
        }
        FocusFinder focusFinder = FocusFinder.getInstance();
        AbstractC0480f abstractC0480f = this.f9369q;
        if (i8 == 2 || i8 == 1) {
            if (f()) {
                viewFindNextFocus = focusFinder.findNextFocus(abstractC0480f, view, i8 == 2 ? 130 : 33);
            } else {
                viewFindNextFocus = null;
            }
            if (e()) {
                viewFindNextFocus2 = focusFinder.findNextFocus(abstractC0480f, view, (this.f5280b.getLayoutDirection() == 1) ^ (i8 == 2) ? 66 : 17);
            } else {
                viewFindNextFocus2 = viewFindNextFocus;
            }
        } else {
            viewFindNextFocus2 = focusFinder.findNextFocus(abstractC0480f, view, i8);
        }
        if (viewFindNextFocus2 != null) {
            return viewFindNextFocus2;
        }
        if (abstractC0480f.getDescendantFocusability() == 393216) {
            return abstractC0480f.getParent().focusSearch(view, i8);
        }
        int iA1 = a1(i8);
        boolean z7 = abstractC0480f.getScrollState() != 0;
        if (iA1 == 1) {
            if (z7 || (this.f9378z & 4096) == 0) {
                viewFindNextFocus2 = view;
            }
            if ((this.f9378z & 131072) != 0 && !g1()) {
                m1(true);
                viewFindNextFocus2 = view;
            }
        } else if (iA1 == 0) {
            if (z7 || (this.f9378z & 2048) == 0) {
                viewFindNextFocus2 = view;
            }
            if ((this.f9378z & 131072) != 0 && !f1()) {
                m1(false);
                viewFindNextFocus2 = view;
            }
        } else if (iA1 == 3) {
        }
        if (viewFindNextFocus2 != null) {
            return viewFindNextFocus2;
        }
        View viewFocusSearch = abstractC0480f.getParent().focusSearch(view, i8);
        if (viewFocusSearch != null) {
            return viewFocusSearch;
        }
        return view != null ? view : abstractC0480f;
    }

    public final boolean g1() {
        int iH = H();
        return iH == 0 || this.f9369q.H(iH - 1) != null;
    }

    @Override // O1.L
    public final void h0(int i8, int i9) {
        AbstractC0485k abstractC0485k;
        int i10;
        int i11 = this.f9339B;
        if (i11 != -1 && (abstractC0485k = this.f9358U) != null && abstractC0485k.f9304f >= 0 && (i10 = this.f9343F) != Integer.MIN_VALUE && i8 <= i11 + i10) {
            this.f9343F = i10 + i9;
        }
        this.f9365b0.e();
    }

    public final boolean h1(int i8) {
        AbstractC0480f abstractC0480f = this.f9369q;
        c0 c0VarH = abstractC0480f.H(i8);
        if (c0VarH == null) {
            return false;
        }
        View view = c0VarH.f5353G;
        return view.getLeft() >= 0 && view.getRight() <= abstractC0480f.getWidth() && view.getTop() >= 0 && view.getBottom() <= abstractC0480f.getHeight();
    }

    @Override // O1.L
    public final void i(int i8, int i9, O1.Y y7, p132r.h hVar) {
        try {
            r1(null, y7);
            if (this.f9370r != 0) {
                i8 = i9;
            }
            if (x() != 0 && i8 != 0) {
                this.f9358U.e(i8 < 0 ? -this.f9363Z : this.f9362Y + this.f9363Z, i8, hVar);
            }
        } finally {
            j1();
        }
    }

    @Override // O1.L
    public final void i0() {
        this.f9343F = 0;
        this.f9365b0.e();
    }

    public final void i1(View view, int i8, int i9, int i10, int i11) {
        int iB1;
        int i12;
        int iY0 = this.f9370r == 0 ? Y0(view) : Z0(view);
        int i13 = this.f9348K;
        if (i13 > 0) {
            iY0 = Math.min(iY0, i13);
        }
        int i14 = this.f9355R;
        int i15 = i14 & 112;
        int absoluteGravity = (this.f9378z & 786432) != 0 ? Gravity.getAbsoluteGravity(i14 & 8388615, 1) : i14 & 7;
        int i16 = this.f9370r;
        if ((i16 != 0 || i15 != 48) && (i16 != 1 || absoluteGravity != 3)) {
            if ((i16 == 0 && i15 == 80) || (i16 == 1 && absoluteGravity == 5)) {
                iB1 = b1(i8) - iY0;
            } else if ((i16 == 0 && i15 == 16) || (i16 == 1 && absoluteGravity == 1)) {
                iB1 = (b1(i8) - iY0) / 2;
            }
            i11 += iB1;
        }
        if (this.f9370r == 0) {
            i12 = iY0 + i11;
        } else {
            int i17 = iY0 + i11;
            int i18 = i11;
            i11 = i9;
            i9 = i18;
            i12 = i10;
            i10 = i17;
        }
        C0488n c0488n = (C0488n) view.getLayoutParams();
        O1.L.V(view, i9, i11, i10, i12);
        Rect rect = f9336e0;
        RecyclerView.M(rect, view);
        int i19 = i9 - rect.left;
        int i20 = i11 - rect.top;
        int i21 = rect.right - i10;
        int i22 = rect.bottom - i12;
        c0488n.f9311e = i19;
        c0488n.f9312f = i20;
        c0488n.f9313g = i21;
        c0488n.f9314h = i22;
        A1(view);
    }

    @Override // O1.L
    public final void j(int i8, p132r.h hVar) {
        int i9 = this.f9369q.f9296w1;
        if (i8 == 0 || i9 == 0) {
            return;
        }
        int iMax = Math.max(0, Math.min(this.f9339B - ((i9 - 1) / 2), i8 - i9));
        for (int i10 = iMax; i10 < i8 && i10 < iMax + i9; i10++) {
            hVar.b(i10, 0);
        }
    }

    @Override // O1.L
    public final void j0(int i8, int i9) {
        int i10;
        int i11 = this.f9339B;
        if (i11 != -1 && (i10 = this.f9343F) != Integer.MIN_VALUE) {
            int i12 = i11 + i10;
            if (i8 <= i12 && i12 < i8 + 1) {
                this.f9343F = (i9 - i8) + i10;
            } else if (i8 < i12 && i9 > i12 - 1) {
                this.f9343F = i10 - 1;
            } else if (i8 > i12 && i9 < i12) {
                this.f9343F = i10 + 1;
            }
        }
        this.f9365b0.e();
    }

    public final void j1() {
        this.f9377y = null;
        this.f9372t = null;
        this.f9373u = 0;
        this.f9374v = 0;
    }

    @Override // O1.L
    public final void k0(int i8, int i9) {
        AbstractC0485k abstractC0485k;
        int i10;
        int i11;
        int i12 = this.f9339B;
        if (i12 != -1 && (abstractC0485k = this.f9358U) != null && abstractC0485k.f9304f >= 0 && (i10 = this.f9343F) != Integer.MIN_VALUE && i8 <= (i11 = i12 + i10)) {
            if (i8 + i9 > i11) {
                this.f9339B = (i8 - i11) + i10 + i12;
                this.f9343F = Integer.MIN_VALUE;
            } else {
                this.f9343F = i10 - i9;
            }
        }
        this.f9365b0.e();
    }

    public final void k1(View view) {
        int childMeasureSpec;
        int childMeasureSpec2;
        C0488n c0488n = (C0488n) view.getLayoutParams();
        Rect rect = f9336e0;
        d(rect, view);
        int i8 = ((ViewGroup.MarginLayoutParams) c0488n).leftMargin + ((ViewGroup.MarginLayoutParams) c0488n).rightMargin + rect.left + rect.right;
        int i9 = ((ViewGroup.MarginLayoutParams) c0488n).topMargin + ((ViewGroup.MarginLayoutParams) c0488n).bottomMargin + rect.top + rect.bottom;
        int iMakeMeasureSpec = this.f9347J == -2 ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(this.f9348K, 1073741824);
        if (this.f9370r == 0) {
            childMeasureSpec = ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), i8, ((ViewGroup.MarginLayoutParams) c0488n).width);
            childMeasureSpec2 = ViewGroup.getChildMeasureSpec(iMakeMeasureSpec, i9, ((ViewGroup.MarginLayoutParams) c0488n).height);
        } else {
            int childMeasureSpec3 = ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), i9, ((ViewGroup.MarginLayoutParams) c0488n).height);
            childMeasureSpec = ViewGroup.getChildMeasureSpec(iMakeMeasureSpec, i8, ((ViewGroup.MarginLayoutParams) c0488n).width);
            childMeasureSpec2 = childMeasureSpec3;
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    @Override // O1.L
    public final void l0(int i8, int i9) {
        int i10;
        int i11 = i9 + i8;
        while (i8 < i11) {
            V.b bVar = this.f9365b0;
            p132r.l lVar = (p132r.l) bVar.f6995d;
            if (lVar != null) {
                synchronized (lVar.f29678c) {
                    i10 = lVar.f29679d;
                }
                if (i10 != 0) {
                    ((p132r.l) bVar.f6995d).e(Integer.toString(i8));
                }
            }
            i8++;
        }
    }

    public final void l1() {
        this.f9358U.m((this.f9378z & 262144) != 0 ? this.f9362Y + this.f9363Z + this.f9374v : (-this.f9363Z) - this.f9374v, false);
    }

    public final void m1(boolean z7) {
        if (z7) {
            if (g1()) {
                return;
            }
        } else if (f1()) {
            return;
        }
        C0489o c0489o = this.f9342E;
        if (c0489o == null) {
            this.f9369q.p0();
            C0489o c0489o2 = new C0489o(this, z7 ? 1 : -1, this.f9356S > 1);
            this.f9343F = 0;
            R0(c0489o2);
            return;
        }
        C0491q c0491q = c0489o.f9319u;
        if (z7) {
            int i8 = c0489o.f9318t;
            if (i8 < c0491q.f9368p) {
                c0489o.f9318t = i8 + 1;
                return;
            }
            return;
        }
        int i9 = c0489o.f9318t;
        if (i9 > (-c0491q.f9368p)) {
            c0489o.f9318t = i9 - 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:162:0x035a  */
    /* JADX WARN: Code duplicated, block: B:164:0x035f  */
    /* JADX WARN: Code duplicated, block: B:165:0x0365  */
    /* JADX WARN: Code duplicated, block: B:168:0x0388  */
    /* JADX WARN: Code duplicated, block: B:169:0x038a  */
    /* JADX WARN: Code duplicated, block: B:326:0x0658 A[PHI: r0 r1
      0x0658: PHI (r0v43 int) = (r0v39 int), (r0v46 int) binds: [B:325:0x0656, B:313:0x0627] A[DONT_GENERATE, DONT_INLINE]
      0x0658: PHI (r1v47 int) = (r1v42 int), (r1v51 int) binds: [B:325:0x0656, B:313:0x0627] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // O1.L
    public final void n0(p142s1.g gVar, O1.Y y7) {
        int i8;
        int i9;
        int i10;
        AbstractC0480f abstractC0480f;
        SparseIntArray sparseIntArray;
        View view;
        int i11;
        int i12;
        int i13;
        int i14;
        AbstractC0485k p7;
        boolean z7;
        int i15;
        AbstractC0480f abstractC0480f2;
        AbstractC0485k abstractC0485k;
        int i16;
        int left;
        int right;
        int i17;
        List list;
        int size;
        SparseIntArray sparseIntArray2;
        AbstractC0485k abstractC0485k2;
        int i18;
        int i19;
        C0484j c0484jK;
        int i20;
        C0484j c0484jK2;
        RecyclerView recyclerView;
        if (this.f9356S != 0 && y7.b() >= 0) {
            if ((this.f9378z & 64) != 0 && x() > 0) {
                this.f9378z |= 128;
                return;
            }
            int i21 = this.f9378z;
            if ((i21 & IMediaList.Event.ItemAdded) == 0) {
                this.f9358U = null;
                this.f9349L = null;
                this.f9378z = i21 & (-1025);
                w0(gVar);
                return;
            }
            this.f9378z = (i21 & (-4)) | 1;
            r1(gVar, y7);
            boolean z8 = y7.f5320g;
            int iMax = Integer.MIN_VALUE;
            AbstractC0480f abstractC0480f3 = this.f9369q;
            if (z8) {
                B1();
                int iX = x();
                if (this.f9358U != null && iX > 0) {
                    int i22 = abstractC0480f3.K(w(0)).f5356J;
                    int i23 = abstractC0480f3.K(w(iX - 1)).f5356J;
                    int iMin = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                    for (int i24 = 0; i24 < iX; i24++) {
                        View viewW = w(i24);
                        C0488n c0488n = (C0488n) viewW.getLayoutParams();
                        c0 c0VarL = RecyclerView.L(viewW);
                        int iJ = (c0VarL == null || (recyclerView = c0VarL.f5370X) == null) ? -1 : recyclerView.J(c0VarL);
                        if (c0488n.f5294a.m() || c0488n.f5294a.j() || viewW.isLayoutRequested() || ((!viewW.hasFocus() && this.f9339B == c0488n.f5294a.c()) || ((viewW.hasFocus() && this.f9339B != c0488n.f5294a.c()) || iJ < i22 || iJ > i23))) {
                            iMin = Math.min(iMin, this.f9371s.d(viewW));
                            iMax = Math.max(iMax, this.f9371s.b(viewW));
                        }
                    }
                    if (iMax > iMin) {
                        this.f9374v = iMax - iMin;
                    }
                    T0();
                    l1();
                }
                this.f9378z &= -4;
                j1();
                return;
            }
            boolean z9 = y7.f5324k;
            SparseIntArray sparseIntArray3 = this.f9375w;
            if (z9) {
                sparseIntArray3.clear();
                int iX2 = x();
                for (int i25 = 0; i25 < iX2; i25++) {
                    int i26 = abstractC0480f3.K(w(i25)).f5356J;
                    if (i26 >= 0 && (c0484jK2 = this.f9358U.k(i26)) != null) {
                        sparseIntArray3.put(i26, c0484jK2.f9298H);
                    }
                }
            }
            boolean z10 = !U() && this.f9359V == 0;
            int i27 = this.f9339B;
            if (i27 != -1 && (i20 = this.f9343F) != Integer.MIN_VALUE) {
                this.f9339B = i27 + i20;
                this.f9340C = 0;
            }
            this.f9343F = 0;
            View viewS = s(this.f9339B);
            int i28 = this.f9339B;
            int i29 = this.f9340C;
            boolean zHasFocus = abstractC0480f3.hasFocus();
            AbstractC0485k abstractC0485k3 = this.f9358U;
            int i30 = abstractC0485k3 != null ? abstractC0485k3.f9304f : -1;
            int i31 = abstractC0485k3 != null ? abstractC0485k3.f9305g : -1;
            if (this.f9370r == 0) {
                i9 = y7.f5328o;
                i8 = y7.f5329p;
            } else {
                i8 = y7.f5328o;
                i9 = y7.f5329p;
            }
            int i32 = i9;
            int i33 = i8;
            int i34 = i32;
            int iB = this.f9372t.b();
            if (iB == 0) {
                this.f9339B = -1;
                this.f9340C = 0;
            } else {
                int i35 = this.f9339B;
                if (i35 >= iB) {
                    this.f9339B = iB - 1;
                    this.f9340C = 0;
                } else if (i35 == -1 && iB > 0) {
                    this.f9339B = 0;
                    this.f9340C = 0;
                }
            }
            boolean z11 = this.f9372t.f5319f;
            p086l.D d6 = this.f9360W;
            if (z11 || (abstractC0485k2 = this.f9358U) == null || abstractC0485k2.f9304f < 0 || (this.f9378z & 256) != 0 || abstractC0485k2.f9303e != this.f9356S) {
                i10 = i33;
                abstractC0480f = abstractC0480f3;
                sparseIntArray = sparseIntArray3;
                view = viewS;
                i11 = i28;
                i12 = i29;
                i13 = i34;
                int i36 = this.f9378z;
                this.f9378z = i36 & (-257);
                AbstractC0485k abstractC0485k4 = this.f9358U;
                if (abstractC0485k4 == null || this.f9356S != abstractC0485k4.f9303e) {
                    i14 = this.f9356S;
                    if (i14 == 1) {
                        p7 = new P();
                    } else {
                        T t7 = new T();
                        t7.f9251j = new CO(64, 0);
                        t7.f9252k = -1;
                        t7.n(i14);
                        p7 = t7;
                    }
                    this.f9358U = p7;
                    p7.f9300b = this.f9367d0;
                    if ((this.f9378z & 262144) != 0) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    p7.f9301c = z7;
                } else if (((i36 & 262144) != 0) != abstractC0485k4.f9301c) {
                    i14 = this.f9356S;
                    if (i14 == 1) {
                        p7 = new P();
                    } else {
                        T t8 = new T();
                        t8.f9251j = new CO(64, 0);
                        t8.f9252k = -1;
                        t8.n(i14);
                        p7 = t8;
                    }
                    this.f9358U = p7;
                    p7.f9300b = this.f9367d0;
                    if ((this.f9378z & 262144) != 0) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    p7.f9301c = z7;
                }
                Y y8 = (Y) d6.f26084e;
                y8.f9279b = Integer.MIN_VALUE;
                y8.f9278a = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                Y y9 = (Y) d6.f26083d;
                y9.f9286i = this.f5292n;
                ((Y) d6.f26082c).f9286i = this.f5293o;
                int iJ2 = J();
                int iK = K();
                y9.f9287j = iJ2;
                y9.f9288k = iK;
                Y y10 = (Y) d6.f26082c;
                int iL = L();
                int I7 = I();
                y10.f9287j = iL;
                y10.f9288k = I7;
                this.f9362Y = ((Y) d6.f26084e).f9286i;
                this.f9346I = 0;
                E1();
                this.f9358U.f9302d = this.f9353P;
                q(this.f9377y);
                AbstractC0485k abstractC0485k5 = this.f9358U;
                abstractC0485k5.f9305g = -1;
                abstractC0485k5.f9304f = -1;
                Y y11 = (Y) d6.f26084e;
                y11.f9279b = Integer.MIN_VALUE;
                y11.f9281d = Integer.MIN_VALUE;
                y11.f9278a = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                y11.f9280c = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                int i37 = this.f9378z;
                this.f9378z = i37 & (-5);
                this.f9378z = (i37 & (-21)) | (zHasFocus ? 16 : 0);
                if (z10 && (i30 < 0 || (i15 = this.f9339B) > i31 || i15 < i30)) {
                    i30 = this.f9339B;
                    i31 = i30;
                }
                abstractC0485k5.f9307i = i30;
                if (i31 != -1) {
                    while (this.f9358U.a() && s(i31) == null) {
                    }
                }
            } else {
                Y y12 = (Y) d6.f26083d;
                y12.f9286i = this.f5292n;
                ((Y) d6.f26082c).f9286i = this.f5293o;
                int iJ3 = J();
                int iK2 = K();
                y12.f9287j = iJ3;
                y12.f9288k = iK2;
                Y y13 = (Y) d6.f26082c;
                int iL2 = L();
                int I8 = I();
                y13.f9287j = iL2;
                y13.f9288k = I8;
                this.f9362Y = ((Y) d6.f26084e).f9286i;
                E1();
                AbstractC0485k abstractC0485k6 = this.f9358U;
                abstractC0485k6.f9302d = this.f9353P;
                this.f9378z |= 4;
                abstractC0485k6.f9307i = this.f9339B;
                int iX3 = x();
                int i38 = this.f9358U.f9304f;
                this.f9378z &= -9;
                int i39 = i38;
                int i40 = 0;
                while (true) {
                    if (i40 < iX3) {
                        View viewW2 = w(i40);
                        if (i39 == X0(viewW2) && (c0484jK = this.f9358U.k(i39)) != null) {
                            int i41 = i34;
                            int i42 = i33;
                            int iC1 = (c1(c0484jK.f9298H) + ((Y) d6.f26085f).f9287j) - this.f9346I;
                            int iD = this.f9371s.d(viewW2);
                            Rect rect = f9336e0;
                            B(rect, viewW2);
                            p086l.D d8 = d6;
                            int iWidth = this.f9370r == 0 ? rect.width() : rect.height();
                            if ((((C0488n) viewW2.getLayoutParams()).f5294a.f5362P & 2) != 0) {
                                this.f9378z |= 8;
                                E0(this.f9377y, this.f5279a.j(viewW2), viewW2);
                                viewW2 = this.f9377y.d(i39);
                                b(i40, viewW2, false);
                            }
                            View view2 = viewW2;
                            k1(view2);
                            int iZ0 = this.f9370r == 0 ? Z0(view2) : Y0(view2);
                            int i43 = iD + iZ0;
                            int i44 = iZ0;
                            int i45 = c0484jK.f9298H;
                            view = viewS;
                            i18 = i40;
                            i12 = i29;
                            i13 = i41;
                            i10 = i42;
                            sparseIntArray = sparseIntArray3;
                            i11 = i28;
                            abstractC0480f = abstractC0480f3;
                            i19 = i39;
                            i1(view2, i45, iD, i43, iC1);
                            if (iWidth == i44) {
                                i40 = i18 + 1;
                                i39 = i19 + 1;
                                i33 = i10;
                                d6 = d8;
                                i34 = i13;
                                i28 = i11;
                                sparseIntArray3 = sparseIntArray;
                                abstractC0480f3 = abstractC0480f;
                                viewS = view;
                                i29 = i12;
                            }
                        } else {
                            i10 = i33;
                            abstractC0480f = abstractC0480f3;
                            sparseIntArray = sparseIntArray3;
                            view = viewS;
                            i11 = i28;
                            i12 = i29;
                            i18 = i40;
                            i13 = i34;
                            i19 = i39;
                        }
                        int i46 = this.f9358U.f9305g;
                        for (int i47 = iX3 - 1; i47 >= i18; i47--) {
                            View viewW3 = w(i47);
                            E0(this.f9377y, this.f5279a.j(viewW3), viewW3);
                        }
                        this.f9358U.l(i19);
                        if ((this.f9378z & 65536) != 0) {
                            T0();
                            int i48 = this.f9339B;
                            if (i48 >= 0 && i48 <= i46) {
                                while (true) {
                                    AbstractC0485k abstractC0485k7 = this.f9358U;
                                    if (abstractC0485k7.f9305g >= this.f9339B) {
                                        break;
                                    } else {
                                        abstractC0485k7.a();
                                    }
                                }
                            }
                        } else {
                            while (this.f9358U.a() && this.f9358U.f9305g < i46) {
                            }
                        }
                    } else {
                        i10 = i33;
                        abstractC0480f = abstractC0480f3;
                        sparseIntArray = sparseIntArray3;
                        view = viewS;
                        i11 = i28;
                        i12 = i29;
                        i13 = i34;
                    }
                    D1();
                    E1();
                }
            }
            while (true) {
                D1();
                AbstractC0485k abstractC0485k8 = this.f9358U;
                int i49 = abstractC0485k8.f9304f;
                int i50 = abstractC0485k8.f9305g;
                int i51 = -i13;
                int i52 = -i10;
                View viewS2 = s(this.f9339B);
                if (viewS2 != null && z10) {
                    v1(viewS2, viewS2.findFocus(), false, i51, i52);
                }
                if (viewS2 == null || !zHasFocus || viewS2.hasFocus()) {
                    if (!zHasFocus && !abstractC0480f.hasFocus()) {
                        if (viewS2 == null || !viewS2.hasFocusable()) {
                            abstractC0480f2 = abstractC0480f;
                            int iX4 = x();
                            for (int i53 = 0; i53 < iX4; i53++) {
                                viewS2 = w(i53);
                                if (viewS2 != null && viewS2.hasFocusable()) {
                                    abstractC0480f2.focusableViewAvailable(viewS2);
                                    break;
                                }
                            }
                        } else {
                            abstractC0480f2 = abstractC0480f;
                            abstractC0480f2.focusableViewAvailable(viewS2);
                        }
                        View view3 = viewS2;
                        if (z10 && view3 != null && view3.hasFocus()) {
                            v1(view3, view3.findFocus(), false, i51, i52);
                        }
                    }
                    T0();
                    l1();
                    abstractC0485k = this.f9358U;
                    if (abstractC0485k.f9304f != i49 && abstractC0485k.f9305g == i50) {
                        break;
                    } else {
                        abstractC0480f = abstractC0480f2;
                    }
                } else {
                    viewS2.requestFocus();
                }
                abstractC0480f2 = abstractC0480f;
                T0();
                l1();
                abstractC0485k = this.f9358U;
                if (abstractC0485k.f9304f != i49) {
                }
                abstractC0480f = abstractC0480f2;
            }
            q1();
            p1();
            if (y7.f5324k && (size = (list = (List) this.f9377y.f30048f).size()) != 0) {
                int[] iArr = this.f9376x;
                if (iArr == null || size > iArr.length) {
                    int length = iArr == null ? 16 : iArr.length;
                    while (length < size) {
                        length <<= 1;
                    }
                    this.f9376x = new int[length];
                }
                int i54 = 0;
                for (int i55 = 0; i55 < size; i55++) {
                    int iC = ((c0) list.get(i55)).c();
                    if (iC >= 0) {
                        this.f9376x[i54] = iC;
                        i54++;
                    }
                }
                if (i54 > 0) {
                    Arrays.sort(this.f9376x, 0, i54);
                    AbstractC0485k abstractC0485k9 = this.f9358U;
                    int[] iArr2 = this.f9376x;
                    int i56 = abstractC0485k9.f9305g;
                    int iBinarySearch = i56 >= 0 ? Arrays.binarySearch(iArr2, 0, i54, i56) : 0;
                    Object[] objArr = abstractC0485k9.f9299a;
                    if (iBinarySearch < 0) {
                        int i57 = (-iBinarySearch) - 1;
                        int iP = abstractC0485k9.f9301c ? (abstractC0485k9.f9300b.P(i56) - abstractC0485k9.f9300b.Q(i56)) - abstractC0485k9.f9302d : abstractC0485k9.f9302d + abstractC0485k9.f9300b.Q(i56) + abstractC0485k9.f9300b.P(i56);
                        while (i57 < i54) {
                            int i58 = iArr2[i57];
                            SparseIntArray sparseIntArray4 = sparseIntArray;
                            int i59 = sparseIntArray4.get(i58);
                            int i60 = i59 < 0 ? 0 : i59;
                            int iL3 = abstractC0485k9.f9300b.L(i58, true, objArr, true);
                            abstractC0485k9.f9300b.F(objArr[0], i58, iL3, i60, iP);
                            iP = abstractC0485k9.f9301c ? (iP - iL3) - abstractC0485k9.f9302d : iP + iL3 + abstractC0485k9.f9302d;
                            i57++;
                            sparseIntArray = sparseIntArray4;
                        }
                    }
                    sparseIntArray2 = sparseIntArray;
                    int i61 = abstractC0485k9.f9304f;
                    int iBinarySearch2 = i61 >= 0 ? Arrays.binarySearch(iArr2, 0, i54, i61) : 0;
                    if (iBinarySearch2 < 0) {
                        int iP2 = abstractC0485k9.f9301c ? abstractC0485k9.f9300b.P(i61) : abstractC0485k9.f9300b.P(i61);
                        for (int i62 = (-iBinarySearch2) - 2; i62 >= 0; i62--) {
                            int i63 = iArr2[i62];
                            int i64 = sparseIntArray2.get(i63);
                            int i65 = i64 < 0 ? 0 : i64;
                            int iL4 = abstractC0485k9.f9300b.L(i63, false, objArr, true);
                            iP2 = abstractC0485k9.f9301c ? iP2 + abstractC0485k9.f9302d + iL4 : (iP2 - abstractC0485k9.f9302d) - iL4;
                            abstractC0485k9.f9300b.F(objArr[0], i63, iL4, i65, iP2);
                        }
                    }
                } else {
                    sparseIntArray2 = sparseIntArray;
                }
                sparseIntArray2.clear();
            }
            int i66 = this.f9378z;
            if ((i66 & 1024) != 0) {
                this.f9378z = i66 & (-1025);
            } else {
                C1();
            }
            if (((this.f9378z & 4) != 0 && ((i17 = this.f9339B) != i11 || this.f9340C != i12 || s(i17) != view || (this.f9378z & 8) != 0)) || (this.f9378z & 20) == 16) {
                U0();
            }
            V0();
            int i67 = this.f9378z;
            if ((i67 & 64) != 0) {
                if (this.f9370r == 1) {
                    i16 = -this.f5293o;
                    if (x() > 0 && (left = w(0).getTop()) < 0) {
                        i16 += left;
                    }
                } else if ((i67 & 262144) != 0) {
                    i16 = this.f5292n;
                    if (x() > 0 && (right = w(0).getRight()) > i16) {
                        i16 = right;
                    }
                } else {
                    i16 = -this.f5292n;
                    if (x() > 0 && (left = w(0).getLeft()) < 0) {
                        i16 += left;
                    }
                }
                s1(i16);
            }
            this.f9378z &= -4;
            j1();
        }
    }

    public final boolean n1(boolean z7) {
        if (this.f9348K != 0 || this.f9349L == null) {
            return false;
        }
        AbstractC0485k abstractC0485k = this.f9358U;
        p132r.h[] hVarArrJ = abstractC0485k == null ? null : abstractC0485k.j(abstractC0485k.f9304f, abstractC0485k.f9305g);
        boolean z8 = false;
        int i8 = -1;
        for (int i9 = 0; i9 < this.f9356S; i9++) {
            p132r.h hVar = hVarArrJ == null ? null : hVarArrJ[i9];
            int iH = hVar == null ? 0 : hVar.h();
            int i10 = -1;
            for (int i11 = 0; i11 < iH; i11 += 2) {
                int iD = hVar.d(i11 + 1);
                for (int iD2 = hVar.d(i11); iD2 <= iD; iD2++) {
                    View viewS = s(iD2 - this.f9373u);
                    if (viewS != null) {
                        if (z7) {
                            k1(viewS);
                        }
                        int iY0 = this.f9370r == 0 ? Y0(viewS) : Z0(viewS);
                        if (iY0 > i10) {
                            i10 = iY0;
                        }
                    }
                }
            }
            int iB = this.f9372t.b();
            AbstractC0480f abstractC0480f = this.f9369q;
            if (!abstractC0480f.f9663d0 && z7 && i10 < 0 && iB > 0) {
                if (i8 < 0) {
                    int i12 = this.f9339B;
                    if (i12 < 0) {
                        i12 = 0;
                    } else if (i12 >= iB) {
                        i12 = iB - 1;
                    }
                    if (x() > 0) {
                        int iD3 = abstractC0480f.K(w(0)).d();
                        int iD4 = abstractC0480f.K(w(x() - 1)).d();
                        if (i12 >= iD3 && i12 <= iD4) {
                            i12 = i12 - iD3 <= iD4 - i12 ? iD3 - 1 : iD4 + 1;
                            if (i12 < 0 && iD4 < iB - 1) {
                                i12 = iD4 + 1;
                            } else if (i12 >= iB && iD3 > 0) {
                                i12 = iD3 - 1;
                            }
                        }
                    }
                    if (i12 >= 0 && i12 < iB) {
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
                        View viewD = this.f9377y.d(i12);
                        int[] iArr = this.f9364a0;
                        if (viewD != null) {
                            C0488n c0488n = (C0488n) viewD.getLayoutParams();
                            Rect rect = f9336e0;
                            d(rect, viewD);
                            viewD.measure(ViewGroup.getChildMeasureSpec(iMakeMeasureSpec, K() + J() + ((ViewGroup.MarginLayoutParams) c0488n).leftMargin + ((ViewGroup.MarginLayoutParams) c0488n).rightMargin + rect.left + rect.right, ((ViewGroup.MarginLayoutParams) c0488n).width), ViewGroup.getChildMeasureSpec(iMakeMeasureSpec2, I() + L() + ((ViewGroup.MarginLayoutParams) c0488n).topMargin + ((ViewGroup.MarginLayoutParams) c0488n).bottomMargin + rect.top + rect.bottom, ((ViewGroup.MarginLayoutParams) c0488n).height));
                            iArr[0] = Z0(viewD);
                            iArr[1] = Y0(viewD);
                            this.f9377y.i(viewD);
                        }
                        i8 = this.f9370r == 0 ? iArr[1] : iArr[0];
                    }
                }
                if (i8 >= 0) {
                    i10 = i8;
                }
            }
            if (i10 < 0) {
                i10 = 0;
            }
            int[] iArr2 = this.f9349L;
            if (iArr2[i9] != i10) {
                iArr2[i9] = i10;
                z8 = true;
            }
        }
        return z8;
    }

    public final int o1(int i8, boolean z7) {
        C0484j c0484jK;
        AbstractC0485k abstractC0485k = this.f9358U;
        if (abstractC0485k == null) {
            return i8;
        }
        int i9 = this.f9339B;
        int i10 = (i9 == -1 || (c0484jK = abstractC0485k.k(i9)) == null) ? -1 : c0484jK.f9298H;
        int iX = x();
        View view = null;
        for (int i11 = 0; i11 < iX && i8 != 0; i11++) {
            int i12 = i8 > 0 ? i11 : (iX - 1) - i11;
            View viewW = w(i12);
            if (viewW.getVisibility() == 0 && (!Q() || viewW.hasFocusable())) {
                int iX0 = X0(w(i12));
                C0484j c0484jK2 = this.f9358U.k(iX0);
                int i13 = c0484jK2 == null ? -1 : c0484jK2.f9298H;
                if (i10 == -1) {
                    i9 = iX0;
                    view = viewW;
                    i10 = i13;
                } else if (i13 == i10 && ((i8 > 0 && iX0 > i9) || (i8 < 0 && iX0 < i9))) {
                    i8 = i8 > 0 ? i8 - 1 : i8 + 1;
                    i9 = iX0;
                    view = viewW;
                }
            }
        }
        if (view != null) {
            if (z7) {
                if (Q()) {
                    this.f9378z |= 32;
                    view.requestFocus();
                    this.f9378z &= -33;
                }
                this.f9339B = i9;
                this.f9340C = 0;
            } else {
                v1(view, view.findFocus(), true, 0, 0);
            }
        }
        return i8;
    }

    @Override // O1.L
    public final void p0(p142s1.g gVar, O1.Y y7, int i8, int i9) {
        int size;
        int size2;
        int mode;
        int iJ;
        int iK;
        int iE1;
        r1(gVar, y7);
        if (this.f9370r == 0) {
            size2 = View.MeasureSpec.getSize(i8);
            size = View.MeasureSpec.getSize(i9);
            mode = View.MeasureSpec.getMode(i9);
            iJ = L();
            iK = I();
        } else {
            size = View.MeasureSpec.getSize(i8);
            size2 = View.MeasureSpec.getSize(i9);
            mode = View.MeasureSpec.getMode(i8);
            iJ = J();
            iK = K();
        }
        int i10 = iK + iJ;
        this.f9350M = size;
        int i11 = this.f9347J;
        if (i11 == -2) {
            int i12 = this.f9357T;
            if (i12 == 0) {
                i12 = 1;
            }
            this.f9356S = i12;
            this.f9348K = 0;
            int[] iArr = this.f9349L;
            if (iArr == null || iArr.length != i12) {
                this.f9349L = new int[i12];
            }
            if (this.f9372t.f5320g) {
                B1();
            }
            n1(true);
            if (mode == Integer.MIN_VALUE) {
                size = Math.min(e1() + i10, this.f9350M);
            } else if (mode == 0) {
                iE1 = e1();
                size = iE1 + i10;
            } else {
                if (mode != 1073741824) {
                    throw new IllegalStateException("wrong spec");
                }
                size = this.f9350M;
            }
        } else {
            if (mode != Integer.MIN_VALUE) {
                if (mode == 0) {
                    if (i11 == 0) {
                        i11 = size - i10;
                    }
                    this.f9348K = i11;
                    int i13 = this.f9357T;
                    if (i13 == 0) {
                        i13 = 1;
                    }
                    this.f9356S = i13;
                    iE1 = ((i13 - 1) * this.f9354Q) + (i11 * i13);
                    size = iE1 + i10;
                } else if (mode != 1073741824) {
                    throw new IllegalStateException("wrong spec");
                }
            }
            int i14 = this.f9357T;
            if (i14 == 0 && i11 == 0) {
                this.f9356S = 1;
                this.f9348K = size - i10;
            } else if (i14 == 0) {
                this.f9348K = i11;
                int i15 = this.f9354Q;
                this.f9356S = (size + i15) / (i11 + i15);
            } else if (i11 == 0) {
                this.f9356S = i14;
                this.f9348K = ((size - i10) - ((i14 - 1) * this.f9354Q)) / i14;
            } else {
                this.f9356S = i14;
                this.f9348K = i11;
            }
            if (mode == Integer.MIN_VALUE) {
                int i16 = this.f9348K;
                int i17 = this.f9356S;
                int i18 = ((i17 - 1) * this.f9354Q) + (i16 * i17) + i10;
                if (i18 < size) {
                    size = i18;
                }
            }
        }
        if (this.f9370r == 0) {
            this.f5280b.setMeasuredDimension(size2, size);
        } else {
            this.f5280b.setMeasuredDimension(size, size2);
        }
        j1();
    }

    public final void p1() {
        int i8 = this.f9378z;
        if ((65600 & i8) == 65536) {
            AbstractC0485k abstractC0485k = this.f9358U;
            int i9 = this.f9339B;
            int i10 = (i8 & 262144) != 0 ? -this.f9363Z : this.f9362Y + this.f9363Z;
            while (true) {
                int i11 = abstractC0485k.f9305g;
                if (i11 >= abstractC0485k.f9304f && i11 > i9) {
                    if (!abstractC0485k.f9301c) {
                        if (abstractC0485k.f9300b.P(i11) < i10) {
                            break;
                        }
                        abstractC0485k.f9300b.T(abstractC0485k.f9305g);
                        abstractC0485k.f9305g--;
                    } else {
                        if (abstractC0485k.f9300b.P(i11) > i10) {
                            break;
                        }
                        abstractC0485k.f9300b.T(abstractC0485k.f9305g);
                        abstractC0485k.f9305g--;
                    }
                } else {
                    break;
                }
            }
            if (abstractC0485k.f9305g < abstractC0485k.f9304f) {
                abstractC0485k.f9305g = -1;
                abstractC0485k.f9304f = -1;
            }
        }
    }

    @Override // O1.L
    public final boolean q0(RecyclerView recyclerView, View view, View view2) {
        if ((this.f9378z & 32768) == 0 && X0(view) != -1 && (this.f9378z & 35) == 0) {
            v1(view, view2, true, 0, 0);
        }
        return true;
    }

    public final void q1() {
        int i8 = this.f9378z;
        if ((65600 & i8) == 65536) {
            AbstractC0485k abstractC0485k = this.f9358U;
            int i9 = this.f9339B;
            int i10 = (i8 & 262144) != 0 ? this.f9362Y + this.f9363Z : -this.f9363Z;
            while (true) {
                int i11 = abstractC0485k.f9305g;
                int i12 = abstractC0485k.f9304f;
                if (i11 >= i12 && i12 < i9) {
                    int iQ = abstractC0485k.f9300b.Q(i12);
                    if (!abstractC0485k.f9301c) {
                        if (abstractC0485k.f9300b.P(abstractC0485k.f9304f) + iQ > i10) {
                            break;
                        }
                        abstractC0485k.f9300b.T(abstractC0485k.f9304f);
                        abstractC0485k.f9304f++;
                    } else {
                        if (abstractC0485k.f9300b.P(abstractC0485k.f9304f) - iQ < i10) {
                            break;
                        }
                        abstractC0485k.f9300b.T(abstractC0485k.f9304f);
                        abstractC0485k.f9304f++;
                    }
                } else {
                    break;
                }
            }
            if (abstractC0485k.f9305g < abstractC0485k.f9304f) {
                abstractC0485k.f9305g = -1;
                abstractC0485k.f9304f = -1;
            }
        }
    }

    @Override // O1.L
    public final void r0(Parcelable parcelable) {
        if (parcelable instanceof C0490p) {
            C0490p c0490p = (C0490p) parcelable;
            this.f9339B = c0490p.f9320G;
            this.f9343F = 0;
            Bundle bundle = c0490p.f9321H;
            V.b bVar = this.f9365b0;
            p132r.l lVar = (p132r.l) bVar.f6995d;
            if (lVar != null && bundle != null) {
                lVar.h(-1);
                for (String str : bundle.keySet()) {
                    ((p132r.l) bVar.f6995d).d(str, bundle.getSparseParcelableArray(str));
                }
            }
            this.f9378z |= 256;
            D0();
        }
    }

    public final void r1(p142s1.g gVar, O1.Y y7) {
        if (this.f9377y != null || this.f9372t != null) {
            Log.e("GridLayoutManager", "Recycler information was not released, bug!");
        }
        this.f9377y = gVar;
        this.f9372t = y7;
        this.f9373u = 0;
        this.f9374v = 0;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0052  */
    @Override // O1.L
    public final Parcelable s0() {
        Bundle bundle;
        int i8;
        C0490p c0490p = new C0490p();
        c0490p.f9321H = Bundle.EMPTY;
        c0490p.f9320G = this.f9339B;
        V.b bVar = this.f9365b0;
        p132r.l lVar = (p132r.l) bVar.f6995d;
        if (lVar != null) {
            synchronized (lVar.f29678c) {
                i8 = lVar.f29679d;
            }
            if (i8 == 0) {
                bundle = null;
            } else {
                LinkedHashMap linkedHashMapG = ((p132r.l) bVar.f6995d).g();
                bundle = new Bundle();
                for (Map.Entry entry : linkedHashMapG.entrySet()) {
                    bundle.putSparseParcelableArray((String) entry.getKey(), (SparseArray) entry.getValue());
                }
            }
        } else {
            bundle = null;
        }
        int iX = x();
        for (int i9 = 0; i9 < iX; i9++) {
            View viewW = w(i9);
            int iX0 = X0(viewW);
            if (iX0 != -1 && bVar.f6993b != 0) {
                String string = Integer.toString(iX0);
                SparseArray<Parcelable> sparseArray = new SparseArray<>();
                viewW.saveHierarchyState(sparseArray);
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putSparseParcelableArray(string, sparseArray);
            }
        }
        c0490p.f9321H = bundle;
        return c0490p;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0037 A[PHI: r0
      0x0037: PHI (r0v9 int) = (r0v8 int), (r0v12 int) binds: [B:19:0x0035, B:12:0x0020] A[DONT_GENERATE, DONT_INLINE]] */
    public final int s1(int i8) {
        int i9;
        int i10 = this.f9378z;
        if ((i10 & 64) == 0 && (i10 & 3) != 1) {
            p086l.D d6 = this.f9360W;
            if (i8 > 0) {
                Object obj = d6.f26084e;
                if (((Y) obj).f9278a != Integer.MAX_VALUE && i8 > (i9 = ((Y) obj).f9280c)) {
                    i8 = i9;
                }
            } else if (i8 < 0) {
                Object obj2 = d6.f26084e;
                if (((Y) obj2).f9279b != Integer.MIN_VALUE && i8 < (i9 = ((Y) obj2).f9281d)) {
                    i8 = i9;
                }
            }
        }
        if (i8 == 0) {
            return 0;
        }
        int i11 = -i8;
        int iX = x();
        if (this.f9370r == 1) {
            for (int i12 = 0; i12 < iX; i12++) {
                w(i12).offsetTopAndBottom(i11);
            }
        } else {
            for (int i13 = 0; i13 < iX; i13++) {
                w(i13).offsetLeftAndRight(i11);
            }
        }
        if ((this.f9378z & 3) == 1) {
            D1();
            return i8;
        }
        int iX2 = x();
        if ((this.f9378z & 262144) == 0 ? i8 >= 0 : i8 <= 0) {
            T0();
        } else {
            l1();
        }
        boolean z7 = x() > iX2;
        int iX3 = x();
        if ((262144 & this.f9378z) == 0 ? i8 >= 0 : i8 <= 0) {
            q1();
        } else {
            p1();
        }
        if (z7 | (x() < iX3)) {
            C1();
        }
        this.f9369q.invalidate();
        D1();
        return i8;
    }

    @Override // O1.L
    public final O1.M t() {
        return new C0488n(-2, -2);
    }

    public final int t1(int i8) {
        int i9 = 0;
        if (i8 == 0) {
            return 0;
        }
        int i10 = -i8;
        int iX = x();
        if (this.f9370r == 0) {
            while (i9 < iX) {
                w(i9).offsetTopAndBottom(i10);
                i9++;
            }
        } else {
            while (i9 < iX) {
                w(i9).offsetLeftAndRight(i10);
                i9++;
            }
        }
        this.f9346I += i8;
        E1();
        this.f9369q.invalidate();
        return i8;
    }

    @Override // O1.L
    public final O1.M u(Context context, AttributeSet attributeSet) {
        return new C0488n(context, attributeSet);
    }

    public final void u1(int i8, int i9, int i10, boolean z7) {
        this.f9344G = i10;
        View viewS = s(i8);
        boolean z8 = !U();
        AbstractC0480f abstractC0480f = this.f9369q;
        if (z8 && !abstractC0480f.isLayoutRequested() && viewS != null && X0(viewS) == i8) {
            this.f9378z |= 32;
            v1(viewS, viewS.findFocus(), z7, 0, 0);
            this.f9378z &= -33;
            return;
        }
        int i11 = this.f9378z;
        if ((i11 & IMediaList.Event.ItemAdded) == 0 || (i11 & 64) != 0) {
            this.f9339B = i8;
            this.f9340C = i9;
            this.f9343F = Integer.MIN_VALUE;
            return;
        }
        if (z7 && !abstractC0480f.isLayoutRequested()) {
            this.f9339B = i8;
            this.f9340C = i9;
            this.f9343F = Integer.MIN_VALUE;
            if (this.f9358U == null) {
                Log.w("GridLayoutManager:" + abstractC0480f.getId(), "setSelectionSmooth should not be called before first layout pass");
                return;
            }
            C0486l c0486l = new C0486l(this);
            c0486l.f5537a = i8;
            R0(c0486l);
            int i12 = c0486l.f5537a;
            if (i12 != this.f9339B) {
                this.f9339B = i12;
                this.f9340C = 0;
                return;
            }
            return;
        }
        if (!z8) {
            AbstractC0487m abstractC0487m = this.f9341D;
            if (abstractC0487m != null) {
                abstractC0487m.f9309q = true;
            }
            abstractC0480f.p0();
        }
        if (!abstractC0480f.isLayoutRequested() && viewS != null && X0(viewS) == i8) {
            this.f9378z |= 32;
            v1(viewS, viewS.findFocus(), z7, 0, 0);
            this.f9378z &= -33;
        } else {
            this.f9339B = i8;
            this.f9340C = i9;
            this.f9343F = Integer.MIN_VALUE;
            this.f9378z |= 256;
            D0();
        }
    }

    @Override // O1.L
    public final O1.M v(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof C0488n) {
            return new C0488n((C0488n) layoutParams);
        }
        if (layoutParams instanceof O1.M) {
            return new C0488n((O1.M) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0488n((ViewGroup.MarginLayoutParams) layoutParams) : new C0488n(layoutParams);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0042  */
    /* JADX WARN: Code duplicated, block: B:25:0x004d  */
    @Override // O1.L
    public final boolean v0(p142s1.g gVar, O1.Y y7, int i8, Bundle bundle) {
        if ((this.f9378z & 131072) != 0) {
            r1(gVar, y7);
            boolean z7 = (this.f9378z & 262144) != 0;
            if (Build.VERSION.SDK_INT >= 23) {
                if (this.f9370r == 0) {
                    if (i8 == O.d.f5012g.a()) {
                        if (z7) {
                            i8 = 4096;
                        } else {
                            i8 = 8192;
                        }
                    } else if (i8 == O.d.f5014i.a()) {
                        if (z7) {
                            i8 = 8192;
                        } else {
                            i8 = 4096;
                        }
                    }
                } else if (i8 == O.d.f5011f.a()) {
                    i8 = 8192;
                } else if (i8 == O.d.f5013h.a()) {
                    i8 = 4096;
                }
            }
            if (i8 == 4096) {
                m1(true);
                o1(1, false);
            } else if (i8 == 8192) {
                m1(false);
                o1(-1, false);
            }
            j1();
        }
        return true;
    }

    public final void v1(View view, View view2, boolean z7, int i8, int i9) {
        if ((this.f9378z & 64) != 0) {
            return;
        }
        int iX0 = X0(view);
        if (view != null && view2 != null) {
            ((C0488n) view.getLayoutParams()).getClass();
        }
        int i10 = this.f9339B;
        AbstractC0480f abstractC0480f = this.f9369q;
        if (iX0 != i10 || this.f9340C != 0) {
            this.f9339B = iX0;
            this.f9340C = 0;
            this.f9343F = 0;
            if ((this.f9378z & 3) != 1) {
                U0();
            }
            if (abstractC0480f.P()) {
                abstractC0480f.invalidate();
            }
        }
        if (view == null) {
            return;
        }
        if (!view.hasFocus() && abstractC0480f.hasFocus()) {
            view.requestFocus();
        }
        if ((this.f9378z & 131072) == 0 && z7) {
            return;
        }
        int[] iArr = f9337f0;
        if (!d1(view, view2, iArr) && i8 == 0 && i9 == 0) {
            return;
        }
        int i11 = iArr[0] + i8;
        int i12 = iArr[1] + i9;
        if ((this.f9378z & 3) == 1) {
            s1(i11);
            t1(i12);
            return;
        }
        if (this.f9370r != 0) {
            i12 = i11;
            i11 = i12;
        }
        if (z7) {
            abstractC0480f.i0(i11, i12);
        } else {
            abstractC0480f.scrollBy(i11, i12);
            V0();
        }
    }

    @Override // O1.L
    public final void w0(p142s1.g gVar) {
        for (int iX = x() - 1; iX >= 0; iX--) {
            z0(iX, gVar);
        }
    }

    public final void w1(int i8) {
        if (i8 == 0 || i8 == 1) {
            this.f9370r = i8;
            this.f9371s = AbstractC0326z.a(this, i8);
            this.f9360W.d(i8);
            this.f9361X.d(i8);
            this.f9378z |= 256;
        }
    }

    public final void x1(int i8) {
        if (i8 < 0 && i8 != -2) {
            throw new IllegalArgumentException(p000a.r.f("Invalid row height: ", i8));
        }
        this.f9347J = i8;
    }

    public final void y1(int i8, boolean z7) {
        if ((this.f9339B == i8 || i8 == -1) && this.f9340C == 0 && this.f9344G == 0) {
            return;
        }
        u1(i8, 0, 0, z7);
    }

    @Override // O1.L
    public final int z(p142s1.g gVar, O1.Y y7) {
        AbstractC0485k abstractC0485k;
        return (this.f9370r != 1 || (abstractC0485k = this.f9358U) == null) ? super.z(gVar, y7) : abstractC0485k.f9303e;
    }

    public final void z1() {
        int iX = x();
        for (int i8 = 0; i8 < iX; i8++) {
            A1(w(i8));
        }
    }

    @Override // O1.L
    public final void o0(O1.Y y7) {
    }
}
