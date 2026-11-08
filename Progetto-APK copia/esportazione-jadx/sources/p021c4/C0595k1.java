package p021c4;

import E1.W;
import Z3.C0433o;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.gms.internal.ads.PN;
import p096m2.e;

/* JADX INFO: renamed from: c4.k1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0595k1 extends B {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public W f11240I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f11241J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C0433o f11242K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final PN f11243L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final e f11244M;

    public C0595k1(C0597l0 c0597l0) {
        super(c0597l0);
        this.f11241J = true;
        this.f11242K = new C0433o(this, 8);
        PN pn = new PN();
        pn.f15387d = this;
        pn.f15386c = new C0592j1(pn, (C0597l0) this.f10616G, 0);
        ((C0597l0) this.f10616G).f11263T.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        pn.f15384a = jElapsedRealtime;
        pn.f15385b = jElapsedRealtime;
        this.f11243L = pn;
        this.f11244M = new e(this);
    }

    @Override // p021c4.B
    public final boolean p() {
        return false;
    }

    public final void q() {
        m();
        if (this.f11240I == null) {
            this.f11240I = new W(Looper.getMainLooper(), 2);
        }
    }
}
