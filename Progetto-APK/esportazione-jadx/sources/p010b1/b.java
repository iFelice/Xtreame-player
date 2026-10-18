package p010b1;

import F.d;
import W0.C0373f;
import W0.C0374g;
import W0.F;
import W0.L;
import W0.s;
import W0.t;
import W0.u;
import W0.w;
import W0.x;
import W0.y;
import Z3.C;
import androidx.media3.decoder.flac.a;
import androidx.media3.extractor.FlacStreamMetadata;
import androidx.media3.extractor.metadata.flac.PictureFrame;
import com.google.android.gms.internal.measurement.H1;
import java.util.Arrays;
import java.util.List;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.N;
import p094m0.O;
import p094m0.P;
import p117p0.D;
import p117p0.E;
import p117p0.M;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class b implements s {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public u f9820e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public L f9821f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public N f9823h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public FlacStreamMetadata f9824i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f9825j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f9826k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public a f9827l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f9828m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f9829n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f9816a = new byte[42];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final E f9817b = new E(new byte[32768], 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f9818c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final w f9819d = new w();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f9822g = 0;

    @Override // W0.s
    public final void d(u uVar) {
        this.f9820e = uVar;
        this.f9821f = uVar.t(0, 1);
        uVar.j();
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        C.g(tVar, false);
        E e8 = new E(4);
        tVar.c(0, e8.f28035a, 4);
        return e8.B() == 1716281667;
    }

    @Override // W0.s
    public final int h(t tVar, w wVar) throws P {
        boolean zH;
        F xVar;
        long j8;
        boolean zB;
        int i8 = this.f9822g;
        boolean z7 = true;
        if (i8 == 0) {
            boolean z8 = !this.f9818c;
            tVar.m();
            long jF = tVar.f();
            N nG = C.g(tVar, z8);
            tVar.n((int) (tVar.f() - jF));
            this.f9823h = nG;
            this.f9822g = 1;
            return 0;
        }
        byte[] bArr = this.f9816a;
        if (i8 == 1) {
            tVar.c(0, bArr, bArr.length);
            tVar.m();
            this.f9822g = 2;
            return 0;
        }
        if (i8 == 2) {
            E e8 = new E(4);
            tVar.readFully(e8.f28035a, 0, 4);
            if (e8.B() != 1716281667) {
                throw P.a("Failed to read FLAC stream marker.", null);
            }
            this.f9822g = 3;
            return 0;
        }
        if (i8 == 3) {
            FlacStreamMetadata flacStreamMetadataCopyWithPictureFrames = this.f9824i;
            do {
                tVar.m();
                D d6 = new D(new byte[4], 0, (Object) null);
                tVar.c(0, d6.f28028b, 4);
                zH = d6.h();
                int i9 = d6.i(7);
                int i10 = d6.i(24) + 4;
                if (i9 == 0) {
                    byte[] bArr2 = new byte[38];
                    tVar.readFully(bArr2, 0, 38);
                    flacStreamMetadataCopyWithPictureFrames = new FlacStreamMetadata(bArr2, 4);
                } else {
                    if (flacStreamMetadataCopyWithPictureFrames == null) {
                        throw new IllegalArgumentException();
                    }
                    if (i9 == 3) {
                        E e9 = new E(i10);
                        tVar.readFully(e9.f28035a, 0, i10);
                        flacStreamMetadataCopyWithPictureFrames = flacStreamMetadataCopyWithPictureFrames.copyWithSeekTable(C.i(e9));
                    } else if (i9 == 4) {
                        E e10 = new E(i10);
                        tVar.readFully(e10.f28035a, 0, i10);
                        e10.M(4);
                        flacStreamMetadataCopyWithPictureFrames = flacStreamMetadataCopyWithPictureFrames.copyWithVorbisComments(Arrays.asList((String[]) H1.u(e10, false, false).f2963J));
                    } else if (i9 == 6) {
                        E e11 = new E(i10);
                        tVar.readFully(e11.f28035a, 0, i10);
                        e11.M(4);
                        flacStreamMetadataCopyWithPictureFrames = flacStreamMetadataCopyWithPictureFrames.copyWithPictureFrames(H.x(PictureFrame.fromPictureBlock(e11)));
                    } else {
                        tVar.n(i10);
                    }
                }
                String str = M.f28050a;
                this.f9824i = flacStreamMetadataCopyWithPictureFrames;
            } while (!zH);
            flacStreamMetadataCopyWithPictureFrames.getClass();
            this.f9825j = Math.max(this.f9824i.minFrameSize, 6);
            C3136t format = this.f9824i.getFormat(bArr, this.f9823h);
            L l4 = this.f9821f;
            C3135s c3135sA = format.a();
            c3135sA.f26995m = O.p("audio/flac");
            l4.b(new C3136t(c3135sA));
            L l8 = this.f9821f;
            this.f9824i.getDurationUs();
            l8.getClass();
            this.f9822g = 4;
            return 0;
        }
        long j9 = 0;
        if (i8 == 4) {
            tVar.m();
            E e12 = new E(2);
            tVar.c(0, e12.f28035a, 2);
            int iF = e12.F();
            if ((iF >> 2) != 16382) {
                tVar.m();
                throw P.a("First frame does not start with sync code.", null);
            }
            tVar.m();
            this.f9826k = iF;
            u uVar = this.f9820e;
            String str2 = M.f28050a;
            long jR = tVar.r();
            long j10 = tVar.j();
            this.f9824i.getClass();
            FlacStreamMetadata flacStreamMetadata = this.f9824i;
            y yVar = flacStreamMetadata.seekTable;
            if (yVar != null && yVar.f7462a.length > 0) {
                xVar = new x(flacStreamMetadata, 0, jR);
            } else if (j10 == -1 || flacStreamMetadata.totalSamples <= 0) {
                xVar = new x(flacStreamMetadata.getDurationUs());
            } else {
                a aVar = new a(new a(1, flacStreamMetadata), new d(flacStreamMetadata, this.f9826k), flacStreamMetadata.getDurationUs(), flacStreamMetadata.totalSamples, jR, j10, flacStreamMetadata.getApproxBytesPerFrame(), Math.max(6, flacStreamMetadata.minFrameSize));
                this.f9827l = aVar;
                xVar = (C0373f) aVar.f7425b;
            }
            uVar.r(xVar);
            this.f9822g = 5;
            return 0;
        }
        if (i8 != 5) {
            throw new IllegalStateException();
        }
        this.f9821f.getClass();
        this.f9824i.getClass();
        a aVar2 = this.f9827l;
        if (aVar2 != null && ((C0374g) aVar2.f7427d) != null) {
            return aVar2.a(tVar, wVar);
        }
        if (this.f9829n == -1) {
            FlacStreamMetadata flacStreamMetadata2 = this.f9824i;
            tVar.m();
            tVar.g(1);
            byte[] bArr3 = new byte[1];
            tVar.c(0, bArr3, 1);
            boolean z9 = (bArr3[0] & 1) == 1;
            tVar.g(2);
            int i11 = z9 ? 7 : 6;
            E e13 = new E(i11);
            byte[] bArr4 = e13.f28035a;
            int i12 = 0;
            while (i12 < i11) {
                int iH = tVar.h(i12, bArr4, i11 - i12);
                if (iH == -1) {
                    break;
                }
                i12 += iH;
            }
            e13.K(i12);
            tVar.m();
            try {
                long jG = e13.G();
                if (!z9) {
                    jG *= (long) flacStreamMetadata2.maxBlockSizeSamples;
                }
                j9 = jG;
            } catch (NumberFormatException unused) {
                z7 = false;
            }
            if (!z7) {
                throw P.a(null, null);
            }
            this.f9829n = j9;
            return 0;
        }
        E e14 = this.f9817b;
        int i13 = e14.f28037c;
        if (i13 < 32768) {
            int iQ = tVar.q(e14.f28035a, i13, 32768 - i13);
            z7 = iQ == -1;
            if (!z7) {
                e14.K(i13 + iQ);
            } else if (e14.a() == 0) {
                long j11 = this.f9829n * 1000000;
                FlacStreamMetadata flacStreamMetadata3 = this.f9824i;
                String str3 = M.f28050a;
                this.f9821f.d(j11 / ((long) flacStreamMetadata3.sampleRate), 1, this.f9828m, 0, null);
                return -1;
            }
        } else {
            z7 = false;
        }
        int i14 = e14.f28036b;
        int i15 = this.f9828m;
        int i16 = this.f9825j;
        if (i15 < i16) {
            e14.M(Math.min(i16 - i15, e14.a()));
        }
        this.f9824i.getClass();
        int i17 = e14.f28036b;
        while (true) {
            int i18 = e14.f28037c - 16;
            w wVar2 = this.f9819d;
            if (i17 > i18) {
                if (z7) {
                    while (true) {
                        int i19 = e14.f28037c;
                        if (i17 <= i19 - this.f9825j) {
                            e14.L(i17);
                            try {
                                zB = Q3.b.b(e14, this.f9824i, this.f9826k, wVar2);
                            } catch (IndexOutOfBoundsException unused2) {
                                zB = false;
                            }
                            if (e14.f28036b <= e14.f28037c && zB) {
                                e14.L(i17);
                                j8 = wVar2.f7458a;
                                break;
                            }
                            i17++;
                        } else {
                            e14.L(i19);
                        }
                    }
                } else {
                    e14.L(i17);
                }
                j8 = -1;
                break;
            }
            e14.L(i17);
            if (Q3.b.b(e14, this.f9824i, this.f9826k, wVar2)) {
                e14.L(i17);
                j8 = wVar2.f7458a;
                break;
            }
            i17++;
        }
        int i20 = e14.f28036b - i14;
        e14.L(i14);
        this.f9821f.e(i20, e14);
        int i21 = this.f9828m + i20;
        this.f9828m = i21;
        if (j8 != -1) {
            long j12 = this.f9829n * 1000000;
            FlacStreamMetadata flacStreamMetadata4 = this.f9824i;
            String str4 = M.f28050a;
            this.f9821f.d(j12 / ((long) flacStreamMetadata4.sampleRate), 1, i21, 0, null);
            this.f9828m = 0;
            this.f9829n = j8;
        }
        int length = e14.f28035a.length - e14.f28037c;
        if (e14.a() >= 16 || length >= 16) {
            return 0;
        }
        int iA = e14.a();
        byte[] bArr5 = e14.f28035a;
        System.arraycopy(bArr5, e14.f28036b, bArr5, 0, iA);
        e14.L(0);
        e14.K(iA);
        return 0;
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        if (j8 == 0) {
            this.f9822g = 0;
        } else {
            a aVar = this.f9827l;
            if (aVar != null) {
                aVar.d(j9);
            }
        }
        this.f9829n = j9 != 0 ? -1L : 0L;
        this.f9828m = 0;
        this.f9817b.I(0);
    }

    @Override // W0.s
    public final List j() {
        z4.F f8 = H.f31804H;
        return d0.f31844K;
    }

    @Override // W0.s
    public final s b() {
        return this;
    }

    @Override // W0.s
    public final void release() {
    }
}
