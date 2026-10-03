package W3;

import C2.C0091g;
import H3.r;
import K3.AbstractC0245s;
import android.content.Context;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.j;
import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: loaded from: classes.dex */
public final class h extends j implements A3.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final com.google.android.gms.common.api.g f7474c = new com.google.android.gms.common.api.g("AppSet.API", new r(4), new com.google.android.gms.common.api.f());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f7475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final J3.f f7476b;

    public h(Context context, J3.f fVar) {
        super(context, f7474c, com.google.android.gms.common.api.c.f11760a, com.google.android.gms.common.api.i.f11764c);
        this.f7475a = context;
        this.f7476b = fVar;
    }

    @Override // A3.a
    public final p052g4.h a() {
        if (this.f7476b.c(this.f7475a, 212800000) != 0) {
            return Cw.j(new com.google.android.gms.common.api.h(new Status(17, null, null, null)));
        }
        K3.r rVarA = AbstractC0245s.a();
        rVarA.f4571d = new J3.d[]{A3.e.f641a};
        rVarA.f4570c = new C0091g(this, 23);
        rVarA.f4569b = false;
        rVarA.f4568a = 27601;
        return doRead(rVarA.a());
    }
}
