package p113o3;

import C2.C0091g;
import K.k;
import com.google.android.gms.internal.ads.AbstractC2118v3;
import com.google.android.gms.internal.ads.C2040te;
import com.google.android.gms.internal.ads.C2066u3;
import com.google.android.gms.internal.ads.C2222x3;
import java.util.Map;
import p039f.AbstractC2987b;
import p096m2.o;
import p120p3.e;
import p120p3.g;

/* JADX INFO: renamed from: o3.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3162u extends AbstractC2118v3 {

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final C2040te f27999S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final g f28000T;

    public C3162u(String str, C2040te c2040te) {
        super(0, str, new C0091g(c2040te, 9));
        this.f27999S = c2040te;
        g gVar = new g();
        this.f28000T = gVar;
        if (g.c()) {
            o oVar = new o();
            oVar.f27236G = str;
            oVar.f27237H = "GET";
            oVar.f27238I = null;
            oVar.f27239J = null;
            gVar.d("onNetworkRequest", oVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2118v3
    public final C2222x3 a(C2066u3 c2066u3) {
        return new C2222x3(c2066u3, AbstractC2987b.n0(c2066u3));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2118v3
    public final void e(Object obj) {
        byte[] bArr;
        C2066u3 c2066u3 = (C2066u3) obj;
        Map map = c2066u3.f21196c;
        g gVar = this.f28000T;
        gVar.getClass();
        if (g.c()) {
            int i8 = c2066u3.f21194a;
            gVar.d("onNetworkResponse", new k(i8, map, 6));
            if (i8 < 200 || i8 >= 300) {
                gVar.d("onNetworkRequestError", new e(null, 0));
            }
        }
        if (g.c() && (bArr = c2066u3.f21195b) != null) {
            gVar.d("onNetworkResponseBody", new C0091g(bArr, 8));
        }
        this.f27999S.b(c2066u3);
    }
}
