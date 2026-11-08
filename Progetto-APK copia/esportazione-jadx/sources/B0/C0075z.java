package B0;

import C0.C0083h;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.internal.measurement.H1;
import okhttp3.HttpUrl;
import p094m0.C3121d;
import p117p0.InterfaceC3168f;

/* JADX INFO: renamed from: B0.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0075z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p117p0.G f1128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p190y4.t f1129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p190y4.t f1130d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p190y4.t f1131e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public p190y4.t f1132f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p190y4.t f1133g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final p190y4.h f1134h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Looper f1135i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f1136j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final C3121d f1137k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f1138l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f1139m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final I0 f1140n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final H0 f1141o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final long f1142p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final long f1143q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final long f1144r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final C0057k f1145s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final long f1146t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final long f1147u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final boolean f1148v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f1149w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final String f1150x;

    public C0075z(Context context) {
        C0045e c0045e = new C0045e(context, 1);
        C0045e c0045e2 = new C0045e(context, 2);
        C0045e c0045e3 = new C0045e(context, 3);
        C0074y c0074y = new C0074y(0);
        C0045e c0045e4 = new C0045e(context, 4);
        C0083h c0083h = new C0083h(2);
        context.getClass();
        this.f1127a = context;
        this.f1129c = c0045e;
        this.f1130d = c0045e2;
        this.f1131e = c0045e3;
        this.f1132f = c0074y;
        this.f1133g = c0045e4;
        this.f1134h = c0083h;
        String str = p117p0.M.f28050a;
        Looper looperMyLooper = Looper.myLooper();
        this.f1135i = looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper;
        this.f1137k = C3121d.f26823b;
        this.f1138l = 1;
        this.f1139m = true;
        this.f1140n = I0.f728c;
        this.f1142p = 5000L;
        this.f1143q = 15000L;
        this.f1144r = 3000L;
        this.f1141o = H0.f720f;
        this.f1145s = new C0057k(p117p0.M.R(20L), p117p0.M.R(500L), 0.999f);
        this.f1128b = InterfaceC3168f.f28080a;
        this.f1146t = 500L;
        this.f1147u = 2000L;
        this.f1148v = true;
        this.f1150x = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f1136j = -1000;
        new p039f.S(27);
    }

    public final O a() {
        H1.i(!this.f1149w);
        this.f1149w = true;
        return new O(this);
    }
}
