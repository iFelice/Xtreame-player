package p126q1;

import C0.C0080e;
import F2.G;
import W0.K;
import W0.L;
import com.google.android.gms.internal.measurement.H1;
import java.io.EOFException;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.InterfaceC3127j;
import p094m0.O;
import p117p0.E;
import p117p0.M;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public final class o implements L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final L f29563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k f29564b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public m f29570h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public C3136t f29571i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f29572j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final G f29565c = new G(2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f29567e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f29568f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte[] f29569g = M.f28051b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final E f29566d = new E();

    public o(L l4, k kVar) {
        this.f29563a = l4;
        this.f29564b = kVar;
    }

    @Override // W0.L
    public final void a(int i8, int i9, E e8) {
        if (this.f29570h == null) {
            this.f29563a.a(i8, i9, e8);
            return;
        }
        g(i8);
        e8.j(this.f29568f, this.f29569g, i8);
        this.f29568f += i8;
    }

    @Override // W0.L
    public final void b(C3136t c3136t) {
        c3136t.f27041o.getClass();
        String str = c3136t.f27041o;
        H1.d(O.i(str) == 3);
        boolean zEquals = c3136t.equals(this.f29571i);
        k kVar = this.f29564b;
        if (!zEquals) {
            this.f29571i = c3136t;
            this.f29570h = ((G) kVar).K(c3136t) ? ((G) kVar).x(c3136t) : null;
        }
        m mVar = this.f29570h;
        L l4 = this.f29563a;
        if (mVar == null) {
            l4.b(c3136t);
            return;
        }
        C3135s c3135sA = c3136t.a();
        c3135sA.f26996n = O.p("application/x-media3-cues");
        c3135sA.f26992j = str;
        c3135sA.f27001s = Long.MAX_VALUE;
        c3135sA.f26979L = ((G) kVar).D(c3136t);
        l4.b(c3135sA.a());
    }

    @Override // W0.L
    public final int c(InterfaceC3127j interfaceC3127j, int i8, boolean z7) throws EOFException {
        if (this.f29570h == null) {
            return this.f29563a.c(interfaceC3127j, i8, z7);
        }
        g(i8);
        int iQ = interfaceC3127j.q(this.f29569g, this.f29568f, i8);
        if (iQ != -1) {
            this.f29568f += iQ;
            return iQ;
        }
        if (z7) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // W0.L
    public final void d(long j8, int i8, int i9, int i10, K k8) {
        if (this.f29570h == null) {
            this.f29563a.d(j8, i8, i9, i10, k8);
            return;
        }
        H1.c("DRM on subtitles is not supported", k8 == null);
        int i11 = (this.f29568f - i10) - i9;
        try {
            this.f29570h.b(this.f29569g, i11, i9, l.f29556c, new C0080e(i8, 2, j8, this));
        } catch (RuntimeException e8) {
            if (!this.f29572j) {
                throw e8;
            }
            x.g("SubtitleTranscodingTO", "Parsing subtitles failed, ignoring sample.", e8);
        }
        int i12 = i11 + i9;
        this.f29567e = i12;
        if (i12 == this.f29568f) {
            this.f29567e = 0;
            this.f29568f = 0;
        }
    }

    @Override // W0.L
    public final /* synthetic */ void e(int i8, E e8) {
        A0.O.b(this, e8, i8);
    }

    @Override // W0.L
    public final int f(InterfaceC3127j interfaceC3127j, int i8, boolean z7) {
        return c(interfaceC3127j, i8, z7);
    }

    public final void g(int i8) {
        int length = this.f29569g.length;
        int i9 = this.f29568f;
        if (length - i9 >= i8) {
            return;
        }
        int i10 = i9 - this.f29567e;
        int iMax = Math.max(i10 * 2, i8 + i10);
        byte[] bArr = this.f29569g;
        byte[] bArr2 = iMax <= bArr.length ? bArr : new byte[iMax];
        System.arraycopy(bArr, this.f29567e, bArr2, 0, i10);
        this.f29567e = 0;
        this.f29568f = i10;
        this.f29569g = bArr2;
    }
}
