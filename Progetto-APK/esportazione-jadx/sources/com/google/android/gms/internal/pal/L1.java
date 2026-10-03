package com.google.android.gms.internal.pal;

import N.AbstractC0257f;
import O1.C0325y;
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

/* JADX INFO: loaded from: classes.dex */
public final class L1 extends Y1 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final C2805r1 f23582j = new C2805r1();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f23583h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final F2 f23584i;

    public L1(A1 a8, L4 l4, int i8, Context context, F2 f8) {
        super(a8, "hhtrMjcGMTQSGdrv1+l2gakNTe0Pfchc8VT5kRHtsehlafuJ8JEE4iewNV4y5I/U", "o5W1eROpLyVNcsDGW3Y0lGc2x/V+mDPvMXouv3gbW6M=", l4, i8, 27);
        this.f23583h = context;
        this.f23584i = f8;
    }

    @Override // com.google.android.gms.internal.pal.Y1
    public final void a() {
        Boolean boolValueOf;
        int i8;
        C2694d1 c2694d1;
        AtomicReference atomicReferenceD = f23582j.d(this.f23583h.getPackageName());
        synchronized (atomicReferenceD) {
            try {
                C2694d1 c2694d2 = (C2694d1) atomicReferenceD.get();
                if (c2694d2 == null || C1.c(c2694d2.f23770a) || c2694d2.f23770a.equals("E") || c2694d2.f23770a.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                    F2 f8 = this.f23584i;
                    if (C1.c((f8 == null || !f8.r() || C1.c(f8.p().o())) ? null : f8.p().o())) {
                        F2 f9 = this.f23584i;
                        if (C1.c((f9 == null || !f9.r() || C1.c(f9.p().o())) ? null : f9.p().o())) {
                            boolValueOf = Boolean.valueOf(f9 != null && f9.q() && f9.o().o() == 4);
                        } else {
                            boolValueOf = Boolean.FALSE;
                        }
                        i8 = (boolValueOf.booleanValue() && this.f23698a.f23438n) ? 4 : 3;
                    } else {
                        i8 = 5;
                    }
                    Boolean boolValueOf2 = Boolean.valueOf(i8 == 3);
                    C0325y c0325y = AbstractC2759l2.f23925b;
                    C2727h2 c2727h2 = C2727h2.f23833d;
                    Boolean bool = (Boolean) c2727h2.f23836c.a(c0325y);
                    String strC = ((Boolean) c2727h2.f23836c.a(AbstractC2759l2.f23924a)).booleanValue() ? c() : null;
                    if (bool.booleanValue() && this.f23698a.f23438n && C1.c(strC)) {
                        strC = d();
                    }
                    C2694d1 c2694d3 = new C2694d1((String) this.f23702e.invoke(null, this.f23583h, boolValueOf2, strC));
                    if (C1.c(c2694d3.f23770a) || c2694d3.f23770a.equals("E")) {
                        int i9 = i8 - 1;
                        if (i9 == 3) {
                            String strD = d();
                            if (!C1.c(strD)) {
                                c2694d3.f23770a = strD;
                            }
                        } else if (i9 == 4) {
                            c2694d3.f23770a = this.f23584i.p().o();
                        }
                    }
                    atomicReferenceD.set(c2694d3);
                }
                c2694d1 = (C2694d1) atomicReferenceD.get();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f23701d) {
            if (c2694d1 != null) {
                try {
                    L4 l4 = this.f23701d;
                    String str = c2694d1.f23770a;
                    if (l4.f23476I) {
                        l4.f();
                        l4.f23476I = false;
                    }
                    C2765m0.t0((C2765m0) l4.f23475H, str);
                    L4 l8 = this.f23701d;
                    long j8 = c2694d1.f23771b;
                    if (l8.f23476I) {
                        l8.f();
                        l8.f23476I = false;
                    }
                    C2765m0.m((C2765m0) l8.f23475H, j8);
                    L4 l9 = this.f23701d;
                    String str2 = c2694d1.f23772c;
                    if (l9.f23476I) {
                        l9.f();
                        l9.f23476I = false;
                    }
                    C2765m0.y0((C2765m0) l9.f23475H, str2);
                    L4 l10 = this.f23701d;
                    String str3 = c2694d1.f23773d;
                    if (l10.f23476I) {
                        l10.f();
                        l10.f23476I = false;
                    }
                    C2765m0.v((C2765m0) l10.f23475H, str3);
                    L4 l11 = this.f23701d;
                    String str4 = c2694d1.f23774e;
                    if (l11.f23476I) {
                        l11.f();
                        l11.f23476I = false;
                    }
                    C2765m0.w((C2765m0) l11.f23475H, str4);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [com.google.android.gms.internal.pal.Z1] */
    public final String c() {
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            C0325y c0325y = AbstractC2759l2.f23926c;
            C2727h2 c2727h2 = C2727h2.f23833d;
            byte[] bArrD = C1.d((String) c2727h2.f23836c.a(c0325y));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(bArrD)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(C1.d((String) c2727h2.f23836c.a(AbstractC2759l2.f23927d)))));
            }
            Context context = this.f23583h;
            String packageName = context.getPackageName();
            this.f23698a.getClass();
            if (Build.VERSION.SDK_INT <= 30 && !Build.VERSION.CODENAME.equals("S")) {
                return null;
            }
            final C2760l3 c2760l3 = new C2760l3();
            context.getPackageManager().requestChecksums(packageName, false, 8, arrayList, new PackageManager.OnChecksumsReadyListener() { // from class: com.google.android.gms.internal.pal.Z1
                @Override // android.content.pm.PackageManager.OnChecksumsReadyListener
                public final void onChecksumsReady(List list) {
                    C2760l3 c2760l4 = c2760l3;
                    if (list == null) {
                        c2760l4.M0(null);
                        return;
                    }
                    try {
                        int size = list.size();
                        for (int i8 = 0; i8 < size; i8++) {
                            ApkChecksum apkChecksumD = AbstractC0257f.d(list.get(i8));
                            if (apkChecksumD.getType() == 8) {
                                byte[] value = apkChecksumD.getValue();
                                char[] cArr = C1.f23478a;
                                int length = value.length;
                                char[] cArr2 = new char[length + length];
                                for (int i9 = 0; i9 < value.length; i9++) {
                                    byte b8 = value[i9];
                                    int i10 = i9 + i9;
                                    char[] cArr3 = C1.f23478a;
                                    cArr2[i10] = cArr3[(b8 & 255) >>> 4];
                                    cArr2[i10 + 1] = cArr3[b8 & 15];
                                }
                                c2760l4.M0(new String(cArr2));
                                return;
                            }
                        }
                        c2760l4.M0(null);
                    } catch (Throwable unused) {
                        c2760l4.M0(null);
                    }
                }
            });
            return (String) c2760l3.get();
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException unused) {
            return null;
        }
    }

    public final String d() {
        try {
            Future future = this.f23698a.f23435k;
            if (future != null) {
                future.get();
            }
            C2765m0 c2765m0 = this.f23698a.f23434j;
            if (c2765m0 == null || !c2765m0.U()) {
                return null;
            }
            return c2765m0.e0();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }
}
