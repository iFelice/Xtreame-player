package androidx.leanback.widget;

import O1.C0323w;
import android.view.View;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: renamed from: androidx.leanback.widget.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0487m extends C0323w {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f9309q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final /* synthetic */ C0491q f9310r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC0487m(C0491q c0491q) {
        super(c0491q.f9369q.getContext());
        this.f9310r = c0491q;
    }

    @Override // O1.C0323w
    public final int c(int i8) {
        int iC = super.c(i8);
        Object obj = this.f9310r.f9360W.f26084e;
        if (((Y) obj).f9286i <= 0) {
            return iC;
        }
        float f8 = (30.0f / ((Y) obj).f9286i) * i8;
        return ((float) iC) < f8 ? (int) f8 : iC;
    }

    @Override // O1.C0323w
    public final void f() {
        super.f();
        if (!this.f9309q) {
            j();
        }
        C0491q c0491q = this.f9310r;
        if (c0491q.f9341D == this) {
            c0491q.f9341D = null;
        }
        if (c0491q.f9342E == this) {
            c0491q.f9342E = null;
        }
    }

    @Override // O1.C0323w
    public final void g(View view, O1.Y y7, O1.W w7) {
        int i8;
        int i9;
        int[] iArr = C0491q.f9337f0;
        C0491q c0491q = this.f9310r;
        if (c0491q.d1(view, null, iArr)) {
            if (c0491q.f9370r == 0) {
                i8 = iArr[0];
                i9 = iArr[1];
            } else {
                i8 = iArr[1];
                i9 = iArr[0];
            }
            int iCeil = (int) Math.ceil(((double) c((int) Math.sqrt((i9 * i9) + (i8 * i8)))) / 0.3356d);
            DecelerateInterpolator decelerateInterpolator = this.f5546j;
            w7.f5307a = i8;
            w7.f5308b = i9;
            w7.f5309c = iCeil;
            w7.f5311e = decelerateInterpolator;
            w7.f5312f = true;
        }
    }

    public void j() {
        View viewS = this.f5538b.f9646T.s(this.f5537a);
        C0491q c0491q = this.f9310r;
        if (viewS == null) {
            int i8 = this.f5537a;
            if (i8 >= 0) {
                c0491q.u1(i8, 0, 0, false);
                return;
            }
            return;
        }
        int i9 = c0491q.f9339B;
        int i10 = this.f5537a;
        if (i9 != i10) {
            c0491q.f9339B = i10;
        }
        if (c0491q.Q()) {
            c0491q.f9378z |= 32;
            viewS.requestFocus();
            c0491q.f9378z &= -33;
        }
        c0491q.U0();
        c0491q.V0();
    }
}
