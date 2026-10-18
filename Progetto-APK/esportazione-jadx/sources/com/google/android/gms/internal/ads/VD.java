package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class VD implements InterfaceC1556kC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f16975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f16976b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceC1556kC f16977c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C1096bG f16978d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C2269xz f16979e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C1142cB f16980f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public InterfaceC1556kC f16981g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PJ f16982h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public C2022tB f16983i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public C1142cB f16984j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public InterfaceC1556kC f16985k;

    public VD(Context context, C1922rF c1922rF) {
        this.f16975a = context.getApplicationContext();
        this.f16977c = c1922rF;
    }

    public static final void j(InterfaceC1556kC interfaceC1556kC, InterfaceC1615lJ interfaceC1615lJ) {
        if (interfaceC1556kC != null) {
            interfaceC1556kC.f(interfaceC1615lJ);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final long a(CD cd) {
        p113o3.r.M(this.f16985k == null);
        String scheme = cd.f12592a.getScheme();
        int i8 = Et.f13234a;
        Uri uri = cd.f12592a;
        String scheme2 = uri.getScheme();
        boolean zIsEmpty = TextUtils.isEmpty(scheme2);
        Context context = this.f16975a;
        if (zIsEmpty || "file".equals(scheme2)) {
            String path = uri.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.f16978d == null) {
                    C1096bG c1096bG = new C1096bG(false);
                    this.f16978d = c1096bG;
                    i(c1096bG);
                }
                this.f16985k = this.f16978d;
            } else {
                if (this.f16979e == null) {
                    C2269xz c2269xz = new C2269xz(context);
                    this.f16979e = c2269xz;
                    i(c2269xz);
                }
                this.f16985k = this.f16979e;
            }
        } else if ("asset".equals(scheme)) {
            if (this.f16979e == null) {
                C2269xz c2269xz2 = new C2269xz(context);
                this.f16979e = c2269xz2;
                i(c2269xz2);
            }
            this.f16985k = this.f16979e;
        } else if ("content".equals(scheme)) {
            if (this.f16980f == null) {
                C1142cB c1142cB = new C1142cB(context, 0);
                this.f16980f = c1142cB;
                i(c1142cB);
            }
            this.f16985k = this.f16980f;
        } else {
            boolean zEquals = "rtmp".equals(scheme);
            InterfaceC1556kC interfaceC1556kC = this.f16977c;
            if (zEquals) {
                if (this.f16981g == null) {
                    try {
                        int i9 = p164v0.a.f30546g;
                        InterfaceC1556kC interfaceC1556kC2 = (InterfaceC1556kC) p164v0.a.class.getConstructor(new Class[0]).newInstance(new Object[0]);
                        this.f16981g = interfaceC1556kC2;
                        i(interfaceC1556kC2);
                    } catch (ClassNotFoundException unused) {
                        Zo.f("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                    } catch (Exception e8) {
                        throw new RuntimeException("Error instantiating RTMP extension", e8);
                    }
                    if (this.f16981g == null) {
                        this.f16981g = interfaceC1556kC;
                    }
                }
                this.f16985k = this.f16981g;
            } else if ("udp".equals(scheme)) {
                if (this.f16982h == null) {
                    PJ pj = new PJ();
                    this.f16982h = pj;
                    i(pj);
                }
                this.f16985k = this.f16982h;
            } else if ("data".equals(scheme)) {
                if (this.f16983i == null) {
                    C2022tB c2022tB = new C2022tB(false);
                    this.f16983i = c2022tB;
                    i(c2022tB);
                }
                this.f16985k = this.f16983i;
            } else if ("rawresource".equals(scheme) || "android.resource".equals(scheme)) {
                if (this.f16984j == null) {
                    C1142cB c1142cB2 = new C1142cB(context, 1);
                    this.f16984j = c1142cB2;
                    i(c1142cB2);
                }
                this.f16985k = this.f16984j;
            } else {
                this.f16985k = interfaceC1556kC;
            }
        }
        return this.f16985k.a(cd);
    }

    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) {
        InterfaceC1556kC interfaceC1556kC = this.f16985k;
        interfaceC1556kC.getClass();
        return interfaceC1556kC.e(bArr, i8, i9);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void f(InterfaceC1615lJ interfaceC1615lJ) {
        interfaceC1615lJ.getClass();
        this.f16977c.f(interfaceC1615lJ);
        this.f16976b.add(interfaceC1615lJ);
        j(this.f16978d, interfaceC1615lJ);
        j(this.f16979e, interfaceC1615lJ);
        j(this.f16980f, interfaceC1615lJ);
        j(this.f16981g, interfaceC1615lJ);
        j(this.f16982h, interfaceC1615lJ);
        j(this.f16983i, interfaceC1615lJ);
        j(this.f16984j, interfaceC1615lJ);
    }

    public final void i(InterfaceC1556kC interfaceC1556kC) {
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f16976b;
            if (i8 >= arrayList.size()) {
                return;
            }
            interfaceC1556kC.f((InterfaceC1615lJ) arrayList.get(i8));
            i8++;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Uri zzc() {
        InterfaceC1556kC interfaceC1556kC = this.f16985k;
        if (interfaceC1556kC == null) {
            return null;
        }
        return interfaceC1556kC.zzc();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void zzd() {
        InterfaceC1556kC interfaceC1556kC = this.f16985k;
        if (interfaceC1556kC != null) {
            try {
                interfaceC1556kC.zzd();
            } finally {
                this.f16985k = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Map zze() {
        InterfaceC1556kC interfaceC1556kC = this.f16985k;
        return interfaceC1556kC == null ? Collections.emptyMap() : interfaceC1556kC.zze();
    }
}
