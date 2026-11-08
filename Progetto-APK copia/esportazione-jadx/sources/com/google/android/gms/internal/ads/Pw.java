package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.IBinder;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.List;
import okhttp3.HttpUrl;
import p090l3.C3099q;
import p090l3.C3117z0;

/* JADX INFO: loaded from: classes.dex */
public final class Pw implements Ow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f15502a;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f15517p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f15503b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f15504c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f15505d = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f15518q = 2;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f15519r = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f15506e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f15507f = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f15508g = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f15509h = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f15510i = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f15511j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f15512k = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f15513l = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f15514m = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f15515n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f15516o = false;

    public Pw(Context context, int i8) {
        this.f15502a = context;
        this.f15517p = i8;
    }

    @Override // com.google.android.gms.internal.ads.Ow
    public final Ow a(int i8) {
        synchronized (this) {
            this.f15511j = i8;
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.Ow
    public final Ow b(int i8) {
        synchronized (this) {
            this.f15518q = i8;
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.Ow
    public final Ow c(C2246xc c2246xc) {
        synchronized (this) {
            try {
                if (!TextUtils.isEmpty(((Qv) c2246xc.f21883I).f16150b)) {
                    this.f15507f = ((Qv) c2246xc.f21883I).f16150b;
                }
                for (Ov ov : (List) c2246xc.f21882H) {
                    if (!TextUtils.isEmpty(ov.f15249b0)) {
                        this.f15508g = ov.f15249b0;
                        break;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.Ow
    public final Ow d(Throwable th) {
        synchronized (this) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.c8)).booleanValue()) {
                String strA = p120p3.d.a(C0667Bc.f(th), "SHA-256");
                if (strA == null) {
                    strA = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                this.f15513l = strA;
                String strF = C0667Bc.f(th);
                Xu xuJ = Xu.j(new C2061tz('\n'));
                strF.getClass();
                this.f15512k = (String) xuJ.t(strF).next();
            }
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.Ow
    public final Ow e(boolean z7) {
        synchronized (this) {
            this.f15505d = z7;
        }
        return this;
    }

    public final synchronized void f() {
        p083k3.l.f25980A.f25990j.getClass();
        this.f15504c = SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.internal.ads.Ow
    public final Ow g(C3117z0 c3117z0) {
        synchronized (this) {
            try {
                IBinder iBinder = c3117z0.f26633K;
                if (iBinder != null) {
                    BinderC1630lj binderC1630lj = (BinderC1630lj) iBinder;
                    String str = binderC1630lj.f19827J;
                    if (!TextUtils.isEmpty(str)) {
                        this.f15507f = str;
                    }
                    String str2 = binderC1630lj.f19825H;
                    if (!TextUtils.isEmpty(str2)) {
                        this.f15508g = str2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this;
    }

    public final synchronized void h() {
        Configuration configuration;
        p083k3.l lVar = p083k3.l.f25980A;
        this.f15506e = lVar.f25985e.X(this.f15502a);
        Resources resources = this.f15502a.getResources();
        int i8 = 2;
        if (resources != null && (configuration = resources.getConfiguration()) != null) {
            i8 = configuration.orientation == 2 ? 4 : 3;
        }
        this.f15519r = i8;
        lVar.f25990j.getClass();
        this.f15503b = SystemClock.elapsedRealtime();
        this.f15516o = true;
    }

    @Override // com.google.android.gms.internal.ads.Ow
    public final Ow i(String str) {
        synchronized (this) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.c8)).booleanValue()) {
                this.f15514m = str;
            }
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.Ow
    public final Ow o(String str) {
        synchronized (this) {
            this.f15510i = str;
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.Ow
    public final Ow s(String str) {
        synchronized (this) {
            this.f15509h = str;
        }
        return this;
    }

    @Override // com.google.android.gms.internal.ads.Ow
    public final /* bridge */ /* synthetic */ Ow zzi() {
        h();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.Ow
    public final /* bridge */ /* synthetic */ Ow zzj() {
        f();
        return this;
    }

    @Override // com.google.android.gms.internal.ads.Ow
    public final synchronized boolean zzk() {
        return this.f15516o;
    }

    @Override // com.google.android.gms.internal.ads.Ow
    public final boolean zzl() {
        return !TextUtils.isEmpty(this.f15509h);
    }

    @Override // com.google.android.gms.internal.ads.Ow
    public final synchronized Qw zzm() {
        try {
            if (this.f15515n) {
                return null;
            }
            this.f15515n = true;
            if (!this.f15516o) {
                h();
            }
            if (this.f15504c < 0) {
                f();
            }
            return new Qw(this);
        } catch (Throwable th) {
            throw th;
        }
    }
}
