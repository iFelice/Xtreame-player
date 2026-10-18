package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import okhttp3.HttpUrl;
import p039f.AbstractC2987b;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Xe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0989Xe implements InterfaceC1556kC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f17444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC1556kC f17445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17446c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f17447d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f17448e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public InputStream f17449f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f17450g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Uri f17451h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile C1758o6 f17452i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f17453j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f17454k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public CD f17455l;

    public C0989Xe(Context context, C1922rF c1922rF, String str, int i8) {
        this.f17444a = context;
        this.f17445b = c1922rF;
        this.f17446c = str;
        this.f17447d = i8;
        new AtomicLong(-1L);
        this.f17448e = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15639I1)).booleanValue();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final long a(CD cd) throws IOException {
        Long l4;
        if (this.f17450g) {
            throw new IOException("Attempt to open an already open CacheDataSource.");
        }
        this.f17450g = true;
        Uri uri = cd.f12592a;
        this.f17451h = uri;
        this.f17455l = cd;
        this.f17452i = C1758o6.i(uri);
        J7 j8 = Q7.f15759X3;
        C3099q c3099q = C3099q.f26624d;
        boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
        C1654m6 c1654m6F = null;
        String str = HttpUrl.FRAGMENT_ENCODE_SET;
        if (!zBooleanValue) {
            if (this.f17452i != null) {
                this.f17452i.f20241N = cd.f12594c;
                C1758o6 c1758o6 = this.f17452i;
                String str2 = this.f17446c;
                if (str2 != null) {
                    str = str2;
                }
                c1758o6.f20242O = str;
                this.f17452i.f20243P = this.f17447d;
                c1654m6F = p083k3.l.f25980A.f25989i.f(this.f17452i);
            }
            if (c1654m6F != null && c1654m6F.o()) {
                this.f17453j = c1654m6F.q();
                this.f17454k = c1654m6F.p();
                if (!i()) {
                    this.f17449f = c1654m6F.l();
                    return -1L;
                }
            }
        } else if (this.f17452i != null) {
            this.f17452i.f20241N = cd.f12594c;
            C1758o6 c1758o7 = this.f17452i;
            String str3 = this.f17446c;
            if (str3 != null) {
                str = str3;
            }
            c1758o7.f20242O = str;
            this.f17452i.f20243P = this.f17447d;
            if (this.f17452i.f20240M) {
                l4 = (Long) c3099q.f26627c.a(Q7.f15774Z3);
            } else {
                l4 = (Long) c3099q.f26627c.a(Q7.f15766Y3);
            }
            long jLongValue = l4.longValue();
            p083k3.l.f25980A.f25990j.getClass();
            SystemClock.elapsedRealtime();
            C1862q6 c1862q6E = C1561kH.e(this.f17444a, this.f17452i);
            try {
                try {
                    try {
                        C2069u6 c2069u6 = (C2069u6) c1862q6E.f21082G.get(jLongValue, TimeUnit.MILLISECONDS);
                        c2069u6.getClass();
                        this.f17453j = c2069u6.f21202c;
                        this.f17454k = c2069u6.f21204e;
                        if (!i()) {
                            this.f17449f = c2069u6.f21200a;
                        }
                    } catch (ExecutionException | TimeoutException unused) {
                        c1862q6E.cancel(false);
                    }
                } catch (InterruptedException unused2) {
                    c1862q6E.cancel(false);
                    Thread.currentThread().interrupt();
                }
            } catch (Throwable unused3) {
            }
            p083k3.l.f25980A.f25990j.getClass();
            SystemClock.elapsedRealtime();
            throw null;
        }
        if (this.f17452i != null) {
            Map map = cd.f12593b;
            long j9 = cd.f12594c;
            long j10 = cd.f12595d;
            int i8 = cd.f12596e;
            Uri uri2 = Uri.parse(this.f17452i.f20234G);
            if (uri2 == null) {
                throw new IllegalStateException("The uri must be set.");
            }
            this.f17455l = new CD(uri2, map, j9, j10, i8);
        }
        return this.f17445b.a(this.f17455l);
    }

    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) throws IOException {
        if (!this.f17450g) {
            throw new IOException("Attempt to read closed CacheDataSource.");
        }
        InputStream inputStream = this.f17449f;
        return inputStream != null ? inputStream.read(bArr, i8, i9) : this.f17445b.e(bArr, i8, i9);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void f(InterfaceC1615lJ interfaceC1615lJ) {
    }

    public final boolean i() {
        if (!this.f17448e) {
            return false;
        }
        J7 j8 = Q7.f15782a4;
        C3099q c3099q = C3099q.f26624d;
        if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue() || this.f17453j) {
            return ((Boolean) c3099q.f26627c.a(Q7.f15791b4)).booleanValue() && !this.f17454k;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Uri zzc() {
        return this.f17451h;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void zzd() throws IOException {
        if (!this.f17450g) {
            throw new IOException("Attempt to close an already closed CacheDataSource.");
        }
        this.f17450g = false;
        this.f17451h = null;
        InputStream inputStream = this.f17449f;
        if (inputStream == null) {
            this.f17445b.zzd();
        } else {
            AbstractC2987b.e(inputStream);
            this.f17449f = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final /* synthetic */ Map zze() {
        return Collections.emptyMap();
    }
}
