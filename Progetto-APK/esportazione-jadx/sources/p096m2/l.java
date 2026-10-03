package p096m2;

import A2.j;
import C0.C0077b;
import C2.B;
import D0.U;
import H3.s;
import H3.u;
import J3.e;
import J3.f;
import K3.InterfaceC0243p;
import M.c;
import O5.a;
import P1.x;
import P2.k;
import U0.C0338d;
import U0.J;
import W0.C0376i;
import W0.InterfaceC0377j;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.bumptech.glide.load.data.d;
import com.google.android.gms.internal.ads.R2;
import com.google.android.gms.internal.ads.Ux;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.google.android.gms.internal.cast.AbstractC2501u;
import com.google.android.gms.internal.measurement.E1;
import com.google.android.gms.internal.measurement.F1;
import com.google.android.gms.internal.measurement.I1;
import com.google.android.gms.internal.measurement.J1;
import com.google.android.gms.internal.measurement.P1;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;
import com.journeyapps.barcodescanner.ViewfinderView;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.HttpUrl;
import p027d2.q;
import p027d2.t;
import p032e0.v;
import p043f3.g;
import p052g4.i;
import p094m0.r;
import p117p0.E;
import p117p0.M;
import p130q5.o;
import p144s3.b;
import p196z2.h;
import y2.C3234f;
import y2.H;
import y2.InterfaceC3235g;

