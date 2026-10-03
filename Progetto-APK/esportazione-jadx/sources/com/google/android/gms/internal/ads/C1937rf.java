package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import okhttp3.HttpUrl;
import p039f.AbstractC2987b;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1937rf extends Nz {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f20748e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final InterfaceC1556kC f20749f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f20750g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f20751h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f20752i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public InputStream f20753j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f20754k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Uri f20755l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile C1758o6 f20756m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f20757n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f20758o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f20759p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f20760q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f20761r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public D4.b f20762s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final AtomicLong f20763t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final K4 f20764u;

    public C1937rf(Context context, InterfaceC1556kC interfaceC1556kC, String str, int i8, C2145vf c2145vf, K4 k8) {
        super(false);
        this.f20748e = context;
        this.f20749f = interfaceC1556kC;
        this.f20764u = k8;
        this.f20750g = str;
        this.f20751h = i8;
        this.f20757n = false;
        this.f20758o = false;
        this.f20759p = false;
        this.f20760q = false;
        this.f20761r = 0L;
        this.f20763t = new AtomicLong(-1L);
        this.f20762s = null;
        this.f20752i = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15639I1)).booleanValue();
        f(c2145vf);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [com.google.android.gms.internal.ads.GB, com.google.android.gms.internal.ads.pC] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v21, types: [long] */
    /* JADX WARN: Type inference failed for: r3v24 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v46 */
    /* JADX WARN: Type inference failed for: r3v47 */
    /* JADX WARN: Type inference failed for: r5v5, types: [com.google.android.gms.internal.ads.He] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final long a(CD cd) throws Throwable {
        C1654m6 c1654m6F;
        Long l4;
        boolean z7;
        boolean z8;
        long jElapsedRealtime;
        StringBuilder sb;
        if (this.f20754k) {
            throw new IOException("Attempt to open an already open GcacheDataSource.");
        }
        ?? r7 = 1;
        this.f20754k = true;
        this.f20755l = cd.f12592a;
        if (!this.f20752i) {
            k(cd);
        }
        this.f20756m = C1758o6.i(cd.f12592a);
        J7 j8 = Q7.f15759X3;
        C3099q c3099q = C3099q.f26624d;
        boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
        String str = HttpUrl.FRAGMENT_ENCODE_SET;
        if (!zBooleanValue) {
            if (this.f20756m != null) {
                this.f20756m.f20241N = cd.f12594c;
                C1758o6 c1758o6 = this.f20756m;
                String str2 = this.f20750g;
                if (str2 != null) {
                    str = str2;
                }
                c1758o6.f20242O = str;
                this.f20756m.f20243P = this.f20751h;
                c1654m6F = p083k3.l.f25980A.f25989i.f(this.f20756m);
            } else {
                c1654m6F = null;
            }
            if (c1654m6F != null && c1654m6F.o()) {
                this.f20757n = c1654m6F.n();
                this.f20759p = c1654m6F.q();
                this.f20760q = c1654m6F.p();
                this.f20761r = c1654m6F.i();
                this.f20758o = true;
                if (!m()) {
                    this.f20753j = c1654m6F.l();
                    if (this.f20752i) {
                        k(cd);
                    }
                    return -1L;
                }
            }
        } else if (this.f20756m != null) {
            this.f20756m.f20241N = cd.f12594c;
            C1758o6 c1758o7 = this.f20756m;
            String str3 = this.f20750g;
            if (str3 != null) {
                str = str3;
            }
            c1758o7.f20242O = str;
            this.f20756m.f20243P = this.f20751h;
            if (this.f20756m.f20240M) {
                l4 = (Long) c3099q.f26627c.a(Q7.f15774Z3);
            } else {
                l4 = (Long) c3099q.f26627c.a(Q7.f15766Y3);
            }
            ?? LongValue = l4.longValue();
            p083k3.l lVar = p083k3.l.f25980A;
            lVar.f25990j.getClass();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            C1862q6 c1862q6E = C1561kH.e(this.f20748e, this.f20756m);
            try {
                try {
                    C2069u6 c2069u6 = (C2069u6) c1862q6E.f21082G.get(LongValue, TimeUnit.MILLISECONDS);
                    try {
                        this.f20757n = c2069u6.f21201b;
                        this.f20759p = c2069u6.f21202c;
                        this.f20760q = c2069u6.f21204e;
                        this.f20761r = c2069u6.f21203d;
                        if (!m()) {
                            this.f20753j = c2069u6.f21200a;
                            if (this.f20752i) {
                                k(cd);
                            }
                            lVar.f25990j.getClass();
                            long jElapsedRealtime3 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                            InterfaceC0759He interfaceC0759He = ((C2145vf) this.f20764u.f14301H).f21538P;
                            if (interfaceC0759He != null) {
                                interfaceC0759He.b(jElapsedRealtime3, true);
                            }
                            this.f20758o = true;
                            p113o3.I.k("Cache connection took " + jElapsedRealtime3 + "ms");
                            return -1L;
                        }
                        lVar.f25990j.getClass();
                        long jElapsedRealtime4 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                        InterfaceC0759He interfaceC0759He2 = ((C2145vf) this.f20764u.f14301H).f21538P;
                        if (interfaceC0759He2 != null) {
                            interfaceC0759He2.b(jElapsedRealtime4, true);
                        }
                        this.f20758o = true;
                        sb = new StringBuilder("Cache connection took ");
                        sb.append(jElapsedRealtime4);
                    } catch (InterruptedException unused) {
                        z8 = true;
                        c1862q6E.cancel(true);
                        Thread.currentThread().interrupt();
                        p083k3.l.f25980A.f25990j.getClass();
                        jElapsedRealtime = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                        InterfaceC0759He interfaceC0759He3 = ((C2145vf) this.f20764u.f14301H).f21538P;
                        if (interfaceC0759He3 != null) {
                            interfaceC0759He3.b(jElapsedRealtime, z8);
                        }
                        this.f20758o = z8;
                        sb = new StringBuilder("Cache connection took ");
                        LongValue = z8;
                        sb.append(jElapsedRealtime);
                    } catch (ExecutionException | TimeoutException unused2) {
                        z7 = true;
                        c1862q6E.cancel(true);
                        p083k3.l.f25980A.f25990j.getClass();
                        jElapsedRealtime = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                        InterfaceC0759He interfaceC0759He4 = ((C2145vf) this.f20764u.f14301H).f21538P;
                        if (interfaceC0759He4 != null) {
                            interfaceC0759He4.b(jElapsedRealtime, z7);
                        }
                        this.f20758o = z7;
                        sb = new StringBuilder("Cache connection took ");
                        LongValue = z7;
                        sb.append(jElapsedRealtime);
                    } catch (Throwable th) {
                        th = th;
                        p083k3.l.f25980A.f25990j.getClass();
                        long jElapsedRealtime5 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                        ?? r8 = ((C2145vf) this.f20764u.f14301H).f21538P;
                        if (r8 != 0) {
                            r8.b(jElapsedRealtime5, r7);
                        }
                        this.f20758o = r7;
                        p113o3.I.k("Cache connection took " + jElapsedRealtime5 + "ms");
                        throw th;
                    }
                } catch (InterruptedException unused3) {
                    z8 = false;
                } catch (ExecutionException | TimeoutException unused4) {
                    z7 = false;
                } catch (Throwable th2) {
                    th = th2;
                    r7 = 0;
                }
                sb.append("ms");
                p113o3.I.k(sb.toString());
            } catch (Throwable th3) {
                th = th3;
                r7 = LongValue;
            }
        }
        this.f20758o = false;
        if (this.f20756m != null) {
            Map map = cd.f12593b;
            long j9 = cd.f12594c;
            long j10 = cd.f12595d;
            int i8 = cd.f12596e;
            Uri uri = Uri.parse(this.f20756m.f20234G);
            if (uri == null) {
                throw new IllegalStateException("The uri must be set.");
            }
            cd = new CD(uri, map, j9, j10, i8);
        }
        return this.f20749f.a(cd);
    }

    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) throws IOException {
        if (!this.f20754k) {
            throw new IOException("Attempt to read closed GcacheDataSource.");
        }
        InputStream inputStream = this.f20753j;
        int iE = inputStream != null ? inputStream.read(bArr, i8, i9) : this.f20749f.e(bArr, i8, i9);
        if (!this.f20752i || this.f20753j != null) {
            zzg(iE);
        }
        return iE;
    }

    public final long l() {
        if (this.f20756m != null) {
            if (this.f20763t.get() != -1) {
                return this.f20763t.get();
            }
            synchronized (this) {
                try {
                    if (this.f20762s == null) {
                        this.f20762s = AbstractC1988se.f20906a.b(new CallableC1419he(this, 2));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.f20762s.isDone()) {
                try {
                    this.f20763t.compareAndSet(-1L, ((Long) this.f20762s.get()).longValue());
                    return this.f20763t.get();
                } catch (InterruptedException | ExecutionException unused) {
                }
            }
        }
        return -1L;
    }

    public final boolean m() {
        if (!this.f20752i) {
            return false;
        }
        J7 j8 = Q7.f15782a4;
        C3099q c3099q = C3099q.f26624d;
        if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue() || this.f20759p) {
            return ((Boolean) c3099q.f26627c.a(Q7.f15791b4)).booleanValue() && !this.f20760q;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Uri zzc() {
        return this.f20755l;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void zzd() throws IOException {
        if (!this.f20754k) {
            throw new IOException("Attempt to close an already closed GcacheDataSource.");
        }
        this.f20754k = false;
        this.f20755l = null;
        boolean z7 = (this.f20752i && this.f20753j == null) ? false : true;
        InputStream inputStream = this.f20753j;
        if (inputStream != null) {
            AbstractC2987b.e(inputStream);
            this.f20753j = null;
        } else {
            this.f20749f.zzd();
        }
        if (z7) {
            i();
        }
    }
}
