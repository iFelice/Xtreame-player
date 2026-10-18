package H0;

import W0.K;
import W0.L;
import java.io.EOFException;
import java.util.Arrays;
import java.util.Objects;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.InterfaceC3127j;
import p094m0.O;
import p117p0.E;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public final class r implements L {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final C3136t f3548g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final C3136t f3549h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p041f1.b f3550a = new p041f1.b(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final L f3551b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C3136t f3552c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C3136t f3553d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f3554e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3555f;

    static {
        C3135s c3135s = new C3135s();
        c3135s.f26996n = O.p("application/id3");
        f3548g = c3135s.a();
        C3135s c3135s2 = new C3135s();
        c3135s2.f26996n = O.p("application/x-emsg");
        f3549h = c3135s2.a();
    }

    public r(L l4, int i8) {
        this.f3551b = l4;
        if (i8 == 1) {
            this.f3552c = f3548g;
        } else {
            if (i8 != 3) {
                throw new IllegalArgumentException(p000a.r.f("Unknown metadataType: ", i8));
            }
            this.f3552c = f3549h;
        }
        this.f3554e = new byte[0];
        this.f3555f = 0;
    }

    @Override // W0.L
    public final void a(int i8, int i9, E e8) {
        int i10 = this.f3555f + i8;
        byte[] bArr = this.f3554e;
        if (bArr.length < i10) {
            this.f3554e = Arrays.copyOf(bArr, (i10 / 2) + i10);
        }
        e8.j(this.f3555f, this.f3554e, i8);
        this.f3555f += i8;
    }

    @Override // W0.L
    public final void b(C3136t c3136t) {
        this.f3553d = c3136t;
        this.f3551b.b(this.f3552c);
    }

    @Override // W0.L
    public final int c(InterfaceC3127j interfaceC3127j, int i8, boolean z7) throws EOFException {
        int i9 = this.f3555f + i8;
        byte[] bArr = this.f3554e;
        if (bArr.length < i9) {
            this.f3554e = Arrays.copyOf(bArr, (i9 / 2) + i9);
        }
        int iQ = interfaceC3127j.q(this.f3554e, this.f3555f, i8);
        if (iQ != -1) {
            this.f3555f += iQ;
            return iQ;
        }
        if (z7) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // W0.L
    public final void d(long j8, int i8, int i9, int i10, K k8) {
        this.f3553d.getClass();
        int i11 = this.f3555f - i10;
        E e8 = new E(Arrays.copyOfRange(this.f3554e, i11 - i9, i11));
        byte[] bArr = this.f3554e;
        System.arraycopy(bArr, i11, bArr, 0, i10);
        this.f3555f = i10;
        String str = this.f3553d.f27041o;
        C3136t c3136t = this.f3552c;
        if (!Objects.equals(str, c3136t.f27041o)) {
            if (!"application/x-emsg".equals(this.f3553d.f27041o)) {
                x.f("HlsSampleStreamWrapper", "Ignoring sample for unsupported format: " + this.f3553d.f27041o);
                return;
            }
            this.f3550a.getClass();
            p049g1.a aVarU = p041f1.b.u(e8);
            C3136t wrappedMetadataFormat = aVarU.getWrappedMetadataFormat();
            String str2 = c3136t.f27041o;
            if (wrappedMetadataFormat == null || !Objects.equals(str2, wrappedMetadataFormat.f27041o)) {
                x.f("HlsSampleStreamWrapper", "Ignoring EMSG. Expected it to contain wrapped " + str2 + " but actual wrapped format: " + aVarU.getWrappedMetadataFormat());
                return;
            }
            byte[] wrappedMetadataBytes = aVarU.getWrappedMetadataBytes();
            wrappedMetadataBytes.getClass();
            e8 = new E(wrappedMetadataBytes);
        }
        int iA = e8.a();
        this.f3551b.e(iA, e8);
        this.f3551b.d(j8, i8, iA, 0, k8);
    }

    @Override // W0.L
    public final /* synthetic */ void e(int i8, E e8) {
        A0.O.b(this, e8, i8);
    }

    @Override // W0.L
    public final int f(InterfaceC3127j interfaceC3127j, int i8, boolean z7) {
        return c(interfaceC3127j, i8, z7);
    }
}
