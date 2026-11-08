package J0;

import A0.O;
import B0.AbstractC0051h;
import B0.C0072w;
import B0.Z;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Trace;
import androidx.media3.exoplayer.image.ImageOutput;
import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import p094m0.C3136t;

/* JADX INFO: loaded from: classes.dex */
public final class g extends AbstractC0051h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final F.d f4070G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p171w0.g f4071H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ArrayDeque f4072I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f4073J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f4074K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public e f4075L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public long f4076M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public long f4077N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f4078O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f4079P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public C3136t f4080Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public b f4081R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public p171w0.g f4082S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public ImageOutput f4083T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public Bitmap f4084U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public boolean f4085V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public f f4086W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public f f4087X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public int f4088Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public boolean f4089Z;

    public g(F.d dVar) {
        super(4);
        this.f4070G = dVar;
        this.f4083T = ImageOutput.f9471a;
        this.f4071H = new p171w0.g(0, 0);
        this.f4075L = e.f4064c;
        this.f4072I = new ArrayDeque();
        this.f4077N = -9223372036854775807L;
        this.f4076M = -9223372036854775807L;
        this.f4078O = 0;
        this.f4079P = 1;
    }

    /* JADX WARN: Code duplicated, block: B:63:0x00f4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:74:0x0142  */
    public final boolean a(long j8) throws C0072w {
        Bitmap bitmapCreateBitmap;
        if (this.f4084U != null && this.f4086W == null) {
            return false;
        }
        if (this.f4079P == 0 && getState() != 2) {
            return false;
        }
        Bitmap bitmap = this.f4084U;
        ArrayDeque arrayDeque = this.f4072I;
        if (bitmap == null) {
            H1.j(this.f4081R);
            a aVar = (a) this.f4081R.dequeueOutputBuffer();
            if (aVar == null) {
                return false;
            }
            if (aVar.isEndOfStream()) {
                if (this.f4078O == 3) {
                    d();
                    H1.j(this.f4080Q);
                    c();
                } else {
                    aVar.release();
                    if (arrayDeque.isEmpty()) {
                        this.f4074K = true;
                    }
                }
                return false;
            }
            H1.k(aVar.f4060G, "Non-EOS buffer came back from the decoder without bitmap.");
            this.f4084U = aVar.f4060G;
            aVar.release();
        }
        if (!this.f4085V || this.f4084U == null || this.f4086W == null) {
            return false;
        }
        H1.j(this.f4080Q);
        C3136t c3136t = this.f4080Q;
        int i8 = c3136t.f27023N;
        int i9 = c3136t.f27024O;
        boolean z7 = ((i8 == 1 && i9 == 1) || i8 == -1 || i9 == -1) ? false : true;
        f fVar = this.f4086W;
        if (fVar.f4069c == null) {
            if (z7) {
                H1.j(this.f4084U);
                int width = this.f4084U.getWidth();
                C3136t c3136t2 = this.f4080Q;
                H1.j(c3136t2);
                int i10 = width / c3136t2.f27023N;
                int height = this.f4084U.getHeight();
                C3136t c3136t3 = this.f4080Q;
                H1.j(c3136t3);
                int i11 = height / c3136t3.f27024O;
                int i12 = this.f4080Q.f27023N;
                int i13 = fVar.f4067a;
                bitmapCreateBitmap = Bitmap.createBitmap(this.f4084U, (i13 % i12) * i10, (i13 / i12) * i11, i10, i11);
            } else {
                bitmapCreateBitmap = this.f4084U;
                H1.j(bitmapCreateBitmap);
            }
            fVar.f4069c = bitmapCreateBitmap;
        }
        Bitmap bitmap2 = this.f4086W.f4069c;
        H1.j(bitmap2);
        long j9 = this.f4086W.f4068b;
        long j10 = j9 - j8;
        boolean z8 = getState() == 2;
        int i14 = this.f4079P;
        if (i14 != 0) {
            if (i14 != 1) {
                if (i14 != 3) {
                    throw new IllegalStateException();
                }
                if (j10 >= 30000) {
                    return false;
                }
            }
        } else if (!z8) {
            if (j10 >= 30000) {
                return false;
            }
        }
        this.f4083T.onImageAvailable(j9 - this.f4075L.f4066b, bitmap2);
        f fVar2 = this.f4086W;
        H1.j(fVar2);
        long j11 = fVar2.f4068b;
        this.f4076M = j11;
        while (!arrayDeque.isEmpty() && j11 >= ((e) arrayDeque.peek()).f4065a) {
            this.f4075L = (e) arrayDeque.removeFirst();
        }
        this.f4079P = 3;
        if (z7) {
            f fVar3 = this.f4086W;
            H1.j(fVar3);
            C3136t c3136t4 = this.f4080Q;
            H1.j(c3136t4);
            C3136t c3136t5 = this.f4080Q;
            H1.j(c3136t5);
            if (fVar3.f4067a == (c3136t4.f27024O * c3136t5.f27023N) - 1) {
                this.f4084U = null;
            }
        } else {
            this.f4084U = null;
        }
        this.f4086W = this.f4087X;
        this.f4087X = null;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x007f  */
    /* JADX WARN: Code duplicated, block: B:80:0x010b  */
    public final boolean b(long j8) {
        boolean z7;
        C3136t c3136t;
        int i8;
        if (this.f4085V && this.f4086W != null) {
            return false;
        }
        Z formatHolder = getFormatHolder();
        b bVar = this.f4081R;
        if (bVar == null || this.f4078O == 3 || this.f4073J) {
            return false;
        }
        if (this.f4082S == null) {
            p171w0.g gVar = (p171w0.g) bVar.dequeueInputBuffer();
            this.f4082S = gVar;
            if (gVar == null) {
                return false;
            }
        }
        if (this.f4078O == 2) {
            H1.j(this.f4082S);
            this.f4082S.setFlags(4);
            b bVar2 = this.f4081R;
            H1.j(bVar2);
            bVar2.queueInputBuffer(this.f4082S);
            this.f4082S = null;
            this.f4078O = 3;
            return false;
        }
        int source = readSource(formatHolder, this.f4082S, 0);
        if (source == -5) {
            C3136t c3136t2 = formatHolder.f904b;
            H1.j(c3136t2);
            this.f4080Q = c3136t2;
            this.f4089Z = true;
            this.f4078O = 2;
            return true;
        }
        if (source != -4) {
            if (source == -3) {
                return false;
            }
            throw new IllegalStateException();
        }
        this.f4082S.g();
        ByteBuffer byteBuffer = this.f4082S.f30904I;
        if (byteBuffer == null || byteBuffer.remaining() <= 0) {
            p171w0.g gVar2 = this.f4082S;
            H1.j(gVar2);
            if (gVar2.isEndOfStream()) {
                z7 = true;
            } else {
                z7 = false;
            }
        } else {
            z7 = true;
        }
        if (z7) {
            p171w0.g gVar3 = this.f4082S;
            H1.j(gVar3);
            gVar3.f30902G = this.f4080Q;
            b bVar3 = this.f4081R;
            H1.j(bVar3);
            p171w0.g gVar4 = this.f4082S;
            H1.j(gVar4);
            bVar3.queueInputBuffer(gVar4);
            this.f4088Y = 0;
        }
        p171w0.g gVar5 = this.f4082S;
        H1.j(gVar5);
        if (gVar5.isEndOfStream()) {
            this.f4085V = true;
        } else {
            int i9 = this.f4088Y;
            long j9 = gVar5.f30906K;
            this.f4087X = new f(i9, j9);
            this.f4088Y = i9 + 1;
            if (this.f4085V) {
                this.f4086W = this.f4087X;
                this.f4087X = null;
            } else {
                boolean z8 = j9 - 30000 <= j8 && j8 <= 30000 + j9;
                f fVar = this.f4086W;
                boolean z9 = fVar != null && fVar.f4068b <= j8 && j8 < j9;
                C3136t c3136t3 = this.f4080Q;
                H1.j(c3136t3);
                this.f4085V = z8 || z9 || (c3136t3.f27023N == -1 || (i8 = (c3136t = this.f4080Q).f27024O) == -1 || i9 == (i8 * c3136t.f27023N) - 1);
                if (!z9 || z8) {
                    this.f4086W = this.f4087X;
                    this.f4087X = null;
                }
            }
        }
        p171w0.g gVar6 = this.f4082S;
        H1.j(gVar6);
        if (gVar6.isEndOfStream()) {
            this.f4073J = true;
            this.f4082S = null;
            return false;
        }
        long j10 = this.f4077N;
        p171w0.g gVar7 = this.f4082S;
        H1.j(gVar7);
        this.f4077N = Math.max(j10, gVar7.f30906K);
        if (z7) {
            this.f4082S = null;
        } else {
            p171w0.g gVar8 = this.f4082S;
            H1.j(gVar8);
            gVar8.clear();
        }
        return !this.f4085V;
    }

    public final void c() throws C0072w {
        if (this.f4089Z) {
            C3136t c3136t = this.f4080Q;
            c3136t.getClass();
            F.d dVar = this.f4070G;
            int iJ = dVar.j(c3136t);
            if (iJ != O.o(4, 0, 0, 0) && iJ != O.o(3, 0, 0, 0)) {
                throw createRendererException(new c("Provided decoder factory can't create decoder for format."), this.f4080Q, 4005);
            }
            b bVar = this.f4081R;
            if (bVar != null) {
                bVar.release();
            }
            Context context = (Context) dVar.f2962I;
            O.I(dVar.f2963J);
            this.f4081R = new b(context, dVar.f2961H);
            this.f4089Z = false;
        }
    }

    public final void d() {
        this.f4082S = null;
        this.f4078O = 0;
        this.f4077N = -9223372036854775807L;
        b bVar = this.f4081R;
        if (bVar != null) {
            bVar.release();
            this.f4081R = null;
        }
    }

    @Override // B0.AbstractC0051h, B0.D0
    public final String getName() {
        return "ImageRenderer";
    }

    @Override // B0.AbstractC0051h, B0.y0
    public final void handleMessage(int i8, Object obj) {
        if (i8 != 15) {
            return;
        }
        ImageOutput imageOutput = obj instanceof ImageOutput ? (ImageOutput) obj : null;
        if (imageOutput == null) {
            imageOutput = ImageOutput.f9471a;
        }
        this.f4083T = imageOutput;
    }

    @Override // B0.AbstractC0051h
    public final boolean isEnded() {
        return this.f4074K;
    }

    @Override // B0.AbstractC0051h
    public final boolean isReady() {
        int i8 = this.f4079P;
        return i8 == 3 || (i8 == 0 && this.f4085V);
    }

    @Override // B0.AbstractC0051h
    public final void onDisabled() {
        this.f4080Q = null;
        this.f4075L = e.f4064c;
        this.f4072I.clear();
        d();
        this.f4083T.a();
    }

    @Override // B0.AbstractC0051h
    public final void onEnabled(boolean z7, boolean z8) {
        this.f4079P = z8 ? 1 : 0;
    }

    @Override // B0.AbstractC0051h
    public final void onPositionReset(long j8, boolean z7) {
        this.f4079P = Math.min(this.f4079P, 1);
        this.f4074K = false;
        this.f4073J = false;
        this.f4084U = null;
        this.f4086W = null;
        this.f4087X = null;
        this.f4085V = false;
        this.f4082S = null;
        b bVar = this.f4081R;
        if (bVar != null) {
            bVar.flush();
        }
        this.f4072I.clear();
    }

    @Override // B0.AbstractC0051h
    public final void onRelease() {
        d();
    }

    @Override // B0.AbstractC0051h
    public final void onReset() {
        d();
        this.f4079P = Math.min(this.f4079P, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
    
        if (r2 >= r6) goto L14;
     */
    @Override // B0.AbstractC0051h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onStreamChanged(p094m0.C3136t[] r5, long r6, long r8, O0.C0300y r10) {
        /*
            r4 = this;
            J0.e r5 = r4.f4075L
            long r5 = r5.f4066b
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r7 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r7 == 0) goto L31
            java.util.ArrayDeque r5 = r4.f4072I
            boolean r6 = r5.isEmpty()
            if (r6 == 0) goto L26
            long r6 = r4.f4077N
            int r10 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r10 == 0) goto L31
            long r2 = r4.f4076M
            int r10 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r10 == 0) goto L26
            int r10 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r10 < 0) goto L26
            goto L31
        L26:
            J0.e r6 = new J0.e
            long r0 = r4.f4077N
            r6.<init>(r0, r8)
            r5.add(r6)
            goto L38
        L31:
            J0.e r5 = new J0.e
            r5.<init>(r0, r8)
            r4.f4075L = r5
        L38:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: J0.g.onStreamChanged(m0.t[], long, long, O0.y):void");
    }

    @Override // B0.AbstractC0051h
    public final void render(long j8, long j9) throws C0072w {
        if (this.f4074K) {
            return;
        }
        if (this.f4080Q == null) {
            Z formatHolder = getFormatHolder();
            p171w0.g gVar = this.f4071H;
            gVar.clear();
            int source = readSource(formatHolder, gVar, 2);
            if (source != -5) {
                if (source == -4) {
                    H1.i(gVar.isEndOfStream());
                    this.f4073J = true;
                    this.f4074K = true;
                    return;
                }
                return;
            }
            C3136t c3136t = formatHolder.f904b;
            H1.j(c3136t);
            this.f4080Q = c3136t;
            this.f4089Z = true;
        }
        if (this.f4081R == null) {
            c();
        }
        try {
            Trace.beginSection("drainAndFeedDecoder");
            while (a(j8)) {
            }
            while (b(j8)) {
            }
            Trace.endSection();
        } catch (c e8) {
            throw createRendererException(e8, null, 4003);
        }
    }

    @Override // B0.D0
    public final int supportsFormat(C3136t c3136t) {
        return this.f4070G.j(c3136t);
    }
}
