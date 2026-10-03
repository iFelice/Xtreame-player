package Q0;

import B0.AbstractC0051h;
import B0.C0073x;
import B0.L;
import B0.O;
import B0.Z;
import C0.C0083h;
import D0.U;
import F2.G;
import O0.C0300y;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Objects;
import p094m0.C3136t;
import p117p0.x;
import p126q1.i;
import p126q1.j;
import p126q1.m;
import z4.E;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class g extends AbstractC0051h implements Handler.Callback {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final G f6011G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p171w0.g f6012H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public a f6013I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final e f6014J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f6015K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f6016L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public p126q1.e f6017M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public i f6018N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public j f6019O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public j f6020P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f6021Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final Handler f6022R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final f f6023S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final Z f6024T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f6025U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public boolean f6026V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public C3136t f6027W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public long f6028X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public long f6029Y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(L l4, Looper looper) {
        super(3);
        U u7 = e.f6010j;
        this.f6023S = l4;
        this.f6022R = looper == null ? null : new Handler(looper, this);
        this.f6014J = u7;
        this.f6011G = new G(1);
        this.f6012H = new p171w0.g(1, 0);
        this.f6024T = new Z();
        this.f6029Y = -9223372036854775807L;
        this.f6028X = -9223372036854775807L;
    }

    public final void a() {
        H1.h("Legacy decoding is disabled, can't handle " + this.f6027W.f27041o + " samples (expected application/x-media3-cues).", Objects.equals(this.f6027W.f27041o, "application/cea-608") || Objects.equals(this.f6027W.f27041o, "application/x-mp4-cea-608") || Objects.equals(this.f6027W.f27041o, "application/cea-708"));
    }

    public final long b() {
        if (this.f6021Q == -1) {
            return Long.MAX_VALUE;
        }
        this.f6019O.getClass();
        if (this.f6021Q >= this.f6019O.d()) {
            return Long.MAX_VALUE;
        }
        return this.f6019O.b(this.f6021Q);
    }

    public final long c(long j8) {
        H1.i(j8 != -9223372036854775807L);
        return j8 - getStreamOffsetUs();
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0060  */
    /* JADX WARN: Code duplicated, block: B:32:0x006a  */
    /* JADX WARN: Code duplicated, block: B:35:0x0090  */
    public final void d() {
        p126q1.e bVar;
        this.f6015K = true;
        C3136t c3136t = this.f6027W;
        c3136t.getClass();
        U u7 = (U) this.f6014J;
        u7.getClass();
        String str = c3136t.f27041o;
        if (str != null) {
            int iHashCode = str.hashCode();
            byte b8 = -1;
            if (iHashCode != 930165504) {
                if (iHashCode != 1566015601) {
                    if (iHashCode == 1566016562 && str.equals("application/cea-708")) {
                        b8 = 2;
                    }
                } else if (str.equals("application/cea-608")) {
                    b8 = 1;
                }
            } else if (str.equals("application/x-mp4-cea-608")) {
                b8 = 0;
            }
            int i8 = c3136t.f27021L;
            if (b8 == 0 || b8 == 1) {
                bVar = new p134r1.c(i8, str);
            } else if (b8 == 2) {
                bVar = new p134r1.f(i8, c3136t.f27044r);
            } else {
                if (((G) u7.f1868H).K(c3136t)) {
                    throw new IllegalArgumentException(p148t.a.c("Attempted to create decoder for unsupported MIME type: ", str));
                }
                m mVarX = ((G) u7.f1868H).x(c3136t);
                bVar = new b(mVarX.getClass().getSimpleName().concat("Decoder"), mVarX);
            }
        } else {
            if (((G) u7.f1868H).K(c3136t)) {
                throw new IllegalArgumentException(p148t.a.c("Attempted to create decoder for unsupported MIME type: ", str));
            }
            m mVarX2 = ((G) u7.f1868H).x(c3136t);
            bVar = new b(mVarX2.getClass().getSimpleName().concat("Decoder"), mVarX2);
        }
        this.f6017M = bVar;
        bVar.setOutputStartTimeUs(getLastResetPositionUs());
    }

    public final void e(p110o0.c cVar) {
        d0 d0Var = cVar.f27655a;
        L l4 = (L) this.f6023S;
        l4.f743G.f785S.l(27, new C0073x(d0Var, 12));
        O o4 = l4.f743G;
        o4.f764G0 = cVar;
        o4.f785S.l(27, new C0073x(cVar, 9));
    }

    public final void f() {
        this.f6018N = null;
        this.f6021Q = -1;
        j jVar = this.f6019O;
        if (jVar != null) {
            jVar.release();
            this.f6019O = null;
        }
        j jVar2 = this.f6020P;
        if (jVar2 != null) {
            jVar2.release();
            this.f6020P = null;
        }
    }

    @Override // B0.AbstractC0051h, B0.D0
    public final String getName() {
        return "TextRenderer";
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 1) {
            throw new IllegalStateException();
        }
        e((p110o0.c) message.obj);
        return true;
    }

    @Override // B0.AbstractC0051h
    public final boolean isEnded() {
        return this.f6026V;
    }

    @Override // B0.AbstractC0051h
    public final boolean isReady() {
        C3136t c3136t = this.f6027W;
        if (c3136t == null) {
            return true;
        }
        if (Objects.equals(c3136t.f27041o, "application/x-media3-cues")) {
            a aVar = this.f6013I;
            aVar.getClass();
            if (aVar.a(this.f6028X) != Long.MIN_VALUE) {
                return true;
            }
            try {
                maybeThrowStreamError();
                return true;
            } catch (IOException unused) {
                return false;
            }
        }
        if (!this.f6026V) {
            if (!this.f6025U) {
                return true;
            }
            j jVar = this.f6019O;
            long j8 = this.f6028X;
            if (jVar != null && jVar.d() > 0 && jVar.b(jVar.d() - 1) > j8) {
                return true;
            }
            j jVar2 = this.f6020P;
            long j9 = this.f6028X;
            if ((jVar2 != null && jVar2.d() > 0 && jVar2.b(jVar2.d() - 1) > j9) || this.f6018N == null) {
                return true;
            }
        }
        return false;
    }

    @Override // B0.AbstractC0051h
    public final void onDisabled() {
        this.f6027W = null;
        this.f6029Y = -9223372036854775807L;
        d0 d0Var = d0.f31844K;
        c(this.f6028X);
        p110o0.c cVar = new p110o0.c(d0Var);
        Handler handler = this.f6022R;
        if (handler != null) {
            handler.obtainMessage(1, cVar).sendToTarget();
        } else {
            e(cVar);
        }
        this.f6028X = -9223372036854775807L;
        if (this.f6017M != null) {
            f();
            p126q1.e eVar = this.f6017M;
            eVar.getClass();
            eVar.release();
            this.f6017M = null;
            this.f6016L = 0;
        }
    }

    @Override // B0.AbstractC0051h
    public final void onPositionReset(long j8, boolean z7) {
        this.f6028X = j8;
        a aVar = this.f6013I;
        if (aVar != null) {
            aVar.clear();
        }
        d0 d0Var = d0.f31844K;
        c(this.f6028X);
        p110o0.c cVar = new p110o0.c(d0Var);
        Handler handler = this.f6022R;
        if (handler != null) {
            handler.obtainMessage(1, cVar).sendToTarget();
        } else {
            e(cVar);
        }
        this.f6025U = false;
        this.f6026V = false;
        this.f6029Y = -9223372036854775807L;
        C3136t c3136t = this.f6027W;
        if (c3136t == null || Objects.equals(c3136t.f27041o, "application/x-media3-cues")) {
            return;
        }
        if (this.f6016L == 0) {
            f();
            p126q1.e eVar = this.f6017M;
            eVar.getClass();
            eVar.flush();
            eVar.setOutputStartTimeUs(getLastResetPositionUs());
            return;
        }
        f();
        p126q1.e eVar2 = this.f6017M;
        eVar2.getClass();
        eVar2.release();
        this.f6017M = null;
        this.f6016L = 0;
        d();
    }

    @Override // B0.AbstractC0051h
    public final void onStreamChanged(C3136t[] c3136tArr, long j8, long j9, C0300y c0300y) {
        C3136t c3136t = c3136tArr[0];
        this.f6027W = c3136t;
        if (Objects.equals(c3136t.f27041o, "application/x-media3-cues")) {
            this.f6013I = this.f6027W.f27022M == 1 ? new c() : new d();
            return;
        }
        a();
        if (this.f6017M != null) {
            this.f6016L = 1;
        } else {
            d();
        }
    }

    /* JADX WARN: Code duplicated, block: B:84:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:86:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:93:0x021b  */
    /* JADX WARN: Code duplicated, block: B:96:0x022f  */
    /* JADX WARN: Code duplicated, block: B:97:0x0237  */
    @Override // B0.AbstractC0051h
    public final void render(long j8, long j9) {
        boolean z7;
        int iA;
        long jB;
        p110o0.c cVar;
        if (isCurrentStreamFinal()) {
            long j10 = this.f6029Y;
            if (j10 != -9223372036854775807L && j8 >= j10) {
                f();
                this.f6026V = true;
            }
        }
        if (this.f6026V) {
            return;
        }
        C3136t c3136t = this.f6027W;
        c3136t.getClass();
        boolean zEquals = Objects.equals(c3136t.f27041o, "application/x-media3-cues");
        Handler handler = this.f6022R;
        boolean zD = false;
        zD = false;
        zD = false;
        Z z8 = this.f6024T;
        if (zEquals) {
            this.f6013I.getClass();
            if (!this.f6025U) {
                p171w0.g gVar = this.f6012H;
                if (readSource(z8, gVar, 0) == -4) {
                    if (gVar.isEndOfStream()) {
                        this.f6025U = true;
                    } else {
                        gVar.g();
                        ByteBuffer byteBuffer = gVar.f30904I;
                        byteBuffer.getClass();
                        long j11 = gVar.f30906K;
                        byte[] bArrArray = byteBuffer.array();
                        int iArrayOffset = byteBuffer.arrayOffset();
                        int iLimit = byteBuffer.limit();
                        this.f6011G.getClass();
                        Parcel parcelObtain = Parcel.obtain();
                        parcelObtain.unmarshall(bArrArray, iArrayOffset, iLimit);
                        parcelObtain.setDataPosition(0);
                        Bundle bundle = parcelObtain.readBundle(Bundle.class.getClassLoader());
                        parcelObtain.recycle();
                        ArrayList parcelableArrayList = bundle.getParcelableArrayList("c");
                        parcelableArrayList.getClass();
                        C0083h c0083h = new C0083h(11);
                        E eQ = H.q();
                        for (int i8 = 0; i8 < parcelableArrayList.size(); i8++) {
                            Bundle bundle2 = (Bundle) parcelableArrayList.get(i8);
                            bundle2.getClass();
                            eQ.g0(c0083h.apply(bundle2));
                        }
                        p126q1.a aVar = new p126q1.a(eQ.m0(), j11, bundle.getLong("d"));
                        gVar.clear();
                        zD = this.f6013I.d(aVar, j8);
                    }
                }
            }
            long jA = this.f6013I.a(this.f6028X);
            if (jA == Long.MIN_VALUE && this.f6025U && !zD) {
                this.f6026V = true;
            }
            if ((jA != Long.MIN_VALUE && jA <= j8) || zD) {
                H hB = this.f6013I.b(j8);
                long jC = this.f6013I.c(j8);
                c(jC);
                p110o0.c cVar2 = new p110o0.c(hB);
                if (handler != null) {
                    handler.obtainMessage(1, cVar2).sendToTarget();
                } else {
                    e(cVar2);
                }
                this.f6013I.e(jC);
            }
            this.f6028X = j8;
            return;
        }
        a();
        this.f6028X = j8;
        if (this.f6020P == null) {
            p126q1.e eVar = this.f6017M;
            eVar.getClass();
            eVar.a(j8);
            try {
                p126q1.e eVar2 = this.f6017M;
                eVar2.getClass();
                this.f6020P = (j) eVar2.dequeueOutputBuffer();
            } catch (p126q1.f e8) {
                x.d("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.f6027W, e8);
                d0 d0Var = d0.f31844K;
                c(this.f6028X);
                p110o0.c cVar3 = new p110o0.c(d0Var);
                if (handler != null) {
                    handler.obtainMessage(1, cVar3).sendToTarget();
                } else {
                    e(cVar3);
                }
                f();
                p126q1.e eVar3 = this.f6017M;
                eVar3.getClass();
                eVar3.release();
                this.f6017M = null;
                this.f6016L = 0;
                d();
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.f6019O != null) {
            long jB2 = b();
            z7 = false;
            while (jB2 <= j8) {
                this.f6021Q++;
                jB2 = b();
                z7 = true;
            }
        } else {
            z7 = false;
        }
        j jVar = this.f6020P;
        if (jVar != null) {
            if (!jVar.isEndOfStream()) {
                if (jVar.timeUs <= j8) {
                    j jVar2 = this.f6019O;
                    if (jVar2 != null) {
                        jVar2.release();
                    }
                    this.f6021Q = jVar.a(j8);
                    this.f6019O = jVar;
                    this.f6020P = null;
                }
                this.f6019O.getClass();
                iA = this.f6019O.a(j8);
                if (iA != 0) {
                    jB = this.f6019O.timeUs;
                } else {
                    jB = this.f6019O.timeUs;
                }
                c(jB);
                cVar = new p110o0.c(this.f6019O.c(j8));
                if (handler != null) {
                    handler.obtainMessage(1, cVar).sendToTarget();
                } else {
                    e(cVar);
                }
            } else if (!z7 && b() == Long.MAX_VALUE) {
                if (this.f6016L == 2) {
                    f();
                    p126q1.e eVar4 = this.f6017M;
                    eVar4.getClass();
                    eVar4.release();
                    this.f6017M = null;
                    this.f6016L = 0;
                    d();
                } else {
                    f();
                    this.f6026V = true;
                }
            }
            if (z7) {
                this.f6019O.getClass();
                iA = this.f6019O.a(j8);
                if (iA != 0) {
                    jB = this.f6019O.timeUs;
                } else {
                    jB = this.f6019O.timeUs;
                }
                c(jB);
                cVar = new p110o0.c(this.f6019O.c(j8));
                if (handler != null) {
                    handler.obtainMessage(1, cVar).sendToTarget();
                } else {
                    e(cVar);
                }
            }
        } else if (z7) {
            this.f6019O.getClass();
            iA = this.f6019O.a(j8);
            if (iA != 0 || this.f6019O.d() == 0) {
                jB = this.f6019O.timeUs;
            } else if (iA == -1) {
                j jVar3 = this.f6019O;
                jB = jVar3.b(jVar3.d() - 1);
            } else {
                jB = this.f6019O.b(iA - 1);
            }
            c(jB);
            cVar = new p110o0.c(this.f6019O.c(j8));
            if (handler != null) {
                handler.obtainMessage(1, cVar).sendToTarget();
            } else {
                e(cVar);
            }
        }
        if (this.f6016L == 2) {
            return;
        }
        while (!this.f6025U) {
            try {
                i iVar = this.f6018N;
                if (iVar == null) {
                    p126q1.e eVar5 = this.f6017M;
                    eVar5.getClass();
                    iVar = (i) eVar5.dequeueInputBuffer();
                    if (iVar == null) {
                        return;
                    } else {
                        this.f6018N = iVar;
                    }
                }
                if (this.f6016L == 1) {
                    iVar.setFlags(4);
                    p126q1.e eVar6 = this.f6017M;
                    eVar6.getClass();
                    eVar6.queueInputBuffer(iVar);
                    this.f6018N = null;
                    this.f6016L = 2;
                    return;
                }
                int source = readSource(z8, iVar, 0);
                if (source == -4) {
                    if (iVar.isEndOfStream()) {
                        this.f6025U = true;
                        this.f6015K = false;
                    } else {
                        C3136t c3136t2 = z8.f904b;
                        if (c3136t2 == null) {
                            return;
                        }
                        iVar.f29552O = c3136t2.f27046t;
                        iVar.g();
                        this.f6015K &= !iVar.isKeyFrame();
                    }
                    if (!this.f6015K) {
                        p126q1.e eVar7 = this.f6017M;
                        eVar7.getClass();
                        eVar7.queueInputBuffer(iVar);
                        this.f6018N = null;
                    }
                } else if (source == -3) {
                    return;
                }
            } catch (p126q1.f e9) {
                x.d("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.f6027W, e9);
                d0 d0Var2 = d0.f31844K;
                c(this.f6028X);
                p110o0.c cVar4 = new p110o0.c(d0Var2);
                if (handler != null) {
                    handler.obtainMessage(1, cVar4).sendToTarget();
                } else {
                    e(cVar4);
                }
                f();
                p126q1.e eVar8 = this.f6017M;
                eVar8.getClass();
                eVar8.release();
                this.f6017M = null;
                this.f6016L = 0;
                d();
                return;
            }
        }
    }

    @Override // B0.D0
    public final int supportsFormat(C3136t c3136t) {
        if (!Objects.equals(c3136t.f27041o, "application/x-media3-cues")) {
            U u7 = (U) this.f6014J;
            u7.getClass();
            if (!((G) u7.f1868H).K(c3136t)) {
                String str = c3136t.f27041o;
                if (!Objects.equals(str, "application/cea-608") && !Objects.equals(str, "application/x-mp4-cea-608") && !Objects.equals(str, "application/cea-708")) {
                    return p094m0.O.n(str) ? A0.O.o(1, 0, 0, 0) : A0.O.o(0, 0, 0, 0);
                }
            }
        }
        return A0.O.o(c3136t.f27025P == 0 ? 4 : 2, 0, 0, 0);
    }
}
