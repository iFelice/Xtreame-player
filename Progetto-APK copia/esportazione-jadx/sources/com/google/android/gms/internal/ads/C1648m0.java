package com.google.android.gms.internal.ads;

import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.ads.interactivemedia.v3.impl.data.zzbz;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1648m0 implements InterfaceC1390h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC2073uA f19884a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f19885b;

    public C1648m0(int i8, PA pa) {
        this.f19885b = i8;
        this.f19884a = pa;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static C1648m0 b(int i8, C1534jr c1534jr) {
        String str;
        String str2;
        InterfaceC1390h0 c1700n0;
        String str3;
        int i9 = 4;
        p113o3.r.q(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i10 = c1534jr.f19517c;
        int i11 = 0;
        byte b8 = -2;
        int i12 = 0;
        while (c1534jr.o() > 8) {
            int iS = c1534jr.s();
            int iS2 = c1534jr.f19516b + c1534jr.s();
            c1534jr.i(iS2);
            if (iS != 1414744396) {
                switch (iS) {
                    case 1718776947:
                        if (b8 != 2) {
                            if (b8 == 1) {
                                int iU = c1534jr.u();
                                if (iU == 1) {
                                    str2 = "audio/raw";
                                } else if (iU == 85) {
                                    str2 = "audio/mpeg";
                                } else if (iU == 255) {
                                    str2 = "audio/mp4a-latm";
                                } else if (iU != 8192) {
                                    str2 = iU != 8193 ? null : "audio/vnd.dts";
                                } else {
                                    str2 = "audio/ac3";
                                }
                                if (str2 != null) {
                                    int iU2 = c1534jr.u();
                                    int iS3 = c1534jr.s();
                                    c1534jr.k(6);
                                    int iR = Et.r(c1534jr.u());
                                    int iU3 = c1534jr.o() > 0 ? c1534jr.u() : 0;
                                    byte[] bArr = new byte[iU3];
                                    c1534jr.f(i11, bArr, iU3);
                                    K k8 = new K();
                                    k8.f(str2);
                                    k8.f14285z = iU2;
                                    k8.f14253A = iS3;
                                    if ("audio/raw".equals(str2) && iR != 0) {
                                        k8.f14254B = iR;
                                    }
                                    if ("audio/mp4a-latm".equals(str2) && iU3 > 0) {
                                        k8.f14274o = AbstractC2073uA.w(bArr);
                                    }
                                    c1700n0 = new C1700n0(new C1804p0(k8));
                                } else {
                                    p000a.r.p("Ignoring track with unsupported format tag ", iU, "StreamFormatChunk");
                                }
                            } else {
                                int i13 = Et.f13234a;
                                switch (b8) {
                                    case CompanionAdSlot.FLUID_SIZE /* -2 */:
                                        str = "none";
                                        break;
                                    case -1:
                                        str = zzbz.UNKNOWN_CONTENT_TYPE;
                                        break;
                                    case 0:
                                        str = "default";
                                        break;
                                    case 1:
                                        str = "audio";
                                        break;
                                    case 2:
                                        str = "video";
                                        break;
                                    case 3:
                                        str = "text";
                                        break;
                                    case 4:
                                        str = "image";
                                        break;
                                    case 5:
                                        str = "metadata";
                                        break;
                                    default:
                                        str = "camera motion";
                                        break;
                                }
                                Zo.f("StreamFormatChunk", "Ignoring strf box for unsupported track type: ".concat(str));
                            }
                            c1700n0 = null;
                            break;
                        } else {
                            c1534jr.k(i9);
                            int iS4 = c1534jr.s();
                            int iS5 = c1534jr.s();
                            c1534jr.k(i9);
                            int iS6 = c1534jr.s();
                            switch (iS6) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str3 = "video/mp4v-es";
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str3 = "video/avc";
                                    break;
                                case 842289229:
                                    str3 = "video/mp42";
                                    break;
                                case 859066445:
                                    str3 = "video/mp43";
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str3 = "video/mjpeg";
                                    break;
                                default:
                                    str3 = null;
                                    break;
                            }
                            if (str3 != null) {
                                K k9 = new K();
                                k9.f14277r = iS4;
                                k9.f14278s = iS5;
                                k9.f(str3);
                                c1700n0 = new C1700n0(new C1804p0(k9));
                            } else {
                                p000a.r.p("Ignoring track with unsupported compression ", iS6, "StreamFormatChunk");
                                c1700n0 = null;
                            }
                        }
                        break;
                    case 1751742049:
                        int iS7 = c1534jr.s();
                        c1534jr.k(8);
                        int iS8 = c1534jr.s();
                        int iS9 = c1534jr.s();
                        c1534jr.k(i9);
                        c1534jr.s();
                        c1534jr.k(12);
                        c1700n0 = new C1492j0(iS7, iS8, iS9);
                        break;
                    case 1752331379:
                        int iS10 = c1534jr.s();
                        c1534jr.k(12);
                        c1534jr.s();
                        int iS11 = c1534jr.s();
                        int iS12 = c1534jr.s();
                        c1534jr.k(i9);
                        int iS13 = c1534jr.s();
                        int iS14 = c1534jr.s();
                        c1534jr.k(8);
                        c1700n0 = new C1544k0(iS10, iS11, iS12, iS13, iS14);
                        break;
                    case 1852994675:
                        c1700n0 = new C1752o0(c1534jr.b(c1534jr.o(), StandardCharsets.UTF_8));
                        break;
                    default:
                        c1700n0 = null;
                        break;
                }
            } else {
                c1700n0 = b(c1534jr.s(), c1534jr);
            }
            if (c1700n0 != null) {
                if (c1700n0.zza() == 1752331379) {
                    int i14 = ((C1544k0) c1700n0).f19578a;
                    if (i14 == 1935960438) {
                        b8 = 2;
                    } else if (i14 == 1935963489) {
                        b8 = 1;
                    } else if (i14 != 1937012852) {
                        Zo.f("AviStreamHeaderChunk", "Found unsupported streamType fourCC: ".concat(String.valueOf(Integer.toHexString(i14))));
                        b8 = -1;
                    } else {
                        b8 = 3;
                    }
                }
                int i15 = i12 + 1;
                int length = objArrCopyOf.length;
                if (length < i15) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, AbstractC1762oA.e(length, i15));
                }
                objArrCopyOf[i12] = c1700n0;
                i12 = i15;
            }
            c1534jr.j(iS2);
            c1534jr.i(i10);
            i9 = 4;
            i11 = 0;
        }
        return new C1648m0(i8, AbstractC2073uA.s(i12, objArrCopyOf));
    }

    public final InterfaceC1390h0 a(Class cls) {
        AbstractC2073uA abstractC2073uA = this.f19884a;
        int size = abstractC2073uA.size();
        int i8 = 0;
        while (i8 < size) {
            InterfaceC1390h0 interfaceC1390h0 = (InterfaceC1390h0) abstractC2073uA.get(i8);
            i8++;
            if (interfaceC1390h0.getClass() == cls) {
                return interfaceC1390h0;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1390h0
    public final int zza() {
        return this.f19885b;
    }
}