/* JADX INFO: loaded from: classes.dex */
public class l implements J, InterfaceC0377j, t, d, b, InterfaceC0243p, p052g4.d, a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f27230G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f27231H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f27232I;

    public l() {
        e eVar = e.f4143d;
        this.f27230G = 17;
        this.f27231H = new SparseIntArray();
        this.f27232I = eVar;
    }

    public static g[] q(String str) {
        String[] strArrSplit = str.split("\\s*,\\s*");
        int length = strArrSplit.length;
        g[] gVarArr = new g[length];
        for (int i8 = 0; i8 < strArrSplit.length; i8++) {
            String strTrim = strArrSplit[i8].trim();
            if (strTrim.matches("^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$")) {
                String[] strArrSplit2 = strTrim.split("[xX]");
                strArrSplit2[0] = strArrSplit2[0].trim();
                strArrSplit2[1] = strArrSplit2[1].trim();
                try {
                    gVarArr[i8] = new g("FULL_WIDTH".equals(strArrSplit2[0]) ? -1 : Integer.parseInt(strArrSplit2[0]), "AUTO_HEIGHT".equals(strArrSplit2[1]) ? -2 : Integer.parseInt(strArrSplit2[1]));
                } catch (NumberFormatException unused) {
                    throw new IllegalArgumentException("Could not parse XML attribute \"adSize\": ".concat(strTrim));
                }
            } else if ("BANNER".equals(strTrim)) {
                gVarArr[i8] = g.f25164h;
            } else if ("LARGE_BANNER".equals(strTrim)) {
                gVarArr[i8] = g.f25166j;
            } else if ("FULL_BANNER".equals(strTrim)) {
                gVarArr[i8] = g.f25165i;
            } else if ("LEADERBOARD".equals(strTrim)) {
                gVarArr[i8] = g.f25167k;
            } else if ("MEDIUM_RECTANGLE".equals(strTrim)) {
                gVarArr[i8] = g.f25168l;
            } else if ("SMART_BANNER".equals(strTrim)) {
                gVarArr[i8] = g.f25170n;
            } else if ("WIDE_SKYSCRAPER".equals(strTrim)) {
                gVarArr[i8] = g.f25169m;
            } else if ("FLUID".equals(strTrim)) {
                gVarArr[i8] = g.f25171o;
            } else {
                if (!"ICON".equals(strTrim)) {
                    throw new IllegalArgumentException("Could not parse XML attribute \"adSize\": ".concat(strTrim));
                }
                gVarArr[i8] = g.f25173q;
            }
        }
        if (length != 0) {
            return gVarArr;
        }
        throw new IllegalArgumentException("Could not parse XML attribute \"adSize\": ".concat(str));
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00e3  */
    @Override // W0.InterfaceC0377j
    public final C0376i a(W0.t tVar, long j8) {
        int iH;
        long jR = tVar.r();
        int iMin = (int) Math.min(20000L, tVar.j() - jR);
        ((E) this.f27232I).I(iMin);
        tVar.c(0, ((E) this.f27232I).f28035a, iMin);
        E e8 = (E) this.f27232I;
        int i8 = -1;
        long j9 = -9223372036854775807L;
        int i9 = -1;
        while (e8.a() >= 4) {
            if (p010b1.a.h(e8.f28036b, e8.f28035a) != 442) {
                e8.M(1);
            } else {
                e8.M(4);
                long jC = R2.c(e8);
                if (jC != -9223372036854775807L) {
                    long jB = ((p117p0.J) this.f27231H).b(jC);
                    if (jB > j8) {
                        return j9 == -9223372036854775807L ? new C0376i(-1, jB, jR) : C0376i.a(jR + ((long) i9));
                    }
                    if (100000 + jB > j8) {
                        return C0376i.a(jR + ((long) e8.f28036b));
                    }
                    i9 = e8.f28036b;
                    j9 = jB;
                }
                int i10 = e8.f28037c;
                if (e8.a() >= 10) {
                    e8.M(9);
                    int iZ = e8.z() & 7;
                    if (e8.a() >= iZ) {
                        e8.M(iZ);
                        if (e8.a() >= 4) {
                            if (p010b1.a.h(e8.f28036b, e8.f28035a) != 443) {
                                while (e8.a() >= 4) {
                                    iH = p010b1.a.h(e8.f28036b, e8.f28035a);
                                    if (iH == 442) {
                                        break;
                                    }
                                    break;
                                }
                            }
                            e8.M(4);
                            int iF = e8.F();
                            if (e8.a() < iF) {
                                e8.L(i10);
                            } else {
                                e8.M(iF);
                                while (e8.a() >= 4) {
                                    iH = p010b1.a.h(e8.f28036b, e8.f28035a);
                                    if (iH == 442 || iH == 441 || (iH >>> 8) != 1) {
                                        break;
                                    }
                                    e8.M(4);
                                    if (e8.a() < 2) {
                                        e8.L(i10);
                                        break;
                                    }
                                    e8.L(Math.min(e8.f28037c, e8.f28036b + e8.F()));
                                }
                            }
                        } else {
                            e8.L(i10);
                        }
                    } else {
                        e8.L(i10);
                    }
                } else {
                    e8.L(i10);
                }
                i8 = e8.f28036b;
            }
        }
        return j9 != -9223372036854775807L ? new C0376i(-2, j9, jR + ((long) i8)) : C0376i.f7420d;
    }

    @Override // K3.InterfaceC0243p
    public final void accept(Object obj, Object obj2) {
        s sVar = new s((i) obj2, 1);
        H3.i iVar = (H3.i) ((u) obj).getService();
        String[] strArr = (String[]) this.f27232I;
        Parcel parcelJ0 = iVar.j0();
        AbstractC2501u.d(parcelJ0, sVar);
        parcelJ0.writeStringArray(strArr);
        iVar.i2(6, parcelJ0);
    }

    @Override // com.bumptech.glide.load.data.d
    public final void b(Exception exc) {
        H h8 = (H) this.f27232I;
        B b8 = (B) this.f27231H;
        B b9 = h8.f31270L;
        if (b9 == null || b9 != b8) {
            return;
        }
        H h9 = (H) this.f27232I;
        B b10 = (B) this.f27231H;
        InterfaceC3235g interfaceC3235g = h9.f31266H;
        C3234f c3234f = h9.f31271M;
        com.bumptech.glide.load.data.e eVar = b10.f1349c;
        interfaceC3235g.a(c3234f, exc, eVar, eVar.d());
    }

    @Override // O5.a
    public final void c(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            o oVar = (o) it.next();
            ViewfinderView viewfinderView = ((DecoratedBarcodeView) this.f27232I).f24566H;
            if (viewfinderView.f24575M.size() < 20) {
                viewfinderView.f24575M.add(oVar);
            }
        }
        ((a) this.f27231H).c(list);
    }

    @Override // O5.a
    public final void d(O5.b bVar) {
        ((a) this.f27231H).d(bVar);
    }

    @Override // W0.InterfaceC0377j
    public final void e() {
        E e8 = (E) this.f27232I;
        byte[] bArr = M.f28051b;
        e8.getClass();
        e8.J(bArr.length, bArr);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x002b, code lost:
    
        if (r3 == p173w2.a.f30982H) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
    
        if (r3 != p173w2.a.f30985K) goto L16;
     */
    @Override // com.bumptech.glide.load.data.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void f(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.f27232I
            y2.H r0 = (y2.H) r0
            java.lang.Object r1 = r7.f27231H
            C2.B r1 = (C2.B) r1
            C2.B r0 = r0.f31270L
            if (r0 == 0) goto L53
            if (r0 != r1) goto L53
            java.lang.Object r0 = r7.f27232I
            y2.H r0 = (y2.H) r0
            java.lang.Object r1 = r7.f27231H
            C2.B r1 = (C2.B) r1
            y2.i r2 = r0.f31265G
            y2.o r2 = r2.f31307p
            if (r8 == 0) goto L3e
            com.bumptech.glide.load.data.e r3 = r1.f1349c
            w2.a r3 = r3.d()
            y2.n r2 = (y2.n) r2
            int r2 = r2.f31350d
            switch(r2) {
                case 1: goto L3e;
                case 2: goto L2e;
                default: goto L29;
            }
        L29:
            w2.a r2 = p173w2.a.f30982H
            if (r3 != r2) goto L3e
            goto L36
        L2e:
            w2.a r2 = p173w2.a.f30983I
            if (r3 == r2) goto L3e
            w2.a r2 = p173w2.a.f30985K
            if (r3 == r2) goto L3e
        L36:
            r0.f31269K = r8
            y2.g r8 = r0.f31266H
            r8.b()
            goto L53
        L3e:
            y2.g r2 = r0.f31266H
            w2.i r3 = r1.f1347a
            com.bumptech.glide.load.data.e r4 = r1.f1349c
            w2.a r5 = r4.d()
            y2.f r6 = r0.f31271M
            r0 = r2
            r1 = r3
            r2 = r8
            r3 = r4
            r4 = r5
            r5 = r6
            r0.d(r1, r2, r3, r4, r5)
        L53:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p096m2.l.f(java.lang.Object):void");
    }

    public final String g(p173w2.i iVar) {
        String str;
        Object objH = ((c) this.f27232I).h();
        p102n0.c.c(objH, "Argument must not be null");
        j jVar = (j) objH;
        try {
            iVar.b(jVar.f633G);
            byte[] bArrDigest = jVar.f633G.digest();
            char[] cArr = P2.o.f5907b;
            synchronized (cArr) {
                for (int i8 = 0; i8 < bArrDigest.length; i8++) {
                    byte b8 = bArrDigest[i8];
                    int i9 = i8 * 2;
                    char[] cArr2 = P2.o.f5906a;
                    cArr[i9] = cArr2[(b8 & 255) >>> 4];
                    cArr[i9 + 1] = cArr2[b8 & 15];
                }
                str = new String(cArr);
            }
            ((c) this.f27232I).a(jVar);
            return str;
        } catch (Throwable th) {
            ((c) this.f27232I).a(jVar);
            throw th;
        }
    }

    public final boolean h(int i8) {
        return ((r) this.f27231H).f26967a.get(i8);
    }

    public final p176w5.b i() {
        if (((p176w5.b) this.f27232I) == null) {
            this.f27232I = ((p018c1.d) this.f27231H).g();
        }
        return (p176w5.b) this.f27232I;
    }

    public final String j(p173w2.i iVar) {
        String strG;
        synchronized (((k) this.f27231H)) {
            strG = (String) ((k) this.f27231H).a(iVar);
        }
        if (strG == null) {
            strG = g(iVar);
        }
        synchronized (((k) this.f27231H)) {
            ((k) this.f27231H).d(iVar, strG);
        }
        return strG;
    }

    public final synchronized Map k() {
        try {
            if (((Map) this.f27232I) == null) {
                this.f27232I = Collections.unmodifiableMap(new HashMap((Map) this.f27231H));
            }
        } catch (Throwable th) {
            throw th;
        }
        return (Map) this.f27232I;
    }

    public final void l(Context context, Uri uri) {
        ((Intent) this.f27231H).setData(uri);
        context.startActivity((Intent) this.f27231H, (Bundle) this.f27232I);
    }

    public final void m(S3.e eVar) {
        boolean z7;
        v vVar = (v) this.f27231H;
        synchronized (vVar.f24766a) {
            z7 = vVar.f24771f == p032e0.t.f24765k;
            vVar.f24771f = eVar;
        }
        if (z7) {
            p093m.b.g0().h0(vVar.f24775j);
        }
        if (eVar instanceof p027d2.s) {
            ((p112o2.j) this.f27232I).j((p027d2.s) eVar);
        } else if (eVar instanceof q) {
            ((p112o2.j) this.f27232I).k(((q) eVar).f24644c);
        }
    }

    public final byte[] n(int i8) {
        Object obj = this.f27232I;
        return ((h) obj) == null ? new byte[i8] : (byte[]) ((h) obj).d(i8, byte[].class);
    }

    public final int o(Context context, com.google.android.gms.common.api.e eVar) {
        com.bumptech.glide.c.h(context);
        com.bumptech.glide.c.h(eVar);
        int i8 = 0;
        if (!eVar.requiresGooglePlayServices()) {
            return 0;
        }
        int minApkVersion = eVar.getMinApkVersion();
        int iC = ((SparseIntArray) this.f27231H).get(minApkVersion, -1);
        if (iC == -1) {
            int i9 = 0;
            while (true) {
                if (i9 >= ((SparseIntArray) this.f27231H).size()) {
                    i8 = -1;
                    break;
                }
                int iKeyAt = ((SparseIntArray) this.f27231H).keyAt(i9);
                if (iKeyAt > minApkVersion && ((SparseIntArray) this.f27231H).get(iKeyAt) == 0) {
                    break;
                }
                i9++;
            }
            iC = i8 == -1 ? ((f) this.f27232I).c(context, minApkVersion) : i8;
            ((SparseIntArray) this.f27231H).put(minApkVersion, iC);
        }
        return iC;
    }

    @Override // p052g4.d
    public final void onComplete(p052g4.h hVar) {
        ((Map) ((x0) this.f27232I).f22391I).remove((i) this.f27231H);
    }

    public final Object p() {
        String string;
        P1 p7 = (P1) this.f27231H;
        String str = (String) this.f27232I;
        Context context = p7.f22979a;
        context.getClass();
        ContentResolver contentResolver = context.getContentResolver();
        Ux ux = (Ux) E1.f22908a;
        if (contentResolver == null) {
            ux.getClass();
            throw new IllegalStateException("ContentResolver needed with GservicesDelegateSupplier.init()");
        }
        synchronized (ux) {
            try {
                int i8 = 0;
                if (ux.f16918a == null) {
                    ((AtomicBoolean) ux.f16923f).set(false);
                    ux.f16918a = new HashMap(16, 1.0f);
                    ux.f16925h = new Object();
                    contentResolver.registerContentObserver(F1.f22912a, true, new I1(ux, i8));
                } else if (((AtomicBoolean) ux.f16923f).getAndSet(false)) {
                    ux.f16918a.clear();
                    ux.f16919b.clear();
                    ux.f16920c.clear();
                    ux.f16921d.clear();
                    ((HashMap) ux.f16924g).clear();
                    ux.f16925h = new Object();
                    ux.f16922e = false;
                }
                Object obj = ux.f16925h;
                String str2 = null;
                if (ux.f16918a.containsKey(str)) {
                    String str3 = (String) ux.f16918a.get(str);
                    if (str3 != null) {
                        str2 = str3;
                    }
                    return str2;
                }
                try {
                    Uri uri = F1.f22912a;
                    ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
                    try {
                        if (contentProviderClientAcquireUnstableContentProviderClient == null) {
                            throw new J1("Unable to acquire ContentProviderClient");
                        }
                        try {
                            Cursor cursorQuery = contentProviderClientAcquireUnstableContentProviderClient.query(uri, null, null, new String[]{str}, null);
                            try {
                                if (cursorQuery == null) {
                                    throw new J1("ContentProvider query returned null cursor");
                                }
                                if (cursorQuery.moveToFirst()) {
                                    string = cursorQuery.getString(1);
                                    cursorQuery.close();
                                    contentProviderClientAcquireUnstableContentProviderClient.release();
                                } else {
                                    cursorQuery.close();
                                    contentProviderClientAcquireUnstableContentProviderClient.release();
                                    string = null;
                                }
                                if (string != null && string.equals(null)) {
                                    string = null;
                                }
                                synchronized (ux) {
                                    try {
                                        if (obj == ux.f16925h) {
                                            ux.f16918a.put(str, string);
                                        }
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                                if (string != null) {
                                    return string;
                                }
                                return null;
                            } catch (Throwable th2) {
                                if (cursorQuery != null) {
                                    try {
                                        cursorQuery.close();
                                    } catch (Throwable th3) {
                                        th2.addSuppressed(th3);
                                    }
                                }
                                throw th2;
                            }
                        } catch (RemoteException e8) {
                            throw new J1(e8);
                        }
                    } catch (Throwable th4) {
                        contentProviderClientAcquireUnstableContentProviderClient.release();
                        throw th4;
                    }
                } catch (J1 unused) {
                    return null;
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }
    }

    public final String toString() {
        switch (this.f27230G) {
            case 23:
                try {
                    return i().toString();
                } catch (p130q5.i unused) {
                    return HttpUrl.FRAGMENT_ENCODE_SET;
                }
            case 27:
                return "Request{url=" + ((com.bumptech.glide.c) this.f27231H) + '}';
            default:
                return super.toString();
        }
    }

    public l(int i8) {
        this.f27230G = i8;
        if (i8 == 7) {
            this.f27231H = new v();
            this.f27232I = new p112o2.j();
            m(t.f24646B);
        } else {
            if (i8 == 10) {
                this.f27231H = new k(1000L);
                int i9 = 28;
                this.f27232I = new u(new M.d(10), new U(this, i9), Q2.d.f6032a, i9);
                return;
            }
            if (i8 != 12) {
                if (i8 != 24) {
                    this.f27231H = new HashMap();
                } else {
                    this.f27231H = new int[4];
                    this.f27232I = new StringBuilder();
                }
            }
        }
    }

    public /* synthetic */ l(int i8, Object obj, Object obj2) {
        this.f27230G = i8;
        this.f27231H = obj;
        this.f27232I = obj2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l(C0338d c0338d, int i8) {
        this(c0338d);
        this.f27230G = 5;
    }

    public /* synthetic */ l(Object obj, Object obj2, int i8) {
        this.f27230G = i8;
        this.f27232I = obj;
        this.f27231H = obj2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l(p117p0.J j8, int i8) {
        this(j8);
        this.f27230G = 6;
    }

    public l(x xVar) {
        this.f27230G = 0;
        this.f27231H = xVar;
        this.f27232I = new b(this, xVar, 3);
    }

    public l(p018c1.d dVar) {
        this.f27230G = 23;
        if (dVar != null) {
            this.f27231H = dVar;
            return;
        }
        throw new IllegalArgumentException("Binarizer must be non-null.");
    }

    public l(p117p0.J j8) {
        this.f27230G = 6;
        this.f27231H = j8;
        this.f27232I = new E();
    }

    public l(r rVar, SparseArray sparseArray) {
        this.f27230G = 4;
        this.f27231H = rVar;
        SparseBooleanArray sparseBooleanArray = rVar.f26967a;
        SparseArray sparseArray2 = new SparseArray(sparseBooleanArray.size());
        for (int i8 = 0; i8 < sparseBooleanArray.size(); i8++) {
            int iA = rVar.a(i8);
            C0077b c0077b = (C0077b) sparseArray.get(iA);
            c0077b.getClass();
            sparseArray2.append(iA, c0077b);
        }
        this.f27232I = sparseArray2;
    }

    public l(C0338d c0338d) {
        this.f27230G = 5;
        this.f27232I = c0338d;
    }
}
