package Y0;

import com.google.android.gms.internal.ads.Cw;
import com.google.protobuf.U2;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p117p0.E;
import p117p0.M;
import p117p0.x;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class f implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final H f8043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8044b;

    public f(int i8, d0 d0Var) {
        this.f8044b = i8;
        this.f8043a = d0Var;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static f b(int i8, E e8) {
        String str;
        String str2;
        a cVar;
        int i9 = 4;
        Cw.g(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i10 = e8.f28037c;
        int iA = -2;
        int i11 = 0;
        while (e8.a() > 8) {
            int iN = e8.n();
            int iN2 = e8.f28036b + e8.n();
            e8.K(iN2);
            if (iN != 1414744396) {
                g gVar = null;
                switch (iN) {
                    case 1718776947:
                        if (iA == 2) {
                            e8.M(i9);
                            int iN3 = e8.n();
                            int iN4 = e8.n();
                            e8.M(i9);
                            int iN5 = e8.n();
                            switch (iN5) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str2 = "video/mp4v-es";
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str2 = "video/avc";
                                    break;
                                case 842289229:
                                    str2 = "video/mp42";
                                    break;
                                case 859066445:
                                    str2 = "video/mp43";
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str2 = "video/mjpeg";
                                    break;
                                default:
                                    str2 = null;
                                    break;
                            }
                            if (str2 == null) {
                                U2.v("Ignoring track with unsupported compression ", iN5, "StreamFormatChunk");
                            } else {
                                C3135s c3135s = new C3135s();
                                c3135s.f27003u = iN3;
                                c3135s.f27004v = iN4;
                                c3135s.f26996n = O.p(str2);
                                gVar = new g(new C3136t(c3135s));
                            }
                        } else if (iA == 1) {
                            int iS = e8.s();
                            if (iS == 1) {
                                str = "audio/raw";
                            } else if (iS == 85) {
                                str = "audio/mpeg";
                            } else if (iS == 255) {
                                str = "audio/mp4a-latm";
                            } else if (iS != 8192) {
                                str = iS != 8193 ? null : "audio/vnd.dts";
                            } else {
                                str = "audio/ac3";
                            }
                            if (str == null) {
                                U2.v("Ignoring track with unsupported format tag ", iS, "StreamFormatChunk");
                            } else {
                                int iS2 = e8.s();
                                int iN6 = e8.n();
                                e8.M(6);
                                int iS3 = e8.s();
                                String str3 = M.f28050a;
                                int iA2 = M.A(iS3, ByteOrder.LITTLE_ENDIAN);
                                int iS4 = e8.a() > 0 ? e8.s() : 0;
                                C3135s c3135s2 = new C3135s();
                                c3135s2.f26996n = O.p(str);
                                c3135s2.f26973F = iS2;
                                c3135s2.f26974G = iN6;
                                if (str.equals("audio/raw") && iA2 != 0) {
                                    c3135s2.f26975H = iA2;
                                }
                                if (str.equals("audio/mp4a-latm") && iS4 > 0) {
                                    byte[] bArr = new byte[iS4];
                                    e8.j(0, bArr, iS4);
                                    c3135s2.f26999q = H.x(bArr);
                                }
                                gVar = new g(new C3136t(c3135s2));
                            }
                        } else {
                            x.f("StreamFormatChunk", "Ignoring strf box for unsupported track type: " + M.G(iA));
                        }
                        cVar = gVar;
                        break;
                    case 1751742049:
                        int iN7 = e8.n();
                        e8.M(8);
                        int iN8 = e8.n();
                        int iN9 = e8.n();
                        e8.M(i9);
                        e8.n();
                        e8.M(12);
                        cVar = new c(iN7, iN8, iN9);
                        break;
                    case 1752331379:
                        int iN10 = e8.n();
                        e8.M(12);
                        e8.n();
                        int iN11 = e8.n();
                        int iN12 = e8.n();
                        e8.M(i9);
                        int iN13 = e8.n();
                        int iN14 = e8.n();
                        e8.M(i9);
                        cVar = new d(iN10, iN11, iN12, iN13, iN14, e8.n());
                        break;
                    case 1852994675:
                        cVar = new h(e8.x(e8.a(), StandardCharsets.UTF_8));
                        break;
                    default:
                        cVar = gVar;
                        break;
                }
            } else {
                cVar = b(e8.n(), e8);
            }
            if (cVar != null) {
                if (cVar.getType() == 1752331379) {
                    iA = ((d) cVar).a();
                }
                int i12 = i11 + 1;
                int iF = Q3.b.f(objArrCopyOf.length, i12);
                if (iF > objArrCopyOf.length) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
                }
                objArrCopyOf[i11] = cVar;
                i11 = i12;
            }
            e8.L(iN2);
            e8.K(i10);
            i9 = 4;
        }
        return new f(i8, H.p(i11, objArrCopyOf));
    }

    public final a a(Class cls) {
        F fListIterator = this.f8043a.listIterator(0);
        while (fListIterator.hasNext()) {
            a aVar = (a) fListIterator.next();
            if (aVar.getClass() == cls) {
                return aVar;
            }
        }
        return null;
    }

    @Override // Y0.a
    public final int getType() {
        return this.f8044b;
    }
}
