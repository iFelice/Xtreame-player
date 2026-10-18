package com.google.android.gms.internal.ads;

import N.AbstractC0257f;
import android.content.Context;
import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.g5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1343g5 extends AbstractCallableC2016t5 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final K4 f18900j = new K4(15);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final U3 f18901h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Context f18902i;

    public C1343g5(V4 v5, V3 v7, int i8, Context context, U3 u7) {
        super(v5, "5gR2Yi2k1qmqwB908rtZUebo4TzAbjEGSkWYIuNbRdnGPocO4kIxU9dsn2qP+c0J", "NnIoFyYmTm9Yd/i5F1TZFAo2tPeZkpFEZBtgPBr60Ow=", v7, i8, 27);
        this.f18902i = context;
        this.f18901h = u7;
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5
    public final void a() {
        C2119v4 c2119v4;
        AtomicReference atomicReferenceD = f18900j.d(this.f18902i.getPackageName());
        synchronized (atomicReferenceD) {
            try {
                C2119v4 c2119v5 = (C2119v4) atomicReferenceD.get();
                if (c2119v5 == null || X4.b(c2119v5.f21441a) || c2119v5.f21441a.equals("E") || c2119v5.f21441a.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                    int i8 = !X4.b(null) ? 5 : 3;
                    Boolean boolValueOf = Boolean.valueOf(i8 == 3 && !this.f18901h.B());
                    J7 j8 = Q7.f15886m2;
                    C3099q c3099q = C3099q.f26624d;
                    Boolean bool = (Boolean) c3099q.f26627c.a(j8);
                    String strC = ((Boolean) c3099q.f26627c.a(Q7.f15878l2)).booleanValue() ? c() : null;
                    if (bool.booleanValue() && this.f21032a.f16952n && X4.b(strC)) {
                        strC = d();
                    }
                    C2119v4 c2119v6 = new C2119v4((String) this.f21036e.invoke(null, this.f18902i, boolValueOf, strC));
                    if (X4.b(c2119v6.f21441a) || c2119v6.f21441a.equals("E")) {
                        int i9 = i8 - 1;
                        if (i9 == 3) {
                            String strD = d();
                            if (!X4.b(strD)) {
                                c2119v6.f21441a = strD;
                            }
                        } else if (i9 == 4) {
                            throw null;
                        }
                    }
                    atomicReferenceD.set(c2119v6);
                }
                c2119v4 = (C2119v4) atomicReferenceD.get();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f21035d) {
            if (c2119v4 != null) {
                try {
                    V3 v5 = this.f21035d;
                    String str = c2119v4.f21441a;
                    v5.d();
                    C1496j4.N0((C1496j4) v5.f20255H, str);
                    V3 v7 = this.f21035d;
                    long j9 = c2119v4.f21442b;
                    v7.d();
                    C1496j4.C((C1496j4) v7.f20255H, j9);
                    V3 v8 = this.f21035d;
                    String str2 = c2119v4.f21443c;
                    v8.d();
                    C1496j4.B((C1496j4) v8.f20255H, str2);
                    V3 v9 = this.f21035d;
                    String str3 = c2119v4.f21444d;
                    v9.d();
                    C1496j4.L((C1496j4) v9.f20255H, str3);
                    V3 v10 = this.f21035d;
                    String str4 = c2119v4.f21445e;
                    v10.d();
                    C1496j4.M((C1496j4) v10.f20255H, str4);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [com.google.android.gms.internal.ads.u5] */
    public final String c() {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            J7 j8 = Q7.f15894n2;
            C3099q c3099q = C3099q.f26624d;
            byte[] bArrC = X4.c((String) c3099q.f26627c.a(j8));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(bArrC)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(X4.c((String) c3099q.f26627c.a(Q7.f15902o2)))));
            }
            Context context = this.f18902i;
            String packageName = context.getPackageName();
            this.f21032a.getClass();
            if (Build.VERSION.SDK_INT <= 30 && !Build.VERSION.CODENAME.equals("S")) {
                return null;
            }
            final C1816pC c1816pC = new C1816pC();
            context.getPackageManager().requestChecksums(packageName, false, 8, arrayList, new PackageManager.OnChecksumsReadyListener() { // from class: com.google.android.gms.internal.ads.u5
                @Override // android.content.pm.PackageManager.OnChecksumsReadyListener
                public final void onChecksumsReady(List list) {
                    C1816pC c1816pC2 = c1816pC;
                    if (list == null) {
                        c1816pC2.f(null);
                        return;
                    }
                    try {
                        int size = list.size();
                        for (int i8 = 0; i8 < size; i8++) {
                            ApkChecksum apkChecksumD = AbstractC0257f.d(list.get(i8));
                            if (apkChecksumD.getType() == 8) {
                                byte[] value = apkChecksumD.getValue();
                                char[] cArr = X4.f17380a;
                                int length = value.length;
                                char[] cArr2 = new char[length + length];
                                for (int i9 = 0; i9 < value.length; i9++) {
                                    byte b8 = value[i9];
                                    char[] cArr3 = X4.f17380a;
                                    int i10 = i9 + i9;
                                    cArr2[i10] = cArr3[(b8 & 255) >>> 4];
                                    cArr2[i10 + 1] = cArr3[b8 & 15];
                                }
                                c1816pC2.f(new String(cArr2));
                                return;
                            }
                        }
                        c1816pC2.f(null);
                    } catch (Throwable unused) {
                        c1816pC2.f(null);
                    }
                }
            });
            return (String) c1816pC.get();
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException unused) {
            return null;
        }
    }

    public final String d() {
        try {
            Future future = this.f21032a.f16949k;
            if (future != null) {
                future.get();
            }
            C1496j4 c1496j4 = this.f21032a.f16948j;
            if (c1496j4 == null || !c1496j4.k0()) {
                return null;
            }
            return c1496j4.y0();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }
}
