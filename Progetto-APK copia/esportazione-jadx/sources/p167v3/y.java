package p167v3;

import C2.C0091g;
import U2.m;
import android.util.Pair;
import com.google.android.gms.internal.ads.C0783In;
import com.google.android.gms.internal.ads.Q7;
import okhttp3.HttpUrl;
import p083k3.l;
import p090l3.C3099q;
import p182x3.a;

/* JADX INFO: loaded from: classes.dex */
public final class y extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x f30707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0783In f30708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f30709c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f30710d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f30711e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Boolean f30712f;

    public y(x xVar, boolean z7, int i8, Boolean bool, C0783In c0783In) {
        this.f30707a = xVar;
        this.f30709c = z7;
        this.f30710d = i8;
        this.f30712f = bool;
        this.f30708b = c0783In;
        l.f25980A.f25990j.getClass();
        this.f30711e = System.currentTimeMillis();
    }

    public static long c() {
        l.f25980A.f25990j.getClass();
        return ((Long) C3099q.f26624d.f26627c.a(Q7.h9)).longValue() + System.currentTimeMillis();
    }

    @Override // p182x3.a
    public final void a(String str) {
        Pair[] pairArr = new Pair[9];
        pairArr[0] = new Pair("sgf_reason", str);
        pairArr[1] = new Pair("se", "query_g");
        pairArr[2] = new Pair("ad_format", "BANNER");
        pairArr[3] = new Pair("rtype", Integer.toString(6));
        pairArr[4] = new Pair("scar", "true");
        l.f25980A.f25990j.getClass();
        pairArr[5] = new Pair("lat_ms", Long.toString(System.currentTimeMillis() - this.f30711e));
        pairArr[6] = new Pair("sgpc_rn", Integer.toString(this.f30710d));
        pairArr[7] = new Pair("sgpc_lsu", String.valueOf(this.f30712f));
        boolean z7 = this.f30709c;
        pairArr[8] = new Pair("tpc", true != z7 ? "0" : "1");
        m.m(this.f30708b, "sgpcf", pairArr);
        this.f30707a.a(z7, new z(null, str, c(), this.f30710d));
    }

    @Override // p182x3.a
    public final void b(C0091g c0091g) {
        Pair[] pairArr = new Pair[8];
        pairArr[0] = new Pair("se", "query_g");
        pairArr[1] = new Pair("ad_format", "BANNER");
        pairArr[2] = new Pair("rtype", Integer.toString(6));
        pairArr[3] = new Pair("scar", "true");
        l.f25980A.f25990j.getClass();
        pairArr[4] = new Pair("lat_ms", Long.toString(System.currentTimeMillis() - this.f30711e));
        pairArr[5] = new Pair("sgpc_rn", Integer.toString(this.f30710d));
        pairArr[6] = new Pair("sgpc_lsu", String.valueOf(this.f30712f));
        boolean z7 = this.f30709c;
        pairArr[7] = new Pair("tpc", true != z7 ? "0" : "1");
        m.m(this.f30708b, "sgpcs", pairArr);
        this.f30707a.a(z7, new z(c0091g, HttpUrl.FRAGMENT_ENCODE_SET, c(), this.f30710d));
    }
}
