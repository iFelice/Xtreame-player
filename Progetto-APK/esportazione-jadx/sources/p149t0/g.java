package p149t0;

import N.C0260i;
import android.net.Uri;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.google.android.gms.internal.measurement.H1;
import java.io.InterruptedIOException;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p117p0.M;
import p141s0.C3185j;
import p141s0.C3187l;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;
import p141s0.J;
import p141s0.N;
import p141s0.O;
import p148t.a;

/* JADX INFO: loaded from: classes.dex */
public final class g implements InterfaceC3184i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f30186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC3184i f30187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final N f30188c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InterfaceC3184i f30189d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final k f30190e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f30191f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f30192g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f30193h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Uri f30194i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public C3188m f30195j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public C3188m f30196k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public InterfaceC3184i f30197l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f30198m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f30199n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f30200o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public w f30201p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f30202q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f30203r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f30204s;

    public g(b bVar, InterfaceC3184i interfaceC3184i, InterfaceC3184i interfaceC3184i2, e eVar, int i8) {
        C0260i c0260i = k.f30210F;
        this.f30186a = bVar;
        this.f30187b = interfaceC3184i2;
        this.f30190e = c0260i;
        this.f30191f = (i8 & 1) != 0;
        this.f30192g = (i8 & 2) != 0;
        this.f30193h = (i8 & 4) != 0;
        if (interfaceC3184i != null) {
            this.f30189d = interfaceC3184i;
            this.f30188c = eVar != null ? new N(interfaceC3184i, eVar) : null;
        } else {
            this.f30189d = J.f29901a;
            this.f30188c = null;
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) {
        r rVar;
        b bVar = this.f30186a;
        try {
            ((C0260i) this.f30190e).getClass();
            String string = c3188m.f29970h;
            long j8 = c3188m.f29968f;
            if (string == null) {
                string = c3188m.f29963a.toString();
            }
            C3187l c3187lA = c3188m.a();
            c3187lA.f29960h = string;
            C3188m c3188mA = c3187lA.a();
            this.f30195j = c3188mA;
            Uri uri = c3188mA.f29963a;
            v vVar = (v) bVar;
            synchronized (vVar) {
                n nVarG = vVar.f30245c.g(string);
                rVar = nVarG != null ? nVarG.f30223e : r.f30236c;
            }
            byte[] bArr = (byte[]) rVar.f30238b.get("exo_redir");
            Uri uri2 = null;
            String str = bArr != null ? new String(bArr, StandardCharsets.UTF_8) : null;
            if (str != null) {
                uri2 = Uri.parse(str);
            }
            if (uri2 != null) {
                uri = uri2;
            }
            this.f30194i = uri;
            this.f30199n = j8;
            boolean z7 = this.f30192g;
            long j9 = c3188m.f29969g;
            boolean z8 = (z7 && this.f30202q) || (this.f30193h && j9 == -1);
            this.f30203r = z8;
            if (z8) {
                this.f30200o = -1L;
            } else {
                long jA = a.a(((v) bVar).g(string));
                this.f30200o = jA;
                if (jA != -1) {
                    long j10 = jA - j8;
                    this.f30200o = j10;
                    if (j10 < 0) {
                        throw new C3185j(2008);
                    }
                }
            }
            if (j9 != -1) {
                long j11 = this.f30200o;
                this.f30200o = j11 == -1 ? j9 : Math.min(j11, j9);
            }
            long j12 = this.f30200o;
            if (j12 > 0 || j12 == -1) {
                t(c3188mA, false);
            }
            return j9 != -1 ? j9 : this.f30200o;
        } catch (Throwable th) {
            if (this.f30197l == this.f30187b || (th instanceof a)) {
                this.f30202q = true;
            }
            throw th;
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final void close() {
        this.f30195j = null;
        this.f30194i = null;
        this.f30199n = 0L;
        try {
            s();
        } catch (Throwable th) {
            if (this.f30197l == this.f30187b || (th instanceof a)) {
                this.f30202q = true;
            }
            throw th;
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        return this.f30194i;
    }

    @Override // p141s0.InterfaceC3184i
    public final Map k() {
        return (this.f30197l == this.f30187b) ^ true ? this.f30189d.k() : Collections.emptyMap();
    }

    @Override // p141s0.InterfaceC3184i
    public final void p(O o4) {
        o4.getClass();
        this.f30187b.p(o4);
        this.f30189d.p(o4);
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) {
        int i10;
        InterfaceC3184i interfaceC3184i = this.f30187b;
        if (i9 == 0) {
            return 0;
        }
        if (this.f30200o == 0) {
            return -1;
        }
        C3188m c3188m = this.f30195j;
        c3188m.getClass();
        C3188m c3188m2 = this.f30196k;
        c3188m2.getClass();
        try {
            if (this.f30199n >= this.f30204s) {
                t(c3188m, true);
            }
            InterfaceC3184i interfaceC3184i2 = this.f30197l;
            interfaceC3184i2.getClass();
            int iQ = interfaceC3184i2.q(bArr, i8, i9);
            if (iQ != -1) {
                long j8 = iQ;
                this.f30199n += j8;
                this.f30198m += j8;
                long j9 = this.f30200o;
                if (j9 != -1) {
                    this.f30200o = j9 - j8;
                }
                return iQ;
            }
            InterfaceC3184i interfaceC3184i3 = this.f30197l;
            if (!(interfaceC3184i3 == interfaceC3184i)) {
                i10 = iQ;
                long j10 = c3188m2.f29969g;
                if (j10 == -1 || this.f30198m < j10) {
                    String str = c3188m.f29970h;
                    String str2 = M.f28050a;
                    this.f30200o = 0L;
                    if (interfaceC3184i3 != this.f30188c) {
                        return i10;
                    }
                    x0 x0Var = new x0(3);
                    x0Var.h(Long.valueOf(this.f30199n), "exo_len");
                    ((v) this.f30186a).c(x0Var, str);
                    return i10;
                }
            } else {
                i10 = iQ;
            }
            long j11 = this.f30200o;
            if (j11 <= 0 && j11 != -1) {
                return i10;
            }
            s();
            t(c3188m, false);
            return q(bArr, i8, i9);
        } catch (Throwable th) {
            if (this.f30197l == interfaceC3184i || (th instanceof a)) {
                this.f30202q = true;
            }
            throw th;
        }
    }

    public final void s() {
        b bVar = this.f30186a;
        InterfaceC3184i interfaceC3184i = this.f30197l;
        if (interfaceC3184i == null) {
            return;
        }
        try {
            interfaceC3184i.close();
        } finally {
            this.f30196k = null;
            this.f30197l = null;
            w wVar = this.f30201p;
            if (wVar != null) {
                ((v) bVar).j(wVar);
                this.f30201p = null;
            }
        }
    }

    public final void t(C3188m c3188m, boolean z7) throws InterruptedIOException {
        w wVarL;
        C3188m c3188mA;
        InterfaceC3184i interfaceC3184i;
        String str = c3188m.f29970h;
        String str2 = M.f28050a;
        if (this.f30203r) {
            wVarL = null;
        } else if (this.f30191f) {
            try {
                b bVar = this.f30186a;
                long j8 = this.f30199n;
                long j9 = this.f30200o;
                v vVar = (v) bVar;
                synchronized (vVar) {
                    vVar.d();
                    while (true) {
                        wVarL = vVar.l(j8, j9, str);
                        if (wVarL != null) {
                            break;
                        } else {
                            vVar.wait();
                        }
                    }
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException();
            }
        } else {
            wVarL = ((v) this.f30186a).l(this.f30199n, this.f30200o, str);
        }
        if (wVarL == null) {
            interfaceC3184i = this.f30189d;
            C3187l c3187lA = c3188m.a();
            c3187lA.f29958f = this.f30199n;
            c3187lA.f29959g = this.f30200o;
            c3188mA = c3187lA.a();
        } else if (wVarL.f30214J) {
            Uri uriFromFile = Uri.fromFile(wVarL.f30215K);
            long j10 = wVarL.f30212H;
            long j11 = this.f30199n - j10;
            long jMin = wVarL.f30213I - j11;
            long j12 = this.f30200o;
            if (j12 != -1) {
                jMin = Math.min(jMin, j12);
            }
            C3187l c3187lA2 = c3188m.a();
            c3187lA2.f29953a = uriFromFile;
            c3187lA2.f29954b = j10;
            c3187lA2.f29958f = j11;
            c3187lA2.f29959g = jMin;
            c3188mA = c3187lA2.a();
            interfaceC3184i = this.f30187b;
        } else {
            long jMin2 = wVarL.f30213I;
            if (jMin2 == -1) {
                jMin2 = this.f30200o;
            } else {
                long j13 = this.f30200o;
                if (j13 != -1) {
                    jMin2 = Math.min(jMin2, j13);
                }
            }
            C3187l c3187lA3 = c3188m.a();
            c3187lA3.f29958f = this.f30199n;
            c3187lA3.f29959g = jMin2;
            c3188mA = c3187lA3.a();
            interfaceC3184i = this.f30188c;
            if (interfaceC3184i == null) {
                interfaceC3184i = this.f30189d;
                ((v) this.f30186a).j(wVarL);
                wVarL = null;
            }
        }
        this.f30204s = (this.f30203r || interfaceC3184i != this.f30189d) ? Long.MAX_VALUE : this.f30199n + 102400;
        if (z7) {
            H1.i(this.f30197l == this.f30189d);
            if (interfaceC3184i == this.f30189d) {
                return;
            }
            try {
                s();
            } catch (Throwable th) {
                if (!(!wVarL.f30214J)) {
                    throw th;
                }
                ((v) this.f30186a).j(wVarL);
                throw th;
            }
        }
        if (wVarL != null && (!wVarL.f30214J)) {
            this.f30201p = wVarL;
        }
        this.f30197l = interfaceC3184i;
        this.f30196k = c3188mA;
        this.f30198m = 0L;
        long jA = interfaceC3184i.a(c3188mA);
        x0 x0Var = new x0(3);
        if (c3188mA.f29969g == -1 && jA != -1) {
            this.f30200o = jA;
            x0Var.h(Long.valueOf(this.f30199n + jA), "exo_len");
        }
        if (!(this.f30197l == this.f30187b)) {
            Uri uri = interfaceC3184i.getUri();
            this.f30194i = uri;
            Uri uri2 = c3188m.f29963a.equals(uri) ^ true ? this.f30194i : null;
            if (uri2 == null) {
                ((List) x0Var.f22391I).add("exo_redir");
                ((Map) x0Var.f22390H).remove("exo_redir");
            } else {
                x0Var.h(uri2.toString(), "exo_redir");
            }
        }
        if (this.f30197l == this.f30188c) {
            ((v) this.f30186a).c(x0Var, str);
        }
    }
}
