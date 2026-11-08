package p021c4;

import android.text.TextUtils;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.measurement.E;
import com.google.android.gms.internal.measurement.K0;
import p132r.f;
import p132r.l;

/* JADX INFO: renamed from: c4.e0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0576e0 extends l {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ C0579f0 f11156g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0576e0(C0579f0 c0579f0) {
        super(20);
        this.f11156g = c0579f0;
    }

    @Override // p132r.l
    public final Object a(Object obj) {
        String str = (String) obj;
        c.e(str);
        C0579f0 c0579f0 = this.f11156g;
        boolean zB = ((C0597l0) c0579f0.f10616G).f11256M.B(null, E.f10808o1);
        C0576e0 c0576e0 = c0579f0.f11177P;
        if (zB) {
            c0579f0.n();
            c.e(str);
            C0602o c0602o = c0579f0.f11343H.f10654I;
            A1.I(c0602o);
            C1093bD c1093bDM0 = c0602o.m0(str);
            if (c1093bDM0 == null) {
                return null;
            }
            T t7 = ((C0597l0) c0579f0.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11047T.b(str, "Populate EES config from database on cache miss. appId");
            c0579f0.w(str, c0579f0.s((byte[]) c1093bDM0.f18028J, str));
            return (E) c0576e0.g().get(str);
        }
        c0579f0.n();
        c.e(str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        f fVar = c0579f0.f11175N;
        K0 k8 = (K0) fVar.get(str);
        if (k8 == null || k8.q() == 0) {
            return null;
        }
        if (!fVar.containsKey(str) || fVar.get(str) == null) {
            c0579f0.u(str);
        } else {
            c0579f0.w(str, (K0) fVar.get(str));
        }
        return (E) c0576e0.g().get(str);
    }
}
