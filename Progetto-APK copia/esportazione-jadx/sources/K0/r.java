package K0;

import A0.O;
import B0.AbstractC0051h;
import B0.C0053i;
import B0.C0055j;
import B0.C0072w;
import B0.S;
import B0.Z;
import D0.U;
import D0.W;
import Z3.H;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.Trace;
import androidx.media3.decoder.CryptoConfig;
import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import p086l.C3061x;
import p094m0.C3135s;
import p094m0.C3136t;
import p117p0.G;
import p117p0.M;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class r extends AbstractC0051h {

    /* JADX INFO: renamed from: V0, reason: collision with root package name */
    public static final byte[] f4378V0 = {0, 0, 1, 103, 66, -64, MqttWireMessage.MESSAGE_TYPE_UNSUBACK, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, MqttWireMessage.MESSAGE_TYPE_PINGRESP, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public int f4379A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public int f4380B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public int f4381C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public boolean f4382D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public boolean f4383E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public boolean f4384F0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final k f4385G;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public long f4386G0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final s f4387H;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public long f4388H0;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f4389I;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public boolean f4390I0;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final float f4391J;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public boolean f4392J0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p171w0.g f4393K;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public boolean f4394K0;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final p171w0.g f4395L;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public boolean f4396L0;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final p171w0.g f4397M;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public C0072w f4398M0;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final f f4399N;

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public C0053i f4400N0;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final MediaCodec.BufferInfo f4401O;

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public q f4402O0;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final ArrayDeque f4403P;

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public long f4404P0;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final W f4405Q;

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public boolean f4406Q0;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public C3136t f4407R;

    /* JADX INFO: renamed from: R0, reason: collision with root package name */
    public boolean f4408R0;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public C3136t f4409S;

    /* JADX INFO: renamed from: S0, reason: collision with root package name */
    public boolean f4410S0;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public G0.l f4411T;

    /* JADX INFO: renamed from: T0, reason: collision with root package name */
    public long f4412T0;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public G0.l f4413U;

    /* JADX INFO: renamed from: U0, reason: collision with root package name */
    public long f4414U0;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public S f4415V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public MediaCrypto f4416W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final long f4417X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public float f4418Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public float f4419Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public l f4420a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public C3136t f4421b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public MediaFormat f4422c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f4423d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public float f4424e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public ArrayDeque f4425f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public p f4426g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public o f4427h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f4428i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f4429j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f4430k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f4431l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f4432m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f4433n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f4434o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public long f4435p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public long f4436q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public int f4437r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public int f4438s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public ByteBuffer f4439t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public boolean f4440u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public boolean f4441v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public boolean f4442w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public boolean f4443x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public boolean f4444y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public boolean f4445z0;

    public r(int i8, k kVar, s sVar, boolean z7, float f8) {
        super(i8);
        this.f4385G = kVar;
        sVar.getClass();
        this.f4387H = sVar;
        this.f4389I = z7;
        this.f4391J = f8;
        this.f4393K = new p171w0.g(0, 0);
        this.f4395L = new p171w0.g(0, 0);
        this.f4397M = new p171w0.g(2, 0);
        f fVar = new f(2, 0);
        fVar.f4346Q = 32;
        this.f4399N = fVar;
        this.f4401O = new MediaCodec.BufferInfo();
        this.f4418Y = 1.0f;
        this.f4419Z = 1.0f;
        this.f4417X = -9223372036854775807L;
        this.f4403P = new ArrayDeque();
        this.f4402O0 = q.f4373e;
        fVar.f(0);
        fVar.f30904I.order(ByteOrder.nativeOrder());
        W w7 = new W();
        w7.f1887a = p102n0.g.f27326a;
        w7.f1889c = 0;
        w7.f1888b = 2;
        this.f4405Q = w7;
        this.f4424e0 = -1.0f;
        this.f4428i0 = 0;
        this.f4379A0 = 0;
        this.f4437r0 = -1;
        this.f4438s0 = -1;
        this.f4436q0 = -9223372036854775807L;
        this.f4386G0 = -9223372036854775807L;
        this.f4388H0 = -9223372036854775807L;
        this.f4404P0 = -9223372036854775807L;
        this.f4435p0 = -9223372036854775807L;
        this.f4380B0 = 0;
        this.f4381C0 = 0;
        this.f4400N0 = new C0053i();
        this.f4412T0 = -9223372036854775807L;
        this.f4414U0 = -9223372036854775807L;
    }

    public void B(long j8) {
        this.f4404P0 = j8;
        while (true) {
            ArrayDeque arrayDeque = this.f4403P;
            if (arrayDeque.isEmpty() || j8 < ((q) arrayDeque.peek()).f4374a) {
                return;
            }
            q qVar = (q) arrayDeque.poll();
            qVar.getClass();
            N(qVar);
            C();
        }
    }

    public abstract void C();

    public final void E() throws C0072w {
        int i8 = this.f4381C0;
        if (i8 == 1) {
            g();
            return;
        }
        if (i8 == 2) {
            g();
            W();
        } else if (i8 != 3) {
            this.f4392J0 = true;
            I();
        } else {
            H();
            s();
        }
    }

    public abstract boolean F(long j8, long j9, l lVar, ByteBuffer byteBuffer, int i8, int i9, int i10, long j10, boolean z7, boolean z8, C3136t c3136t);

    public final boolean G(int i8) throws C0072w {
        Z formatHolder = getFormatHolder();
        p171w0.g gVar = this.f4393K;
        gVar.clear();
        int source = readSource(formatHolder, gVar, i8 | 4);
        if (source == -5) {
            y(formatHolder);
            return true;
        }
        if (source != -4 || !gVar.isEndOfStream()) {
            return false;
        }
        this.f4390I0 = true;
        E();
        return false;
    }

    public final void H() {
        try {
            l lVar = this.f4420a0;
            if (lVar != null) {
                lVar.release();
                this.f4400N0.f965b++;
                o oVar = this.f4427h0;
                oVar.getClass();
                x(oVar.f4355a);
            }
            this.f4420a0 = null;
            try {
                MediaCrypto mediaCrypto = this.f4416W;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
                this.f4416W = null;
                M(null);
                L();
            }
        } catch (Throwable th) {
            this.f4420a0 = null;
            try {
                MediaCrypto mediaCrypto2 = this.f4416W;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
                this.f4416W = null;
                M(null);
                L();
            }
        }
    }

    public abstract void I();

    public final void J() {
        this.f4386G0 = -9223372036854775807L;
        this.f4388H0 = -9223372036854775807L;
        this.f4404P0 = -9223372036854775807L;
        this.f4444y0 = false;
        this.f4399N.clear();
        this.f4397M.clear();
        this.f4443x0 = false;
        W w7 = this.f4405Q;
        w7.getClass();
        w7.f1887a = p102n0.g.f27326a;
        w7.f1889c = 0;
        w7.f1888b = 2;
    }

    public void K() {
        this.f4437r0 = -1;
        this.f4395L.f30904I = null;
        this.f4438s0 = -1;
        this.f4439t0 = null;
        this.f4386G0 = -9223372036854775807L;
        this.f4388H0 = -9223372036854775807L;
        this.f4404P0 = -9223372036854775807L;
        this.f4436q0 = -9223372036854775807L;
        this.f4383E0 = false;
        this.f4435p0 = -9223372036854775807L;
        this.f4382D0 = false;
        this.f4432m0 = false;
        this.f4433n0 = false;
        this.f4440u0 = false;
        this.f4441v0 = false;
        this.f4380B0 = 0;
        this.f4381C0 = 0;
        this.f4379A0 = this.f4445z0 ? 1 : 0;
        this.f4410S0 = false;
        this.f4412T0 = -9223372036854775807L;
        this.f4414U0 = -9223372036854775807L;
    }

    public final void L() {
        K();
        this.f4398M0 = null;
        this.f4425f0 = null;
        this.f4427h0 = null;
        this.f4421b0 = null;
        this.f4422c0 = null;
        this.f4423d0 = false;
        this.f4384F0 = false;
        this.f4424e0 = -1.0f;
        this.f4428i0 = 0;
        this.f4429j0 = false;
        this.f4430k0 = false;
        this.f4431l0 = false;
        this.f4434o0 = false;
        this.f4445z0 = false;
        this.f4379A0 = 0;
    }

    public final void M(G0.l lVar) {
        O.M(this.f4411T, lVar);
        this.f4411T = lVar;
    }

    public final void N(q qVar) {
        this.f4402O0 = qVar;
        if (qVar.f4376c != -9223372036854775807L) {
            this.f4406Q0 = true;
            A();
        }
    }

    public final boolean O(long j8) {
        long j9 = this.f4417X;
        if (j9 != -9223372036854775807L) {
            ((G) getClock()).getClass();
            if (SystemClock.elapsedRealtime() - j8 >= j9) {
                return false;
            }
        }
        return true;
    }

    public boolean P(p171w0.g gVar) {
        return false;
    }

    public boolean Q() {
        return true;
    }

    public boolean R(o oVar) {
        return true;
    }

    public boolean S() {
        int i8 = this.f4381C0;
        if (i8 == 3 || ((this.f4429j0 && !this.f4384F0) || (this.f4430k0 && this.f4383E0))) {
            return true;
        }
        if (i8 == 2) {
            int i9 = Build.VERSION.SDK_INT;
            H1.i(i9 >= 23);
            if (i9 >= 23) {
                try {
                    W();
                } catch (C0072w e8) {
                    p117p0.x.g("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e8);
                    return true;
                }
            }
        }
        return false;
    }

    public boolean T(C3136t c3136t) {
        return false;
    }

    public abstract int U(s sVar, C3136t c3136t);

    public final boolean V(C3136t c3136t) throws C0072w {
        if (Build.VERSION.SDK_INT >= 23 && this.f4420a0 != null && this.f4381C0 != 3 && getState() != 0) {
            float f8 = this.f4419Z;
            c3136t.getClass();
            float fL = l(f8, c3136t, getStreamFormats());
            float f9 = this.f4424e0;
            if (f9 == fL) {
                return true;
            }
            if (fL == -1.0f) {
                if (this.f4382D0) {
                    this.f4380B0 = 1;
                    this.f4381C0 = 3;
                    return false;
                }
                H();
                s();
                return false;
            }
            if (f9 == -1.0f && fL <= this.f4391J) {
                return true;
            }
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", fL);
            l lVar = this.f4420a0;
            lVar.getClass();
            lVar.d(bundle);
            this.f4424e0 = fL;
        }
        return true;
    }

    public final void W() throws C0072w {
        G0.l lVar = this.f4413U;
        lVar.getClass();
        CryptoConfig cryptoConfigF = lVar.f();
        if (cryptoConfigF instanceof G0.x) {
            try {
                MediaCrypto mediaCrypto = this.f4416W;
                mediaCrypto.getClass();
                mediaCrypto.setMediaDrmSession(((G0.x) cryptoConfigF).f3386b);
            } catch (MediaCryptoException e8) {
                throw createRendererException(e8, this.f4407R, 6006);
            }
        }
        M(this.f4413U);
        this.f4380B0 = 0;
        this.f4381C0 = 0;
    }

    public final void X(long j8) {
        C3136t c3136t = (C3136t) this.f4402O0.f4377d.k(j8);
        if (c3136t == null && this.f4406Q0 && this.f4422c0 != null) {
            c3136t = (C3136t) this.f4402O0.f4377d.j();
        }
        if (c3136t != null) {
            this.f4409S = c3136t;
        } else if (!this.f4423d0 || this.f4409S == null) {
            return;
        }
        C3136t c3136t2 = this.f4409S;
        c3136t2.getClass();
        z(c3136t2, this.f4422c0);
        this.f4423d0 = false;
        this.f4406Q0 = false;
    }

    /* JADX WARN: Code duplicated, block: B:112:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:118:0x0305  */
    /* JADX WARN: Code duplicated, block: B:121:0x030d A[LOOP:0: B:27:0x0097->B:121:0x030d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:141:0x030b A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    public final boolean a(long j8, long j9) throws C0072w {
        f fVar;
        int length;
        H1.i(!this.f4392J0);
        f fVar2 = this.f4399N;
        if (fVar2.i()) {
            ByteBuffer byteBuffer = fVar2.f30904I;
            int i8 = this.f4438s0;
            int i9 = fVar2.f4345P;
            long j10 = fVar2.f30906K;
            boolean zR = r(getLastResetPositionUs(), fVar2.f4344O);
            boolean zIsEndOfStream = fVar2.isEndOfStream();
            C3136t c3136t = this.f4409S;
            c3136t.getClass();
            if (!F(j8, j9, null, byteBuffer, i8, 0, i9, j10, zR, zIsEndOfStream, c3136t)) {
                return false;
            }
            fVar = fVar2;
            B(fVar.f4344O);
            fVar.clear();
        } else {
            fVar = fVar2;
        }
        ?? r7 = 0;
        if (this.f4390I0) {
            this.f4392J0 = true;
            return false;
        }
        boolean z7 = true;
        boolean z8 = this.f4443x0;
        p171w0.g gVar = this.f4397M;
        if (z8) {
            H1.i(fVar.h(gVar));
            this.f4443x0 = false;
        }
        if (this.f4444y0) {
            if (fVar.i()) {
                return true;
            }
            this.f4442w0 = false;
            J();
            this.f4444y0 = false;
            s();
            if (!this.f4442w0) {
                return false;
            }
        }
        H1.i(!this.f4390I0);
        Z formatHolder = getFormatHolder();
        gVar.clear();
        while (true) {
            gVar.clear();
            int source = readSource(formatHolder, gVar, r7);
            if (source == -5) {
                y(formatHolder);
            } else if (source != -4) {
                if (source != -3) {
                    throw new IllegalStateException();
                }
                if (hasReadStreamToEnd()) {
                    this.f4388H0 = this.f4386G0;
                }
            } else if (gVar.isEndOfStream()) {
                this.f4390I0 = z7;
                this.f4388H0 = this.f4386G0;
            } else {
                this.f4386G0 = Math.max(this.f4386G0, gVar.f30906K);
                if (hasReadStreamToEnd() || this.f4395L.isLastSample()) {
                    this.f4388H0 = this.f4386G0;
                }
                byte[] bArr = null;
                if (this.f4394K0) {
                    C3136t c3136t2 = this.f4407R;
                    c3136t2.getClass();
                    this.f4409S = c3136t2;
                    if (Objects.equals(c3136t2.f27041o, "audio/opus") && !this.f4409S.f27044r.isEmpty()) {
                        byte[] bArr2 = (byte[]) this.f4409S.f27044r.get(r7);
                        int i10 = (bArr2[10] & 255) | ((bArr2[11] & 255) << 8);
                        C3135s c3135sA = this.f4409S.a();
                        c3135sA.f26976I = i10;
                        this.f4409S = new C3136t(c3135sA);
                    }
                    z(this.f4409S, null);
                    this.f4394K0 = r7;
                }
                gVar.g();
                C3136t c3136t3 = this.f4409S;
                if (c3136t3 != null && Objects.equals(c3136t3.f27041o, "audio/opus")) {
                    if (gVar.hasSupplementalData()) {
                        gVar.f30902G = this.f4409S;
                        p(gVar);
                    }
                    if (getLastResetPositionUs() - gVar.f30906K <= 80000) {
                        List list = this.f4409S.f27044r;
                        W w7 = this.f4405Q;
                        w7.getClass();
                        gVar.f30904I.getClass();
                        if (gVar.f30904I.limit() - gVar.f30904I.position() != 0) {
                            if (w7.f1888b == 2 && (list.size() == z7 || list.size() == 3)) {
                                bArr = (byte[]) list.get(r7);
                            }
                            ByteBuffer byteBuffer2 = gVar.f30904I;
                            int iPosition = byteBuffer2.position();
                            int iLimit = byteBuffer2.limit();
                            int i11 = iLimit - iPosition;
                            int i12 = (i11 + 255) / 255;
                            int i13 = i12 + 27 + i11;
                            if (w7.f1888b == 2) {
                                length = bArr != null ? bArr.length + 28 : 47;
                                i13 = length + 44 + i13;
                            } else {
                                length = 0;
                            }
                            if (w7.f1887a.capacity() < i13) {
                                w7.f1887a = ByteBuffer.allocate(i13).order(ByteOrder.LITTLE_ENDIAN);
                            } else {
                                w7.f1887a.clear();
                            }
                            ByteBuffer byteBuffer3 = w7.f1887a;
                            if (w7.f1888b == 2) {
                                if (bArr != null) {
                                    W.a(byteBuffer3, 0L, 0, 1, true);
                                    byteBuffer3.put(q0.j(bArr.length));
                                    byteBuffer3.put(bArr);
                                    byteBuffer3.putInt(22, M.m(byteBuffer3.arrayOffset(), byteBuffer3.array(), bArr.length + 28, 0));
                                    byteBuffer3.position(bArr.length + 28);
                                } else {
                                    byteBuffer3.put(W.f1885d);
                                }
                                byteBuffer3.put(W.f1886e);
                            } else {
                                iPosition = iPosition;
                                iLimit = iLimit;
                            }
                            int iH = w7.f1889c + ((int) ((H.h(byteBuffer2.get(0), byteBuffer2.limit() > 1 ? byteBuffer2.get(1) : (byte) 0) * 48000) / 1000000));
                            w7.f1889c = iH;
                            W.a(byteBuffer3, iH, w7.f1888b, i12, false);
                            int i14 = i11;
                            for (int i15 = 0; i15 < i12; i15++) {
                                if (i14 >= 255) {
                                    byteBuffer3.put((byte) -1);
                                    i14 -= 255;
                                } else {
                                    byteBuffer3.put((byte) i14);
                                    i14 = 0;
                                }
                            }
                            int i16 = iLimit;
                            for (int i17 = iPosition; i17 < i16; i17++) {
                                byteBuffer3.put(byteBuffer2.get(i17));
                            }
                            byteBuffer2.position(byteBuffer2.limit());
                            byteBuffer3.flip();
                            if (w7.f1888b == 2) {
                                byteBuffer3.putInt(length + 66, M.m(byteBuffer3.arrayOffset() + length + 44, byteBuffer3.array(), byteBuffer3.limit() - byteBuffer3.position(), 0));
                            } else {
                                byteBuffer3.putInt(22, M.m(byteBuffer3.arrayOffset(), byteBuffer3.array(), byteBuffer3.limit() - byteBuffer3.position(), 0));
                            }
                            w7.f1888b++;
                            w7.f1887a = byteBuffer3;
                            gVar.clear();
                            gVar.f(w7.f1887a.remaining());
                            gVar.f30904I.put(w7.f1887a);
                            gVar.g();
                        }
                    }
                }
                if (fVar.i()) {
                    long lastResetPositionUs = getLastResetPositionUs();
                    if (r(lastResetPositionUs, fVar.f4344O) == r(lastResetPositionUs, gVar.f30906K)) {
                        if (!fVar.h(gVar)) {
                            r7 = 0;
                            z7 = true;
                        }
                    }
                } else if (!fVar.h(gVar)) {
                    r7 = 0;
                    z7 = true;
                }
                this.f4443x0 = true;
            }
            if (fVar.i()) {
                fVar.g();
            }
            return fVar.i() || this.f4390I0 || this.f4444y0;
        }
    }

    public abstract C0055j b(o oVar, C3136t c3136t, C3136t c3136t2);

    public n c(IllegalStateException illegalStateException, o oVar) {
        return new n(illegalStateException, oVar);
    }

    public final boolean d() throws C0072w {
        if (this.f4382D0) {
            this.f4380B0 = 1;
            if (this.f4430k0) {
                this.f4381C0 = 3;
                return false;
            }
            this.f4381C0 = 2;
        } else {
            W();
        }
        return true;
    }

    public final boolean e(long j8, long j9) throws C0072w {
        boolean z7;
        boolean z8;
        MediaCodec.BufferInfo bufferInfo;
        boolean zF;
        int iL;
        l lVar = this.f4420a0;
        lVar.getClass();
        boolean z9 = this.f4438s0 >= 0;
        MediaCodec.BufferInfo bufferInfo2 = this.f4401O;
        if (!z9) {
            if (this.f4431l0 && this.f4383E0) {
                try {
                    iL = lVar.l(bufferInfo2);
                } catch (IllegalStateException unused) {
                    E();
                    if (this.f4392J0) {
                        H();
                    }
                    return false;
                }
            } else {
                iL = lVar.l(bufferInfo2);
            }
            if (iL < 0) {
                if (iL == -2) {
                    this.f4384F0 = true;
                    l lVar2 = this.f4420a0;
                    lVar2.getClass();
                    MediaFormat mediaFormatH = lVar2.h();
                    if (this.f4428i0 != 0 && mediaFormatH.getInteger("width") == 32 && mediaFormatH.getInteger("height") == 32) {
                        this.f4433n0 = true;
                    } else {
                        this.f4422c0 = mediaFormatH;
                        this.f4423d0 = true;
                    }
                    return true;
                }
                if (this.f4434o0 && (this.f4390I0 || this.f4380B0 == 2)) {
                    E();
                }
                long j10 = this.f4435p0;
                if (j10 != -9223372036854775807L) {
                    long j11 = j10 + 100;
                    ((G) getClock()).getClass();
                    if (j11 < System.currentTimeMillis()) {
                        E();
                    }
                }
                return false;
            }
            if (this.f4433n0) {
                this.f4433n0 = false;
                lVar.f(iL);
                return true;
            }
            if (bufferInfo2.size == 0 && (bufferInfo2.flags & 4) != 0) {
                E();
                return false;
            }
            this.f4438s0 = iL;
            ByteBuffer byteBufferQ = lVar.q(iL);
            this.f4439t0 = byteBufferQ;
            if (byteBufferQ != null) {
                byteBufferQ.position(bufferInfo2.offset);
                this.f4439t0.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            X(bufferInfo2.presentationTimeUs);
        }
        this.f4440u0 = bufferInfo2.presentationTimeUs < getLastResetPositionUs();
        long j12 = this.f4388H0;
        this.f4441v0 = j12 != -9223372036854775807L && j12 <= bufferInfo2.presentationTimeUs;
        if (this.f4410S0) {
            long j13 = this.f4412T0;
            if (j13 == -9223372036854775807L || bufferInfo2.presentationTimeUs > j13) {
                this.f4412T0 = bufferInfo2.presentationTimeUs;
                this.f4440u0 = true;
                this.f4441v0 = false;
            } else {
                this.f4410S0 = false;
                this.f4412T0 = -9223372036854775807L;
            }
        }
        if (this.f4431l0 && this.f4383E0) {
            try {
                ByteBuffer byteBuffer = this.f4439t0;
                int i8 = this.f4438s0;
                int i9 = bufferInfo2.flags;
                long j14 = bufferInfo2.presentationTimeUs;
                boolean z10 = this.f4440u0;
                boolean z11 = this.f4441v0;
                C3136t c3136t = this.f4409S;
                c3136t.getClass();
                z7 = true;
                z8 = false;
                try {
                    zF = F(j8, j9, lVar, byteBuffer, i8, i9, 1, j14, z10, z11, c3136t);
                    bufferInfo = bufferInfo2;
                } catch (IllegalStateException unused2) {
                    E();
                    if (this.f4392J0) {
                        H();
                    }
                    return z8;
                }
            } catch (IllegalStateException unused3) {
                z8 = false;
            }
        } else {
            z7 = true;
            z8 = false;
            ByteBuffer byteBuffer2 = this.f4439t0;
            int i10 = this.f4438s0;
            int i11 = bufferInfo2.flags;
            long j15 = bufferInfo2.presentationTimeUs;
            boolean z12 = this.f4440u0;
            boolean z13 = this.f4441v0;
            C3136t c3136t2 = this.f4409S;
            c3136t2.getClass();
            bufferInfo = bufferInfo2;
            zF = F(j8, j9, lVar, byteBuffer2, i10, i11, 1, j15, z12, z13, c3136t2);
        }
        if (zF) {
            B(bufferInfo.presentationTimeUs);
            boolean z14 = (bufferInfo.flags & 4) != 0;
            if (!z14 && this.f4383E0 && this.f4441v0) {
                ((G) getClock()).getClass();
                this.f4435p0 = System.currentTimeMillis();
            }
            this.f4438s0 = -1;
            this.f4439t0 = null;
            if (!z14) {
                return z7;
            }
            E();
        }
        return z8;
    }

    public final boolean f() throws C0072w {
        l lVar = this.f4420a0;
        if (lVar == null || this.f4380B0 == 2 || this.f4390I0) {
            return false;
        }
        int i8 = this.f4437r0;
        p171w0.g gVar = this.f4395L;
        if (i8 < 0) {
            int iK = lVar.k();
            this.f4437r0 = iK;
            if (iK < 0) {
                return false;
            }
            gVar.f30904I = lVar.o(iK);
            gVar.clear();
        }
        if (this.f4380B0 == 1) {
            if (!this.f4434o0) {
                this.f4383E0 = true;
                lVar.e(0L, this.f4437r0, 0, 4);
                this.f4437r0 = -1;
                gVar.f30904I = null;
            }
            this.f4380B0 = 2;
            return false;
        }
        if (this.f4432m0) {
            this.f4432m0 = false;
            ByteBuffer byteBuffer = gVar.f30904I;
            byteBuffer.getClass();
            byteBuffer.put(f4378V0);
            lVar.e(0L, this.f4437r0, 38, 0);
            this.f4437r0 = -1;
            gVar.f30904I = null;
            this.f4382D0 = true;
            return true;
        }
        if (this.f4379A0 == 1) {
            int i9 = 0;
            while (true) {
                C3136t c3136t = this.f4421b0;
                c3136t.getClass();
                if (i9 >= c3136t.f27044r.size()) {
                    break;
                }
                byte[] bArr = (byte[]) this.f4421b0.f27044r.get(i9);
                ByteBuffer byteBuffer2 = gVar.f30904I;
                byteBuffer2.getClass();
                byteBuffer2.put(bArr);
                i9++;
            }
            this.f4379A0 = 2;
        }
        ByteBuffer byteBuffer3 = gVar.f30904I;
        byteBuffer3.getClass();
        int iPosition = byteBuffer3.position();
        Z formatHolder = getFormatHolder();
        try {
            int source = readSource(formatHolder, gVar, 0);
            if (source == -3) {
                if (hasReadStreamToEnd()) {
                    this.f4388H0 = this.f4386G0;
                }
                return false;
            }
            if (source == -5) {
                if (this.f4379A0 == 2) {
                    gVar.clear();
                    this.f4379A0 = 1;
                }
                y(formatHolder);
                return true;
            }
            if (gVar.isEndOfStream()) {
                this.f4388H0 = this.f4386G0;
                if (this.f4379A0 == 2) {
                    gVar.clear();
                    this.f4379A0 = 1;
                }
                this.f4390I0 = true;
                if (!this.f4382D0) {
                    E();
                    return false;
                }
                if (!this.f4434o0) {
                    this.f4383E0 = true;
                    lVar.e(0L, this.f4437r0, 0, 4);
                    this.f4437r0 = -1;
                    gVar.f30904I = null;
                }
                return false;
            }
            if (!this.f4382D0 && !gVar.isKeyFrame()) {
                gVar.clear();
                if (this.f4379A0 == 2) {
                    this.f4379A0 = 1;
                }
                return true;
            }
            if (P(gVar)) {
                return true;
            }
            boolean flag = gVar.getFlag(1073741824);
            if (flag) {
                p171w0.c cVar = gVar.f30903H;
                if (iPosition == 0) {
                    cVar.getClass();
                } else {
                    if (cVar.f30895d == null) {
                        int[] iArr = new int[1];
                        cVar.f30895d = iArr;
                        cVar.f30900i.numBytesOfClearData = iArr;
                    }
                    int[] iArr2 = cVar.f30895d;
                    iArr2[0] = iArr2[0] + iPosition;
                }
            }
            long j8 = gVar.f30906K;
            if (this.f4394K0) {
                ArrayDeque arrayDeque = this.f4403P;
                if (arrayDeque.isEmpty()) {
                    p016c.g gVar2 = this.f4402O0.f4377d;
                    C3136t c3136t2 = this.f4407R;
                    c3136t2.getClass();
                    gVar2.b(c3136t2, j8);
                } else {
                    p016c.g gVar3 = ((q) arrayDeque.peekLast()).f4377d;
                    C3136t c3136t3 = this.f4407R;
                    c3136t3.getClass();
                    gVar3.b(c3136t3, j8);
                }
                this.f4394K0 = false;
            }
            this.f4386G0 = Math.max(this.f4386G0, j8);
            if (hasReadStreamToEnd() || gVar.isLastSample()) {
                this.f4388H0 = this.f4386G0;
            }
            gVar.g();
            if (gVar.hasSupplementalData()) {
                p(gVar);
            }
            D(gVar);
            int iJ = j(gVar);
            if ((Build.VERSION.SDK_INT < 34 || (iJ & 32) == 0) && !getConfiguration().f703b) {
                this.f4414U0 = Math.max(this.f4414U0, gVar.f30906K);
            }
            if (flag) {
                lVar.b(this.f4437r0, gVar.f30903H, j8, iJ);
            } else {
                int i10 = this.f4437r0;
                ByteBuffer byteBuffer4 = gVar.f30904I;
                byteBuffer4.getClass();
                lVar.e(j8, i10, byteBuffer4.limit(), iJ);
            }
            this.f4437r0 = -1;
            gVar.f30904I = null;
            this.f4382D0 = true;
            this.f4379A0 = 0;
            this.f4400N0.f966c++;
            return true;
        } catch (p171w0.f e8) {
            v(e8);
            G(0);
            g();
            return true;
        }
    }

    public final void g() {
        try {
            l lVar = this.f4420a0;
            H1.j(lVar);
            lVar.flush();
        } finally {
            K();
        }
    }

    @Override // B0.AbstractC0051h
    public final long getDurationToProgressUs(long j8, long j9) {
        return n(j8, j9);
    }

    public final boolean h() {
        if (this.f4420a0 == null) {
            return false;
        }
        if (S()) {
            H();
            return true;
        }
        if (Q()) {
            g();
        } else if (this.f4414U0 != -9223372036854775807L) {
            long lastResetPositionUs = getLastResetPositionUs();
            long j8 = this.f4414U0;
            if (lastResetPositionUs <= j8 && this.f4404P0 < j8) {
                this.f4410S0 = true;
                this.f4414U0 = -9223372036854775807L;
            }
        }
        return false;
    }

    public final List i(boolean z7) {
        C3136t c3136t = this.f4407R;
        c3136t.getClass();
        s sVar = this.f4387H;
        ArrayList arrayListM = m(sVar, c3136t, z7);
        if (arrayListM.isEmpty() && z7) {
            arrayListM = m(sVar, c3136t, false);
            if (!arrayListM.isEmpty()) {
                p117p0.x.f("MediaCodecRenderer", "Drm session requires secure decoder for " + c3136t.f27041o + ", but no secure decoder available. Trying to proceed with " + arrayListM + ".");
            }
        }
        return arrayListM;
    }

    @Override // B0.AbstractC0051h
    public boolean isReady() {
        if (this.f4407R != null) {
            if (!isSourceReady() && this.f4438s0 < 0) {
                if (this.f4436q0 != -9223372036854775807L) {
                    ((G) getClock()).getClass();
                    if (SystemClock.elapsedRealtime() < this.f4436q0) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    public int j(p171w0.g gVar) {
        return 0;
    }

    public boolean k() {
        return false;
    }

    public abstract float l(float f8, C3136t c3136t, C3136t[] c3136tArr);

    public abstract ArrayList m(s sVar, C3136t c3136t, boolean z7);

    public long n(long j8, long j9) {
        return super.getDurationToProgressUs(j8, j9);
    }

    public abstract C3061x o(o oVar, C3136t c3136t, MediaCrypto mediaCrypto, float f8);

    @Override // B0.AbstractC0051h
    public void onDisabled() {
        this.f4407R = null;
        N(q.f4373e);
        this.f4403P.clear();
        if (!this.f4442w0) {
            h();
        } else {
            this.f4442w0 = false;
            J();
        }
    }

    @Override // B0.AbstractC0051h
    public void onPositionReset(long j8, boolean z7) throws C0072w {
        this.f4390I0 = false;
        this.f4392J0 = false;
        this.f4396L0 = false;
        if (this.f4442w0) {
            J();
        } else if (h()) {
            s();
        }
        if (this.f4402O0.f4377d.m() > 0) {
            this.f4394K0 = true;
        }
        this.f4402O0.f4377d.f();
        this.f4403P.clear();
    }

    @Override // B0.AbstractC0051h
    public void onReset() {
        try {
            this.f4442w0 = false;
            J();
            H();
        } finally {
            O.M(this.f4413U, null);
            this.f4413U = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
    
        if (r7 >= r5) goto L15;
     */
    @Override // B0.AbstractC0051h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onStreamChanged(p094m0.C3136t[] r14, long r15, long r17, O0.C0300y r19) {
        /*
            r13 = this;
            r0 = r13
            K0.q r1 = r0.f4402O0
            long r1 = r1.f4376c
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L27
            K0.q r1 = new K0.q
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = r1
            r9 = r15
            r11 = r17
            r6.<init>(r7, r9, r11)
            r13.N(r1)
            boolean r1 = r0.f4408R0
            if (r1 == 0) goto L6a
            r13.C()
            goto L6a
        L27:
            java.util.ArrayDeque r1 = r0.f4403P
            boolean r2 = r1.isEmpty()
            if (r2 == 0) goto L5c
            long r5 = r0.f4386G0
            int r2 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r2 == 0) goto L3f
            long r7 = r0.f4404P0
            int r2 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r2 == 0) goto L5c
            int r2 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r2 < 0) goto L5c
        L3f:
            K0.q r1 = new K0.q
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = r1
            r8 = r15
            r10 = r17
            r5.<init>(r6, r8, r10)
            r13.N(r1)
            K0.q r1 = r0.f4402O0
            long r1 = r1.f4376c
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L6a
            r13.C()
            goto L6a
        L5c:
            K0.q r2 = new K0.q
            long r7 = r0.f4386G0
            r6 = r2
            r9 = r15
            r11 = r17
            r6.<init>(r7, r9, r11)
            r1.add(r2)
        L6a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: K0.r.onStreamChanged(m0.t[], long, long, O0.y):void");
    }

    public abstract void p(p171w0.g gVar);

    /* JADX WARN: Code duplicated, block: B:32:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:47:0x0115  */
    public final void q(o oVar, MediaCrypto mediaCrypto) {
        int i8;
        this.f4427h0 = oVar;
        C3136t c3136t = this.f4407R;
        c3136t.getClass();
        String str = oVar.f4355a;
        int i9 = Build.VERSION.SDK_INT;
        float fL = i9 < 23 ? -1.0f : l(this.f4419Z, c3136t, getStreamFormats());
        float f8 = fL > this.f4391J ? fL : -1.0f;
        ((G) getClock()).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        C3061x c3061xO = o(oVar, c3136t, mediaCrypto, f8);
        if (i9 >= 31) {
            LogSessionId logSessionIdA = getPlayerId().a();
            if (!logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                ((MediaFormat) c3061xO.f26411H).setString("log-session-id", logSessionIdA.getStringId());
            }
        }
        try {
            Trace.beginSection("createCodec:" + str);
            l lVarY = this.f4385G.y(c3061xO);
            this.f4420a0 = lVarY;
            lVarY.n(new U(this));
            Trace.endSection();
            ((G) getClock()).getClass();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            if (!oVar.e(c3136t)) {
                String strD = C3136t.d(c3136t);
                Locale locale = Locale.US;
                p117p0.x.f("MediaCodecRenderer", O.C("Format exceeds selected codec's capabilities [", strD, ", ", str, "]"));
            }
            this.f4424e0 = f8;
            this.f4421b0 = c3136t;
            if (i9 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str)) {
                String str2 = Build.MODEL;
                if (str2.startsWith("SM-T585") || str2.startsWith("SM-A510") || str2.startsWith("SM-A520") || str2.startsWith("SM-J700")) {
                    i8 = 2;
                } else if (i9 < 24) {
                    i8 = 0;
                } else {
                    i8 = 0;
                }
            } else if (i9 < 24 || !("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str))) {
                i8 = 0;
            } else {
                String str3 = Build.DEVICE;
                if ("flounder".equals(str3) || "flounder_lte".equals(str3) || "grouper".equals(str3) || "tilapia".equals(str3)) {
                    i8 = 1;
                } else {
                    i8 = 0;
                }
            }
            this.f4428i0 = i8;
            this.f4429j0 = i9 == 29 && "c2.android.aac.decoder".equals(str);
            this.f4430k0 = i9 <= 23 && "OMX.google.vorbis.decoder".equals(str);
            this.f4431l0 = i9 == 21 && "OMX.google.aac.decoder".equals(str);
            String str4 = oVar.f4355a;
            this.f4434o0 = (i9 <= 25 && "OMX.rk.video_decoder.avc".equals(str4)) || (i9 <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str4) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str4) || "OMX.bcm.vdec.avc.tunnel".equals(str4) || "OMX.bcm.vdec.avc.tunnel.secure".equals(str4) || "OMX.bcm.vdec.hevc.tunnel".equals(str4) || "OMX.bcm.vdec.hevc.tunnel.secure".equals(str4))) || (("Amazon".equals(Build.MANUFACTURER) && "AFTS".equals(Build.MODEL) && oVar.f4360f) || k());
            this.f4420a0.getClass();
            if (getState() == 2) {
                ((G) getClock()).getClass();
                this.f4436q0 = SystemClock.elapsedRealtime() + 1000;
            }
            this.f4400N0.f964a++;
            w(str, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    public final boolean r(long j8, long j9) {
        C3136t c3136t;
        return j9 < j8 && ((c3136t = this.f4409S) == null || !Objects.equals(c3136t.f27041o, "audio/opus") || j8 - j9 > 80000);
    }

    @Override // B0.AbstractC0051h
    public void render(long j8, long j9) throws C0072w {
        boolean z7 = false;
        if (this.f4396L0) {
            this.f4396L0 = false;
            E();
        }
        C0072w c0072w = this.f4398M0;
        if (c0072w != null) {
            this.f4398M0 = null;
            throw c0072w;
        }
        try {
            if (this.f4392J0) {
                I();
                return;
            }
            if (this.f4407R != null || G(2)) {
                s();
                if (this.f4442w0) {
                    Trace.beginSection("bypassRender");
                    while (a(j8, j9)) {
                    }
                    Trace.endSection();
                } else if (this.f4420a0 != null) {
                    ((G) getClock()).getClass();
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    Trace.beginSection("drainAndFeed");
                    while (e(j8, j9) && O(jElapsedRealtime)) {
                    }
                    while (f() && O(jElapsedRealtime)) {
                    }
                    Trace.endSection();
                } else {
                    this.f4400N0.f967d += skipSource(j8);
                    G(1);
                }
                synchronized (this.f4400N0) {
                }
            }
        } catch (MediaCodec.CryptoException e8) {
            throw createRendererException(e8, this.f4407R, M.w(e8.getErrorCode()));
        } catch (IllegalStateException e9) {
            boolean z8 = e9 instanceof MediaCodec.CodecException;
            if (!z8) {
                StackTraceElement[] stackTrace = e9.getStackTrace();
                if (stackTrace.length <= 0 || !stackTrace[0].getClassName().equals("android.media.MediaCodec")) {
                    throw e9;
                }
            }
            v(e9);
            if (z8 && ((MediaCodec.CodecException) e9).isRecoverable()) {
                z7 = true;
            }
            if (z7) {
                H();
            }
            n nVarC = c(e9, this.f4427h0);
            throw createRendererException(nVarC, this.f4407R, z7, nVarC.f4354G == 1101 ? 4006 : 4003);
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x008b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x008d  */
    /* JADX WARN: Code duplicated, block: B:47:0x0094  */
    /* JADX WARN: Code duplicated, block: B:49:0x0098  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b4 A[Catch: p -> 0x00c4, TryCatch #0 {p -> 0x00c4, blocks: (B:55:0x00b0, B:57:0x00b4, B:59:0x00bb, B:64:0x00c6, B:68:0x00d3), top: B:78:0x00b0 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00d2  */
    public final void s() throws C0072w {
        C3136t c3136t;
        G0.l lVar;
        if (this.f4420a0 != null || this.f4442w0 || (c3136t = this.f4407R) == null) {
            return;
        }
        boolean z7 = true;
        boolean z8 = this.f4413U == null && T(c3136t);
        String str = c3136t.f27041o;
        if (z8) {
            this.f4442w0 = false;
            J();
            boolean zEquals = "audio/mp4a-latm".equals(str);
            f fVar = this.f4399N;
            if (zEquals || "audio/mpeg".equals(str) || "audio/opus".equals(str)) {
                fVar.getClass();
                fVar.f4346Q = 32;
            } else {
                fVar.getClass();
                fVar.f4346Q = 1;
            }
            this.f4442w0 = true;
            return;
        }
        M(this.f4413U);
        if (this.f4411T == null) {
            try {
                lVar = this.f4411T;
                if (lVar == null && (lVar.getState() == 3 || this.f4411T.getState() == 4)) {
                    G0.l lVar2 = this.f4411T;
                    H1.j(str);
                    if (!lVar2.e(str)) {
                        z7 = false;
                    }
                } else {
                    z7 = false;
                }
                t(this.f4416W, z7);
            } catch (p e8) {
                throw createRendererException(e8, c3136t, 4001);
            }
        } else {
            H1.i(this.f4416W == null);
            G0.l lVar3 = this.f4411T;
            CryptoConfig cryptoConfigF = lVar3.f();
            if (G0.x.f3384c && (cryptoConfigF instanceof G0.x)) {
                int state = lVar3.getState();
                if (state == 1) {
                    G0.k error = lVar3.getError();
                    error.getClass();
                    throw createRendererException(error, this.f4407R, error.f3368G);
                }
                if (state == 4) {
                    if (cryptoConfigF == null) {
                        if (lVar3.getError() != null) {
                        }
                    } else if (cryptoConfigF instanceof G0.x) {
                        G0.x xVar = (G0.x) cryptoConfigF;
                        this.f4416W = new MediaCrypto(xVar.f3385a, xVar.f3386b);
                    }
                    lVar = this.f4411T;
                    if (lVar == null) {
                        z7 = false;
                    } else {
                        z7 = false;
                    }
                    t(this.f4416W, z7);
                }
            } else {
                if (cryptoConfigF == null) {
                    if (lVar3.getError() != null) {
                    }
                } else if (cryptoConfigF instanceof G0.x) {
                    G0.x xVar2 = (G0.x) cryptoConfigF;
                    try {
                        this.f4416W = new MediaCrypto(xVar2.f3385a, xVar2.f3386b);
                    } catch (MediaCryptoException e9) {
                        throw createRendererException(e9, this.f4407R, 6006);
                    }
                }
                lVar = this.f4411T;
                if (lVar == null) {
                    z7 = false;
                } else {
                    z7 = false;
                }
                t(this.f4416W, z7);
            }
        }
        MediaCrypto mediaCrypto = this.f4416W;
        if (mediaCrypto == null || this.f4420a0 != null) {
            return;
        }
        mediaCrypto.release();
        this.f4416W = null;
    }

    @Override // B0.AbstractC0051h
    public void setPlaybackSpeed(float f8, float f9) throws C0072w {
        this.f4418Y = f8;
        this.f4419Z = f9;
        V(this.f4421b0);
    }

    @Override // B0.D0
    public final int supportsFormat(C3136t c3136t) throws C0072w {
        try {
            return U(this.f4387H, c3136t);
        } catch (v e8) {
            throw createRendererException(e8, c3136t, 4002);
        }
    }

    @Override // B0.AbstractC0051h, B0.D0
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    public final void t(MediaCrypto mediaCrypto, boolean z7) throws p {
        C3136t c3136t = this.f4407R;
        c3136t.getClass();
        if (this.f4425f0 == null) {
            try {
                List listI = i(z7);
                ArrayDeque arrayDeque = new ArrayDeque();
                this.f4425f0 = arrayDeque;
                if (this.f4389I) {
                    arrayDeque.addAll(listI);
                } else if (!listI.isEmpty()) {
                    this.f4425f0.add((o) listI.get(0));
                }
                this.f4426g0 = null;
            } catch (v e8) {
                throw new p(e8, c3136t, z7, -49998);
            }
        }
        if (this.f4425f0.isEmpty()) {
            throw new p(null, c3136t, z7, -49999);
        }
        ArrayDeque arrayDeque2 = this.f4425f0;
        arrayDeque2.getClass();
        while (this.f4420a0 == null) {
            o oVar = (o) arrayDeque2.peekFirst();
            oVar.getClass();
            if (!u(c3136t) || !R(oVar)) {
                return;
            }
            try {
                q(oVar, mediaCrypto);
            } catch (Exception e9) {
                p117p0.x.g("MediaCodecRenderer", "Failed to initialize decoder: " + oVar, e9);
                arrayDeque2.removeFirst();
                p pVar = new p("Decoder init failed: " + oVar.f4355a + ", " + c3136t, e9, c3136t.f27041o, z7, oVar, e9 instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) e9).getDiagnosticInfo() : null);
                v(pVar);
                p pVar2 = this.f4426g0;
                if (pVar2 == null) {
                    this.f4426g0 = pVar;
                } else {
                    this.f4426g0 = new p(pVar2.getMessage(), pVar2.getCause(), pVar2.f4369G, pVar2.f4370H, pVar2.f4371I, pVar2.f4372J);
                }
                if (arrayDeque2.isEmpty()) {
                    throw this.f4426g0;
                }
            }
        }
        this.f4425f0 = null;
    }

    public boolean u(C3136t c3136t) {
        return true;
    }

    public abstract void v(Exception exc);

    public abstract void w(String str, long j8, long j9);

    public abstract void x(String str);

    /* JADX WARN: Code duplicated, block: B:82:0x0119  */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00dc, code lost:
    
        if (r3.e(r2) != false) goto L129;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public B0.C0055j y(B0.Z r13) throws B0.C0072w {
        /*
            Method dump skipped, instruction units count: 446
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: K0.r.y(B0.Z):B0.j");
    }

    public abstract void z(C3136t c3136t, MediaFormat mediaFormat);

    public void A() {
    }

    public void D(p171w0.g gVar) {
    }
}
