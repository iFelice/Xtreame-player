package R0;

import B0.C0;
import B0.C0041c;
import B0.X;
import O0.Z;
import android.content.Context;
import android.media.Spatializer;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.RandomAccess;
import p094m0.C3121d;
import p094m0.C3136t;
import p094m0.g0;
import p094m0.h0;
import p094m0.k0;
import p117p0.M;
import z4.C3256u;
import z4.H;
import z4.c0;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class q extends w implements C0 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final c0 f6232k;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f6233c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Context f6234d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final s f6235e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public k f6236f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Thread f6237g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C0041c f6238h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public C3121d f6239i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Boolean f6240j;

    static {
        Comparator bVar = new K.b(4);
        f6232k = bVar instanceof c0 ? (c0) bVar : new C3256u(bVar);
    }

    public q(Context context) {
        U4.b bVar = new U4.b();
        k kVar = k.f6182W;
        this.f6233c = new Object();
        this.f6234d = context != null ? context.getApplicationContext() : null;
        this.f6235e = bVar;
        if (kVar instanceof k) {
            this.f6236f = kVar;
        } else {
            kVar.getClass();
            j jVar = new j(kVar);
            jVar.d(kVar);
            this.f6236f = new k(jVar);
        }
        this.f6239i = C3121d.f26823b;
        if (this.f6236f.f6193P && context == null) {
            p117p0.x.f("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    public static int c(int i8, int i9) {
        return (i8 == 0 || i8 != i9) ? Integer.bitCount(i8 & i9) : com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
    }

    public static int d(String str) {
        if (str == null) {
            return 0;
        }
        switch (str) {
            case "video/dolby-vision":
                return 5;
            case "video/av01":
                return 4;
            case "video/hevc":
                return 3;
            case "video/avc":
                return 1;
            case "video/x-vnd.on2.vp9":
                return 2;
            default:
                return 0;
        }
    }

    public static boolean e(C3136t c3136t) {
        String str = c3136t.f27041o;
        if (str == null) {
            return false;
        }
        switch (str) {
            case "audio/eac3-joc":
            case "audio/ac4":
            case "audio/iamf":
                return true;
            default:
                return false;
        }
    }

    public static void f(Z z7, k kVar, HashMap map) {
        for (int i8 = 0; i8 < z7.f5182a; i8++) {
            h0 h0Var = (h0) kVar.f26915D.get(z7.a(i8));
            if (h0Var != null) {
                g0 g0Var = h0Var.f26868a;
                h0 h0Var2 = (h0) map.get(Integer.valueOf(g0Var.f26859c));
                if (h0Var2 == null || (h0Var2.f26869b.isEmpty() && !h0Var.f26869b.isEmpty())) {
                    map.put(Integer.valueOf(g0Var.f26859c), h0Var);
                }
            }
        }
    }

    public static int g(C3136t c3136t, String str, boolean z7) {
        if (!TextUtils.isEmpty(str) && str.equals(c3136t.f27030d)) {
            return 4;
        }
        String strJ = j(str);
        String strJ2 = j(c3136t.f27030d);
        if (strJ2 == null || strJ == null) {
            return (z7 && strJ2 == null) ? 1 : 0;
        }
        if (strJ2.startsWith(strJ) || strJ.startsWith(strJ2)) {
            return 3;
        }
        String str2 = M.f28050a;
        return strJ2.split("-", 2)[0].equals(strJ.split("-", 2)[0]) ? 2 : 0;
    }

    public static String j(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    public static Pair l(int i8, v vVar, int[][][] iArr, n nVar, K.b bVar) {
        RandomAccess randomAccessX;
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < vVar.f6244a; i9++) {
            if (i8 == vVar.f6245b[i9]) {
                Z z7 = vVar.f6246c[i9];
                for (int i10 = 0; i10 < z7.f5182a; i10++) {
                    g0 g0VarA = z7.a(i10);
                    d0 d0VarD = nVar.d(i9, g0VarA, iArr[i9][i10]);
                    int i11 = g0VarA.f26857a;
                    boolean[] zArr = new boolean[i11];
                    for (int i12 = 0; i12 < i11; i12++) {
                        o oVar = (o) d0VarD.get(i12);
                        int iA = oVar.a();
                        if (!zArr[i12] && iA != 0) {
                            if (iA == 1) {
                                randomAccessX = H.x(oVar);
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(oVar);
                                for (int i13 = i12 + 1; i13 < i11; i13++) {
                                    o oVar2 = (o) d0VarD.get(i13);
                                    if (oVar2.a() == 2 && oVar.b(oVar2)) {
                                        arrayList2.add(oVar2);
                                        zArr[i13] = true;
                                    }
                                }
                                randomAccessX = arrayList2;
                            }
                            arrayList.add(randomAccessX);
                        }
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList, bVar);
        int[] iArr2 = new int[list.size()];
        for (int i14 = 0; i14 < list.size(); i14++) {
            iArr2[i14] = ((o) list.get(i14)).f6212I;
        }
        o oVar3 = (o) list.get(0);
        return Pair.create(new r(oVar3.f6211H, iArr2), Integer.valueOf(oVar3.f6210G));
    }

    @Override // R0.w
    public final void a() {
        C0041c c0041c;
        Spatializer.OnSpatializerStateChangedListener onSpatializerStateChangedListener;
        synchronized (this.f6233c) {
            try {
                Thread thread = this.f6237g;
                if (thread != null) {
                    H1.h("DefaultTrackSelector is accessed on the wrong thread.", thread == Thread.currentThread());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (Build.VERSION.SDK_INT >= 32 && (c0041c = this.f6238h) != null) {
            Spatializer spatializer = (Spatializer) c0041c.f914H;
            if (spatializer != null && (onSpatializerStateChangedListener = (Spatializer.OnSpatializerStateChangedListener) c0041c.f916J) != null && ((Handler) c0041c.f915I) != null) {
                spatializer.removeOnSpatializerStateChangedListener(onSpatializerStateChangedListener);
                ((Handler) c0041c.f915I).removeCallbacksAndMessages(null);
            }
            this.f6238h = null;
        }
        this.f6250a = null;
        this.f6251b = null;
    }

    @Override // R0.w
    public final void b(k0 k0Var) {
        if (k0Var instanceof k) {
            m((k) k0Var);
        }
        j jVar = new j(h());
        jVar.d(k0Var);
        m(new k(jVar));
    }

    public final k h() {
        k kVar;
        synchronized (this.f6233c) {
            kVar = this.f6236f;
        }
        return kVar;
    }

    public final void i() {
        boolean z7;
        x xVar;
        C0041c c0041c;
        synchronized (this.f6233c) {
            try {
                z7 = this.f6236f.f6193P && Build.VERSION.SDK_INT >= 32 && (c0041c = this.f6238h) != null && c0041c.f913G;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z7 || (xVar = this.f6250a) == null) {
            return;
        }
        ((X) xVar).f864N.e(10);
    }

    public final void k() {
        boolean z7;
        x xVar;
        synchronized (this.f6233c) {
            z7 = this.f6236f.f6197T;
        }
        if (!z7 || (xVar = this.f6250a) == null) {
            return;
        }
        ((X) xVar).f864N.e(26);
    }

    public final void m(k kVar) {
        boolean z7;
        synchronized (this.f6233c) {
            z7 = !this.f6236f.equals(kVar);
            this.f6236f = kVar;
        }
        if (z7) {
            if (kVar.f6193P && this.f6234d == null) {
                p117p0.x.f("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
            }
            x xVar = this.f6250a;
            if (xVar != null) {
                ((X) xVar).f864N.e(10);
            }
        }
    }
}
