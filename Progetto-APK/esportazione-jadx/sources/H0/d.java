package H0;

import F2.G;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;

/* JADX INFO: loaded from: classes.dex */
public final class d implements k {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f3437f = {8, 13, 11, 2, 0, 1, 7};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p126q1.k f3439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3440c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3441d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f3442e;

    public d() {
        this(0, true);
    }

    public static void a(int i8, ArrayList arrayList) {
        if (p190y4.k.N(i8, 0, 7, f3437f) == -1 || arrayList.contains(Integer.valueOf(i8))) {
            return;
        }
        arrayList.add(Integer.valueOf(i8));
    }

    public final C3136t b(C3136t c3136t) {
        String str;
        if (!this.f3440c || !((G) this.f3439b).K(c3136t)) {
            return c3136t;
        }
        C3135s c3135sA = c3136t.a();
        c3135sA.f26996n = O.p("application/x-media3-cues");
        c3135sA.f26979L = ((G) this.f3439b).D(c3136t);
        StringBuilder sb = new StringBuilder();
        sb.append(c3136t.f27041o);
        String str2 = c3136t.f27037k;
        if (str2 != null) {
            str = " " + str2;
        } else {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        sb.append(str);
        c3135sA.f26992j = sb.toString();
        c3135sA.f27001s = Long.MAX_VALUE;
        return c3135sA.a();
    }

    public d(int i8, boolean z7) {
        this.f3438a = i8;
        this.f3442e = z7;
        this.f3439b = new G(3);
    }
}
