package p023c6;

import E1.N;
import Q6.l;
import Q6.m;
import Q6.x;
import Y5.B;
import Y5.z;
import Z5.EnumC0452i;
import Z5.EnumC0465w;
import com.google.android.gms.common.api.d;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import p000a.r;
import p007a6.f;
import p096m2.c;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements Closeable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final l f11469G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final f f11470H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final d f11471I;

    public h(x xVar) {
        this.f11469G = xVar;
        f fVar = new f(xVar);
        this.f11470H = fVar;
        this.f11471I = new d(fVar);
    }

    public final void E(N n7, int i8, byte b8, int i9) throws IOException {
        boolean z7 = (b8 & 1) != 0;
        if ((b8 & 32) != 0) {
            i.c("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
            throw null;
        }
        short s7 = (b8 & 8) != 0 ? (short) (this.f11469G.readByte() & 255) : (short) 0;
        ((c) n7.f2661I).n(1, i9, this.f11469G.a(), i.b(i8, b8, s7), z7);
        ((f) n7.f2663K).l(i9);
        if (((f) n7.f2663K).m(i9)) {
            ((f) n7.f2663K).getClass();
            throw null;
        }
        f.f((f) n7.f2663K, "Received data for unknown stream: " + i9);
        this.f11469G.b((long) s7);
    }

    public final ArrayList N(int i8, short s7, byte b8, int i9) throws IOException {
        f fVar = this.f11470H;
        fVar.f11464K = i8;
        fVar.f11461H = i8;
        fVar.f11465L = s7;
        fVar.f11462I = b8;
        fVar.f11463J = i9;
        while (true) {
            d dVar = this.f11471I;
            x xVar = dVar.f11451b;
            boolean zQ = xVar.q();
            ArrayList arrayList = dVar.f11450a;
            if (zQ) {
                ArrayList arrayList2 = new ArrayList(arrayList);
                arrayList.clear();
                return arrayList2;
            }
            byte b9 = xVar.readByte();
            int i10 = b9 & 255;
            if (i10 == 128) {
                throw new IOException("index == 0");
            }
            if ((b9 & 128) == 128) {
                int iE = dVar.e(i10, 127);
                int i11 = iE - 1;
                if (i11 >= 0) {
                    c[] cVarArr = e.f11458a;
                    if (i11 <= cVarArr.length - 1) {
                        arrayList.add(cVarArr[i11]);
                    }
                }
                int length = dVar.f11455f + 1 + (i11 - e.f11458a.length);
                if (length >= 0) {
                    c[] cVarArr2 = dVar.f11454e;
                    if (length <= cVarArr2.length - 1) {
                        arrayList.add(cVarArr2[length]);
                    }
                }
                throw new IOException(r.f("Header index too large ", iE));
            }
            if (i10 == 64) {
                m mVarD = dVar.d();
                e.a(mVarD);
                dVar.c(new c(mVarD, dVar.d()));
            } else if ((b9 & 64) == 64) {
                dVar.c(new c(dVar.b(dVar.e(i10, 63) - 1), dVar.d()));
            } else if ((b9 & 32) == 32) {
                int iE2 = dVar.e(i10, 31);
                dVar.f11453d = iE2;
                if (iE2 < 0 || iE2 > dVar.f11452c) {
                    throw new IOException("Invalid dynamic table size update " + dVar.f11453d);
                }
                int i12 = dVar.f11457h;
                if (iE2 < i12) {
                    if (iE2 == 0) {
                        Arrays.fill(dVar.f11454e, (Object) null);
                        dVar.f11455f = dVar.f11454e.length - 1;
                        dVar.f11456g = 0;
                        dVar.f11457h = 0;
                    } else {
                        dVar.a(i12 - iE2);
                    }
                }
            } else if (i10 == 16 || i10 == 0) {
                m mVarD2 = dVar.d();
                e.a(mVarD2);
                arrayList.add(new c(mVarD2, dVar.d()));
            } else {
                arrayList.add(new c(dVar.b(dVar.e(i10, 15) - 1), dVar.d()));
            }
        }
    }

    public final void O(N n7, int i8, byte b8, int i9) throws IOException {
        if (i9 == 0) {
            i.c("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
            throw null;
        }
        boolean z7 = (b8 & 1) != 0;
        short s7 = (b8 & 8) != 0 ? (short) (this.f11469G.readByte() & 255) : (short) 0;
        if ((b8 & 32) != 0) {
            l lVar = this.f11469G;
            lVar.readInt();
            lVar.readByte();
            n7.getClass();
            i8 -= 5;
        }
        ArrayList arrayListN = N(i.b(i8, b8, s7), s7, b8, i9);
        c cVar = (c) n7.f2661I;
        if (cVar.k()) {
            ((Logger) cVar.f27210H).log((Level) cVar.f27211I, r.w(1) + " HEADERS: streamId=" + i9 + " headers=" + arrayListN + " endStream=" + z7);
        }
        ((f) n7.f2663K).getClass();
        long jC = 0;
        for (int i10 = 0; i10 < arrayListN.size(); i10++) {
            c cVar2 = (c) arrayListN.get(i10);
            jC += (long) (cVar2.f11448b.c() + cVar2.f11447a.c() + 32);
        }
        int iMin = (int) Math.min(jC, 2147483647L);
        ((f) n7.f2663K).getClass();
        if (iMin > 0) {
            B b9 = B.f8139i;
            Locale locale = Locale.US;
            b9.f("Response " + (z7 ? "trailer" : "header") + " metadata larger than 0: " + iMin);
        }
        ((f) n7.f2663K).getClass();
        throw null;
    }

    public final void a0(N n7, int i8, byte b8, int i9) throws IOException {
        if (i8 != 8) {
            i.c("TYPE_PING length != 8: %s", Integer.valueOf(i8));
            throw null;
        }
        if (i9 != 0) {
            i.c("TYPE_PING streamId != 0", new Object[0]);
            throw null;
        }
        int i10 = this.f11469G.readInt();
        int i11 = this.f11469G.readInt();
        boolean z7 = (b8 & 1) != 0;
        ((c) n7.f2661I).p(1, (((long) i10) << 32) | (((long) i11) & 4294967295L));
        if (z7) {
            ((f) n7.f2663K).getClass();
            throw null;
        }
        ((f) n7.f2663K).getClass();
        throw null;
    }

    public final void b0(N n7, int i8, byte b8, int i9) throws IOException {
        if (i9 == 0) {
            i.c("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
            throw null;
        }
        short s7 = (b8 & 8) != 0 ? (short) (this.f11469G.readByte() & 255) : (short) 0;
        int i10 = this.f11469G.readInt() & d.API_PRIORITY_OTHER;
        ArrayList arrayListN = N(i.b(i8 - 4, b8, s7), s7, b8, i9);
        c cVar = (c) n7.f2661I;
        if (cVar.k()) {
            ((Logger) cVar.f27210H).log((Level) cVar.f27211I, r.w(1) + " PUSH_PROMISE: streamId=" + i9 + " promisedStreamId=" + i10 + " headers=" + arrayListN);
        }
        ((f) n7.f2663K).getClass();
        throw null;
    }

    public final void c0(N n7, int i8, int i9) throws IOException {
        a aVar;
        if (i8 != 4) {
            i.c("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i8));
            throw null;
        }
        if (i9 == 0) {
            i.c("TYPE_RST_STREAM streamId == 0", new Object[0]);
            throw null;
        }
        int i10 = this.f11469G.readInt();
        a[] aVarArrValues = a.values();
        int length = aVarArrValues.length;
        int i11 = 0;
        while (true) {
            if (i11 >= length) {
                aVar = null;
                break;
            }
            aVar = aVarArrValues[i11];
            if (aVar.f11441G == i10) {
                break;
            } else {
                i11++;
            }
        }
        if (aVar == null) {
            i.c("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i10));
            throw null;
        }
        ((c) n7.f2661I).q(1, i9, aVar);
        if (f.r(aVar).a("Rst Stream").f8142a != z.CANCELLED) {
            z zVar = z.DEADLINE_EXCEEDED;
        }
        ((f) n7.f2663K).getClass();
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f11469G.close();
    }

    public final void d0(N n7, int i8, byte b8, int i9) throws IOException {
        if (i9 != 0) {
            i.c("TYPE_SETTINGS streamId != 0", new Object[0]);
            throw null;
        }
        if ((b8 & 1) != 0) {
            if (i8 == 0) {
                n7.getClass();
                return;
            } else {
                i.c("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                throw null;
            }
        }
        if (i8 % 6 != 0) {
            i.c("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i8));
            throw null;
        }
        p132r.h hVar = new p132r.h(2, 0);
        int i10 = 0;
        while (true) {
            short s7 = 4;
            if (i10 >= i8) {
                ((c) n7.f2661I).r(1, hVar);
                ((f) n7.f2663K).getClass();
                throw null;
            }
            short s8 = this.f11469G.readShort();
            int i11 = this.f11469G.readInt();
            switch (s8) {
                case 1:
                case 6:
                    s7 = s8;
                    break;
                case 2:
                    if (i11 != 0 && i11 != 1) {
                        i.c("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        throw null;
                    }
                    s7 = s8;
                    break;
                    break;
                case 3:
                    break;
                case 4:
                    if (i11 < 0) {
                        i.c("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        throw null;
                    }
                    s7 = 7;
                    break;
                    break;
                case 5:
                    if (i11 < 16384 || i11 > 16777215) {
                        i.c("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(i11));
                        throw null;
                    }
                    s7 = s8;
                    break;
                default:
                    continue;
                    i10 += 6;
                    break;
            }
            hVar.g(s7, i11);
            i10 += 6;
        }
    }

    public final boolean k(N n7) throws IOException {
        a aVar;
        B bF;
        try {
            this.f11469G.U(9L);
            int iA = i.a(this.f11469G);
            if (iA < 0 || iA > 16384) {
                i.c("FRAME_SIZE_ERROR: %s", Integer.valueOf(iA));
                throw null;
            }
            byte b8 = (byte) (this.f11469G.readByte() & 255);
            byte b9 = (byte) (this.f11469G.readByte() & 255);
            int i8 = this.f11469G.readInt() & d.API_PRIORITY_OTHER;
            Logger logger = i.f11472a;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(g.a(true, i8, iA, b8, b9));
            }
            switch (b8) {
                case 0:
                    E(n7, iA, b9, i8);
                    return true;
                case 1:
                    O(n7, iA, b9, i8);
                    return true;
                case 2:
                    if (iA != 5) {
                        i.c("TYPE_PRIORITY length: %d != 5", Integer.valueOf(iA));
                        throw null;
                    }
                    if (i8 == 0) {
                        i.c("TYPE_PRIORITY streamId == 0", new Object[0]);
                        throw null;
                    }
                    l lVar = this.f11469G;
                    lVar.readInt();
                    lVar.readByte();
                    n7.getClass();
                    return true;
                case 3:
                    c0(n7, iA, i8);
                    return true;
                case 4:
                    d0(n7, iA, b9, i8);
                    return true;
                case 5:
                    b0(n7, iA, b9, i8);
                    return true;
                case 6:
                    a0(n7, iA, b9, i8);
                    return true;
                case 7:
                    if (iA < 8) {
                        i.c("TYPE_GOAWAY length < 8: %s", Integer.valueOf(iA));
                        throw null;
                    }
                    if (i8 != 0) {
                        i.c("TYPE_GOAWAY streamId != 0", new Object[0]);
                        throw null;
                    }
                    l lVar2 = this.f11469G;
                    int i9 = lVar2.readInt();
                    int i10 = lVar2.readInt();
                    int i11 = iA - 8;
                    a[] aVarArrValues = a.values();
                    int length = aVarArrValues.length;
                    int i12 = 0;
                    while (true) {
                        if (i12 < length) {
                            aVar = aVarArrValues[i12];
                            if (aVar.f11441G != i10) {
                                i12++;
                            }
                        } else {
                            aVar = null;
                        }
                    }
                    if (aVar == null) {
                        i.c("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i10));
                        throw null;
                    }
                    m mVarD = m.f6065J;
                    if (i11 > 0) {
                        mVarD = lVar2.d(i11);
                    }
                    ((c) n7.f2661I).o(1, i9, aVar, mVarD);
                    if (aVar == a.ENHANCE_YOUR_CALM) {
                        String strK = mVarD.k();
                        f.f8704e.log(Level.WARNING, n7 + ": Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: " + strK);
                        if ("too_many_pings".equals(strK)) {
                            ((f) n7.f2663K).getClass();
                            throw null;
                        }
                    }
                    long j8 = aVar.f11441G;
                    EnumC0465w[] enumC0465wArr = EnumC0465w.f8467J;
                    EnumC0465w enumC0465w = (j8 >= ((long) enumC0465wArr.length) || j8 < 0) ? null : enumC0465wArr[(int) j8];
                    if (enumC0465w == null) {
                        bF = B.c(EnumC0465w.f8466I.f8470H.f8142a.f8196G).f("Unrecognized HTTP/2 error code: " + j8);
                    } else {
                        bF = enumC0465w.f8470H;
                    }
                    B bA = bF.a("Received Goaway");
                    if (mVarD.c() > 0) {
                        bA = bA.a(mVarD.k());
                    }
                    f fVar = (f) n7.f2663K;
                    Map map = f.f8703d;
                    fVar.p(i9, null, bA);
                    return true;
                case 8:
                    if (iA != 4) {
                        i.c("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(iA));
                        throw null;
                    }
                    long j9 = ((long) this.f11469G.readInt()) & 2147483647L;
                    if (j9 == 0) {
                        i.c("windowSizeIncrement was 0", new Object[0]);
                        throw null;
                    }
                    ((c) n7.f2661I).s(1, i8, j9);
                    if (j9 != 0) {
                        ((f) n7.f2663K).getClass();
                        throw null;
                    }
                    if (i8 == 0) {
                        f.f((f) n7.f2663K, "Received 0 flow control window increment.");
                    } else {
                        ((f) n7.f2663K).i(i8, B.f8140j.f("Received 0 flow control window increment."), EnumC0452i.f8456G, false, a.PROTOCOL_ERROR, null);
                    }
                    return true;
                default:
                    this.f11469G.b(iA);
                    return true;
            }
        } catch (IOException unused) {
            return false;
        }
    }
}
