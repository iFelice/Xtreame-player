package O1;

import android.view.View;
import java.util.List;

/* JADX INFO: renamed from: O1.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0321u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f5522a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5524c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5525d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5526e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5527f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5528g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5529h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5530i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5531j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public List f5532k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f5533l;

    public final void a(View view) {
        int iD;
        int size = this.f5532k.size();
        View view2 = null;
        int i8 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        for (int i9 = 0; i9 < size; i9++) {
            View view3 = ((c0) this.f5532k.get(i9)).f5353G;
            M m7 = (M) view3.getLayoutParams();
            if (view3 != view && !m7.f5294a.j() && (iD = (m7.f5294a.d() - this.f5525d) * this.f5526e) >= 0 && iD < i8) {
                view2 = view3;
                if (iD == 0) {
                    break;
                } else {
                    i8 = iD;
                }
            }
        }
        if (view2 == null) {
            this.f5525d = -1;
        } else {
            this.f5525d = ((M) view2.getLayoutParams()).f5294a.d();
        }
    }

    public final View b(p142s1.g gVar) {
        List list = this.f5532k;
        if (list == null) {
            View viewD = gVar.d(this.f5525d);
            this.f5525d += this.f5526e;
            return viewD;
        }
        int size = list.size();
        for (int i8 = 0; i8 < size; i8++) {
            View view = ((c0) this.f5532k.get(i8)).f5353G;
            M m7 = (M) view.getLayoutParams();
            if (!m7.f5294a.j() && this.f5525d == m7.f5294a.d()) {
                a(view);
                return view;
            }
        }
        return null;
    }
}
