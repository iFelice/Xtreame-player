package androidx.leanback.widget;

import android.graphics.PointF;
import android.view.View;

/* JADX INFO: renamed from: androidx.leanback.widget.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0489o extends AbstractC0487m {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final boolean f9317s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f9318t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final /* synthetic */ C0491q f9319u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0489o(C0491q c0491q, int i8, boolean z7) {
        super(c0491q);
        this.f9319u = c0491q;
        this.f9318t = i8;
        this.f9317s = z7;
        this.f5537a = -2;
    }

    @Override // O1.C0323w
    public final PointF d(int i8) {
        int i9 = this.f9318t;
        if (i9 == 0) {
            return null;
        }
        C0491q c0491q = this.f9319u;
        int i10 = ((c0491q.f9378z & 262144) == 0 ? i9 >= 0 : i9 <= 0) ? 1 : -1;
        return c0491q.f9370r == 0 ? new PointF(i10, 0.0f) : new PointF(0.0f, i10);
    }

    @Override // O1.C0323w
    public final void i(O1.W w7) {
        if (this.f9318t == 0) {
            return;
        }
        super.i(w7);
    }

    @Override // androidx.leanback.widget.AbstractC0487m
    public final void j() {
        super.j();
        this.f9318t = 0;
        View viewS = this.f5538b.f9646T.s(this.f5537a);
        if (viewS != null) {
            C0491q c0491q = this.f9319u;
            c0491q.getClass();
            c0491q.v1(viewS, viewS.findFocus(), true, 0, 0);
        }
    }
}
