package androidx.leanback.widget;

import android.graphics.PointF;

/* JADX INFO: renamed from: androidx.leanback.widget.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0486l extends AbstractC0487m {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final /* synthetic */ C0491q f9308s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0486l(C0491q c0491q) {
        super(c0491q);
        this.f9308s = c0491q;
    }

    @Override // O1.C0323w
    public final PointF d(int i8) {
        if (this.f5538b.f9646T.x() == 0) {
            return null;
        }
        C0491q c0491q = this.f9308s;
        int iM = O1.L.M(c0491q.w(0));
        int i9 = ((c0491q.f9378z & 262144) == 0 ? i8 >= iM : i8 <= iM) ? 1 : -1;
        return c0491q.f9370r == 0 ? new PointF(i9, 0.0f) : new PointF(0.0f, i9);
    }
}
