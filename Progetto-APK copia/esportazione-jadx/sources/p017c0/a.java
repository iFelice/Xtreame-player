package p017c0;

import B0.C0041c;
import G.c;
import J2.s;
import P2.o;
import Z5.AbstractC0463u;
import Z5.AbstractRunnableC0468z;
import android.content.Context;
import androidx.leanback.widget.VerticalGridView;
import androidx.leanback.widget.picker.DatePicker;
import com.google.android.gms.internal.ads.C0721El;
import com.google.android.gms.internal.ads.C0930Tb;
import com.google.android.gms.internal.ads.C1773oL;
import com.google.android.gms.internal.ads.C2135vK;
import com.google.android.gms.internal.ads.C4;
import com.google.android.gms.internal.ads.Et;
import com.google.android.gms.internal.ads.PL;
import com.google.android.gms.internal.ads.SurfaceHolderCallbackC1979sK;
import java.util.ArrayList;
import p021c4.C0597l0;
import p021c4.K0;
import p021c4.T;
import p021c4.X;
import p082k2.h;
import p083k3.f;
import p167v3.x;
import p178x.e;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10562G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ boolean f10563H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f10564I;

    public /* synthetic */ a(int i8, Object obj, boolean z7) {
        this.f10562G = i8;
        this.f10564I = obj;
        this.f10563H = z7;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x007c  */
    /* JADX WARN: Code duplicated, block: B:78:0x0197  */
    /* JADX WARN: Code duplicated, block: B:87:0x01b6  */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z7;
        boolean z8;
        switch (this.f10562G) {
            case 0:
                DatePicker datePicker = (DatePicker) this.f10564I;
                int[] iArr = {datePicker.f9328e0, datePicker.f9327d0, datePicker.f9329f0};
                boolean z9 = true;
                boolean z10 = true;
                for (int i8 = 2; i8 >= 0; i8--) {
                    int i9 = iArr[i8];
                    if (i9 >= 0) {
                        int i10 = DatePicker.f9322m0[i8];
                        ArrayList arrayList = datePicker.f10575J;
                        f fVar = arrayList == null ? null : (f) arrayList.get(i9);
                        if (z9) {
                            int i11 = datePicker.f9332i0.get(i10);
                            if (i11 != fVar.f10589b) {
                                fVar.f10589b = i11;
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                        } else {
                            int actualMinimum = datePicker.f9334k0.getActualMinimum(i10);
                            if (actualMinimum != fVar.f10589b) {
                                fVar.f10589b = actualMinimum;
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                        }
                        if (z10) {
                            int i12 = datePicker.f9333j0.get(i10);
                            if (i12 != fVar.f10590c) {
                                fVar.f10590c = i12;
                                z8 = true;
                            } else {
                                z8 = false;
                            }
                        } else {
                            int actualMaximum = datePicker.f9334k0.getActualMaximum(i10);
                            if (actualMaximum != fVar.f10590c) {
                                fVar.f10590c = actualMaximum;
                                z8 = true;
                            } else {
                                z8 = false;
                            }
                        }
                        boolean z11 = z7 | z8;
                        z9 &= datePicker.f9334k0.get(i10) == datePicker.f9332i0.get(i10);
                        z10 &= datePicker.f9334k0.get(i10) == datePicker.f9333j0.get(i10);
                        if (z11) {
                            datePicker.a(iArr[i8], fVar);
                        }
                        int i13 = iArr[i8];
                        int i14 = datePicker.f9334k0.get(i10);
                        f fVar2 = (f) datePicker.f10575J.get(i13);
                        if (fVar2.f10588a != i14) {
                            fVar2.f10588a = i14;
                            VerticalGridView verticalGridView = (VerticalGridView) datePicker.f10574I.get(i13);
                            if (verticalGridView != null) {
                                int i15 = i14 - ((f) datePicker.f10575J.get(i13)).f10589b;
                                if (this.f10563H) {
                                    verticalGridView.setSelectedPositionSmooth(i15);
                                } else {
                                    verticalGridView.setSelectedPosition(i15);
                                }
                            }
                        }
                    }
                }
                return;
            case 1:
                h hVar = (h) this.f10564I;
                hVar.getClass();
                o.a();
                C0041c c0041c = (C0041c) hVar.f25927b;
                boolean z12 = c0041c.f913G;
                boolean z13 = this.f10563H;
                c0041c.f913G = z13;
                if (z12 != z13) {
                    ((J2.a) c0041c.f914H).a(z13);
                    return;
                }
                return;
            case 2:
                ((s) this.f10564I).f4118H.a(this.f10563H);
                return;
            case 3:
                f fVar3 = (f) this.f10564I;
                boolean z14 = this.f10563H;
                fVar3.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis();
                try {
                    String str = fVar3.f25954R.f28196G;
                    Context context = fVar3.f25952P;
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    C4.f(str, context, z14, fVar3.f25955S).j();
                    return;
                } catch (NullPointerException e8) {
                    fVar3.f25950N.b(2027, System.currentTimeMillis() - jCurrentTimeMillis, e8);
                    return;
                }
            case 4:
                ((x) this.f10564I).e(this.f10563H, false);
                return;
            case 5:
                ((C0930Tb) this.f10564I).r(this.f10563H);
                return;
            case 6:
                C0721El c0721El = (C0721El) this.f10564I;
                c0721El.f13188l.l(null, c0721El.f13197u.zzf(), c0721El.f13197u.zzl(), c0721El.f13197u.zzm(), this.f10563H, c0721El.q(), 0);
                return;
            case 7:
                C1773oL c1773oL = (C1773oL) this.f10564I;
                c1773oL.getClass();
                int i16 = Et.f13234a;
                C2135vK c2135vK = ((SurfaceHolderCallbackC1979sK) ((PL) c1773oL.f20260I)).f20880G;
                boolean z15 = c2135vK.f21474K;
                boolean z16 = this.f10563H;
                if (z15 == z16) {
                    return;
                }
                c2135vK.f21474K = z16;
                c cVar = new c(z16, 6);
                e eVar = c2135vK.f21493k;
                eVar.p(23, cVar);
                eVar.o();
                return;
            case 8:
                ((X) this.f10564I).f11074a.C();
                return;
            case 9:
                K0 k8 = (K0) this.f10564I;
                C0597l0 c0597l0 = (C0597l0) k8.f10616G;
                boolean zF = c0597l0.f();
                boolean z17 = c0597l0.f11277h0 != null && c0597l0.f11277h0.booleanValue();
                boolean z18 = this.f10563H;
                c0597l0.f11277h0 = Boolean.valueOf(z18);
                if (z17 == z18) {
                    T t7 = c0597l0.f11258O;
                    C0597l0.k(t7);
                    t7.f11047T.b(Boolean.valueOf(z18), "Default data collection state already set to");
                }
                if (c0597l0.f() == zF) {
                    T t8 = c0597l0.f11258O;
                    C0597l0.k(t8);
                    t8.f11044Q.c(Boolean.valueOf(z18), Boolean.valueOf(zF), "Default data collection is different than actual status");
                } else if (c0597l0.f() != (c0597l0.f11277h0 != null && c0597l0.f11277h0.booleanValue())) {
                    T t9 = c0597l0.f11258O;
                    C0597l0.k(t9);
                    t9.f11044Q.c(Boolean.valueOf(z18), Boolean.valueOf(zF), "Default data collection is different than actual status");
                }
                k8.L();
                return;
            case 10:
                ((AbstractC0463u) this.f10564I).getClass();
                throw null;
            case 11:
                ((AbstractC0463u) this.f10564I).getClass();
                throw null;
            default:
                boolean z19 = this.f10563H;
                Object obj = this.f10564I;
                if (z19) {
                    ((AbstractRunnableC0468z) obj).getClass();
                    throw null;
                }
                ((AbstractRunnableC0468z) obj).getClass();
                throw null;
        }
    }
}
