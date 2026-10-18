package p167v3;

import D4.b;
import android.os.Binder;
import com.google.android.gms.internal.ads.AbstractC1040aC;
import com.google.android.gms.internal.ads.C0709Do;
import com.google.android.gms.internal.ads.C0814Ko;
import com.google.android.gms.internal.ads.C0973Wc;
import com.google.android.gms.internal.ads.C1274ep;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.CallableC1497j5;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.IB;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.RB;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import p083k3.l;
import p090l3.C3099q;
import p113o3.O;

/* JADX INFO: loaded from: classes.dex */
public final class p implements RB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f30678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0814Ko f30679b;

    public p(C1936re c1936re, C0814Ko c0814Ko) {
        this.f30678a = c1936re;
        this.f30679b = c0814Ko;
    }

    @Override // com.google.android.gms.internal.ads.RB
    public final b zza(Object obj) {
        b bVarC;
        C0973Wc c0973Wc = (C0973Wc) obj;
        C0814Ko c0814Ko = this.f30679b;
        c0814Ko.getClass();
        String str = c0973Wc.f17253J;
        O o4 = l.f25980A.f25983c;
        int i8 = 1;
        if (O.c(str)) {
            bVarC = Cw.H1(new C1274ep(1));
        } else {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15723S6)).booleanValue()) {
                bVarC = ((IB) c0814Ko.f14411c).b(new CallableC1497j5(6, c0814Ko, c0973Wc));
            } else {
                bVarC = c0814Ko.f14412d.c(c0973Wc);
            }
        }
        return Cw.d2(Cw.D1((AbstractC1040aC) Cw.e2(AbstractC1040aC.r(bVarC), ((Integer) C3099q.f26624d.f26627c.a(Q7.f15801c5)).intValue(), TimeUnit.SECONDS, c0814Ko.f14409a), Throwable.class, new C0709Do(c0814Ko, c0973Wc, Binder.getCallingUid(), i8), c0814Ko.f14410b), new C3197e(c0973Wc, 2), this.f30678a);
    }
}
