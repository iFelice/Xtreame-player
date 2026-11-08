package p134r1;

import com.google.api.Endpoint;
import com.google.protobuf.DescriptorProtos$FileOptions;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.ws.WebSocketProtocol;
import org.videolan.libvlc.media.MediaPlayer;
import p110o0.b;
import p117p0.E;
import p117p0.x;
import p126q1.j;

/* JADX INFO: loaded from: classes.dex */
public final class c extends i {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f29711i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f29712j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f29713k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public List f29717o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public List f29718p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f29719q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f29720r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f29721s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f29722t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public byte f29723u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public byte f29724v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f29726x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f29727y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int[] f29709z = {11, 1, 3, 12, 14, 5, 7, 9};

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final int[] f29702A = {0, 4, 8, 12, 16, 20, 24, 28};

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final int[] f29703B = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final int[] f29704C = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, Endpoint.TARGET_FIELD_NUMBER, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final int[] f29705D = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public static final int[] f29706E = {193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK, 202, 203, 235, 206, 207, 239, 212, 217, 249, 219, 171, 187};

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public static final int[] f29707F = {195, 227, 205, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, WebSocketProtocol.PAYLOAD_SHORT, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final boolean[] f29708G = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final E f29710h = new E();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final ArrayList f29715m = new ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public b f29716n = new b(0, 4);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f29725w = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f29714l = 16000000;

    public c(int i8, String str) {
        this.f29711i = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        if (i8 == 1) {
            this.f29713k = 0;
            this.f29712j = 0;
        } else if (i8 == 2) {
            this.f29713k = 1;
            this.f29712j = 0;
        } else if (i8 == 3) {
            this.f29713k = 0;
            this.f29712j = 1;
        } else if (i8 != 4) {
            x.f("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.f29713k = 0;
            this.f29712j = 0;
        } else {
            this.f29713k = 1;
            this.f29712j = 1;
        }
        h(0);
        g();
        this.f29726x = true;
        this.f29727y = -9223372036854775807L;
    }

    @Override // p134r1.i
    public final I2.c b() {
        List list = this.f29717o;
        this.f29718p = list;
        list.getClass();
        return new I2.c(list);
    }

    /* JADX WARN: Code duplicated, block: B:121:0x019a  */
    /* JADX WARN: Code duplicated, block: B:123:0x01a0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:127:0x01ae A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:128:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:131:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:133:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:134:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:137:0x01c3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:138:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:140:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:141:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:142:0x01da  */
    /* JADX WARN: Code duplicated, block: B:143:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:148:0x0207 A[LOOP:1: B:146:0x0201->B:148:0x0207, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:149:0x020b  */
    /* JADX WARN: Code duplicated, block: B:151:0x0215 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:152:0x0217  */
    /* JADX WARN: Code duplicated, block: B:153:0x021c  */
    /* JADX WARN: Code duplicated, block: B:154:0x0223  */
    /* JADX WARN: Code duplicated, block: B:155:0x022e  */
    /* JADX WARN: Code duplicated, block: B:156:0x0239  */
    /* JADX WARN: Code duplicated, block: B:157:0x0244  */
    /* JADX WARN: Code duplicated, block: B:158:0x0249  */
    /* JADX WARN: Code duplicated, block: B:159:0x024e  */
    /* JADX WARN: Code duplicated, block: B:161:0x025f  */
    /* JADX WARN: Code duplicated, block: B:179:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:180:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:0x007e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x00ae A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x00bd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:188:0x0014 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:189:0x0014 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:191:0x0014 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0059  */
    /* JADX WARN: Code duplicated, block: B:49:0x0092  */
    /* JADX WARN: Code duplicated, block: B:51:0x0096  */
    /* JADX WARN: Code duplicated, block: B:52:0x0098  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a6 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:64:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:68:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:75:0x00de  */
    /* JADX WARN: Code duplicated, block: B:83:0x0100 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x0102  */
    /* JADX WARN: Code duplicated, block: B:91:0x012a  */
    /* JADX WARN: Code duplicated, block: B:93:0x012e  */
    @Override // p134r1.i
    public final void c(g gVar) {
        boolean z7;
        int i8;
        int[] iArr;
        int i9;
        int i10;
        int i11;
        int i12;
        ArrayList arrayList;
        int iMin;
        ByteBuffer byteBuffer = gVar.f30904I;
        byteBuffer.getClass();
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        E e8 = this.f29710h;
        e8.J(iLimit, bArrArray);
        boolean z8 = false;
        while (true) {
            int iA = e8.a();
            int i13 = this.f29711i;
            if (iA < i13) {
                if (z8) {
                    int i14 = this.f29719q;
                    if (i14 == 1 || i14 == 3) {
                        this.f29717o = f();
                        this.f29727y = this.f29778e;
                        return;
                    }
                    return;
                }
                return;
            }
            int iZ = i13 == 2 ? -4 : e8.z();
            int iZ2 = e8.z();
            int iZ3 = e8.z();
            if ((iZ & 2) == 0 && (iZ & 1) == this.f29712j) {
                byte b8 = (byte) (iZ2 & 127);
                byte b9 = (byte) (iZ3 & 127);
                if (b8 != 0 || b9 != 0) {
                    boolean z9 = this.f29721s;
                    if ((iZ & 4) == 4) {
                        boolean[] zArr = f29708G;
                        if (zArr[iZ2] && zArr[iZ3]) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                    } else {
                        z7 = false;
                    }
                    this.f29721s = z7;
                    if (!z7 || (b8 & 240) != 16) {
                        this.f29722t = false;
                        if (!z7) {
                            if (1 > b8 && b8 <= 15) {
                                this.f29726x = false;
                            } else if ((b8 & 246) == 20) {
                                if (b9 == 32 && b9 != 47) {
                                    switch (b9) {
                                        default:
                                            switch (b9) {
                                                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                                                case 43:
                                                    this.f29726x = false;
                                                    break;
                                            }
                                        case 37:
                                        case 38:
                                        case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                            this.f29726x = true;
                                            break;
                                    }
                                } else {
                                    this.f29726x = true;
                                }
                            }
                            if (this.f29726x) {
                                i8 = b8 & 224;
                                if (i8 == 0) {
                                    this.f29725w = (b8 >> 3) & 1;
                                }
                                if (this.f29725w != this.f29713k) {
                                    if (i8 == 0) {
                                        i9 = b8 & 247;
                                        if (i9 == 17 || (b9 & 240) != 48) {
                                            i10 = b8 & 246;
                                            if (i10 != 18 && (b9 & 224) == 32) {
                                                this.f29716n.b();
                                                this.f29716n.a((char) ((b8 & 1) == 0 ? f29706E[b9 & 31] : f29707F[b9 & 31]));
                                            } else if (i9 != 17 && (b9 & 240) == 32) {
                                                this.f29716n.a(' ');
                                                boolean z10 = (b9 & 1) == 1;
                                                b bVar = this.f29716n;
                                                bVar.f29694a.add(new a(z10, (b9 >> 1) & 7, bVar.f29696c.length()));
                                            } else if ((b8 & 240) != 16 && (b9 & 192) == 64) {
                                                int i15 = f29709z[b8 & 7];
                                                if ((b9 & 32) != 0) {
                                                    i15++;
                                                }
                                                b bVar2 = this.f29716n;
                                                if (i15 != bVar2.f29697d) {
                                                    if (this.f29719q != 1 && !bVar2.e()) {
                                                        b bVar3 = new b(this.f29719q, this.f29720r);
                                                        this.f29716n = bVar3;
                                                        this.f29715m.add(bVar3);
                                                    }
                                                    this.f29716n.f29697d = i15;
                                                }
                                                boolean z11 = (b9 & 16) == 16;
                                                boolean z12 = (b9 & 1) == 1;
                                                int i16 = (b9 >> 1) & 7;
                                                b bVar4 = this.f29716n;
                                                bVar4.f29694a.add(new a(z12, z11 ? 8 : i16, bVar4.f29696c.length()));
                                                if (z11) {
                                                    this.f29716n.f29698e = f29702A[i16];
                                                }
                                            } else if (i9 != 23 && b9 >= 33 && b9 <= 35) {
                                                this.f29716n.f29699f = b9 - 32;
                                            } else if (i10 == 20 && (b9 & 240) == 32) {
                                                if (b9 == 32) {
                                                    h(2);
                                                } else if (b9 != 41) {
                                                    switch (b9) {
                                                        case 37:
                                                            h(1);
                                                            this.f29720r = 2;
                                                            this.f29716n.f29701h = 2;
                                                            break;
                                                        case 38:
                                                            h(1);
                                                            this.f29720r = 3;
                                                            this.f29716n.f29701h = 3;
                                                            break;
                                                        case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                            h(1);
                                                            this.f29720r = 4;
                                                            this.f29716n.f29701h = 4;
                                                            break;
                                                        default:
                                                            i11 = this.f29719q;
                                                            if (i11 != 0) {
                                                                if (b9 != 33) {
                                                                    switch (b9) {
                                                                        case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                            this.f29717o = Collections.emptyList();
                                                                            i12 = this.f29719q;
                                                                            if (i12 != 1 || i12 == 3) {
                                                                                g();
                                                                            }
                                                                            break;
                                                                        case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                            if (i11 == 1 && !this.f29716n.e()) {
                                                                                b bVar5 = this.f29716n;
                                                                                arrayList = bVar5.f29695b;
                                                                                arrayList.add(bVar5.d());
                                                                                bVar5.f29696c.setLength(0);
                                                                                bVar5.f29694a.clear();
                                                                                iMin = Math.min(bVar5.f29701h, bVar5.f29697d);
                                                                                while (arrayList.size() >= iMin) {
                                                                                    arrayList.remove(0);
                                                                                }
                                                                            }
                                                                            break;
                                                                        case 46:
                                                                            g();
                                                                            break;
                                                                        case 47:
                                                                            this.f29717o = f();
                                                                            g();
                                                                            break;
                                                                    }
                                                                } else {
                                                                    this.f29716n.b();
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                    }
                                                } else {
                                                    h(3);
                                                }
                                            }
                                        } else {
                                            this.f29716n.a((char) f29705D[b9 & 15]);
                                        }
                                    } else {
                                        b bVar6 = this.f29716n;
                                        iArr = f29704C;
                                        bVar6.a((char) iArr[(b8 & 127) - 32]);
                                        if ((b9 & 224) != 0) {
                                            this.f29716n.a((char) iArr[(b9 & 127) - 32]);
                                        }
                                    }
                                    z8 = true;
                                }
                            }
                        } else if (z9) {
                            g();
                            z8 = true;
                        }
                    } else if (this.f29722t && this.f29723u == b8 && this.f29724v == b9) {
                        this.f29722t = false;
                    } else {
                        this.f29722t = true;
                        this.f29723u = b8;
                        this.f29724v = b9;
                        if (!z7) {
                            if (1 > b8) {
                                if ((b8 & 246) == 20) {
                                    if (b9 == 32) {
                                        this.f29726x = true;
                                    } else {
                                        this.f29726x = true;
                                    }
                                }
                            } else if ((b8 & 246) == 20) {
                                if (b9 == 32) {
                                    this.f29726x = true;
                                } else {
                                    this.f29726x = true;
                                }
                            }
                            if (this.f29726x) {
                                i8 = b8 & 224;
                                if (i8 == 0) {
                                    this.f29725w = (b8 >> 3) & 1;
                                }
                                if (this.f29725w != this.f29713k) {
                                    if (i8 == 0) {
                                        i9 = b8 & 247;
                                        if (i9 == 17) {
                                            i10 = b8 & 246;
                                            if (i10 != 18) {
                                                if (i9 != 17) {
                                                    if ((b8 & 240) != 16) {
                                                        if (i9 != 23) {
                                                            if (i10 == 20) {
                                                                if (b9 == 32) {
                                                                    h(2);
                                                                } else if (b9 != 41) {
                                                                    switch (b9) {
                                                                        case 37:
                                                                            h(1);
                                                                            this.f29720r = 2;
                                                                            this.f29716n.f29701h = 2;
                                                                            break;
                                                                        case 38:
                                                                            h(1);
                                                                            this.f29720r = 3;
                                                                            this.f29716n.f29701h = 3;
                                                                            break;
                                                                        case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                            h(1);
                                                                            this.f29720r = 4;
                                                                            this.f29716n.f29701h = 4;
                                                                            break;
                                                                        default:
                                                                            i11 = this.f29719q;
                                                                            if (i11 != 0) {
                                                                                if (b9 != 33) {
                                                                                    switch (b9) {
                                                                                        case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                            this.f29717o = Collections.emptyList();
                                                                                            i12 = this.f29719q;
                                                                                            if (i12 != 1) {
                                                                                                g();
                                                                                            } else {
                                                                                                g();
                                                                                            }
                                                                                            break;
                                                                                        case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                            if (i11 == 1) {
                                                                                                b bVar7 = this.f29716n;
                                                                                                arrayList = bVar7.f29695b;
                                                                                                arrayList.add(bVar7.d());
                                                                                                bVar7.f29696c.setLength(0);
                                                                                                bVar7.f29694a.clear();
                                                                                                iMin = Math.min(bVar7.f29701h, bVar7.f29697d);
                                                                                                while (arrayList.size() >= iMin) {
                                                                                                    arrayList.remove(0);
                                                                                                }
                                                                                            }
                                                                                            break;
                                                                                        case 46:
                                                                                            g();
                                                                                            break;
                                                                                        case 47:
                                                                                            this.f29717o = f();
                                                                                            g();
                                                                                            break;
                                                                                    }
                                                                                } else {
                                                                                    this.f29716n.b();
                                                                                    break;
                                                                                }
                                                                            }
                                                                            break;
                                                                    }
                                                                } else {
                                                                    h(3);
                                                                }
                                                            }
                                                        } else if (i10 == 20) {
                                                            if (b9 == 32) {
                                                                h(2);
                                                            } else if (b9 != 41) {
                                                                switch (b9) {
                                                                    case 37:
                                                                        h(1);
                                                                        this.f29720r = 2;
                                                                        this.f29716n.f29701h = 2;
                                                                        break;
                                                                    case 38:
                                                                        h(1);
                                                                        this.f29720r = 3;
                                                                        this.f29716n.f29701h = 3;
                                                                        break;
                                                                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                        h(1);
                                                                        this.f29720r = 4;
                                                                        this.f29716n.f29701h = 4;
                                                                        break;
                                                                    default:
                                                                        i11 = this.f29719q;
                                                                        if (i11 != 0) {
                                                                            if (b9 != 33) {
                                                                                switch (b9) {
                                                                                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                        this.f29717o = Collections.emptyList();
                                                                                        i12 = this.f29719q;
                                                                                        if (i12 != 1) {
                                                                                            g();
                                                                                        } else {
                                                                                            g();
                                                                                        }
                                                                                        break;
                                                                                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                        if (i11 == 1) {
                                                                                            b bVar8 = this.f29716n;
                                                                                            arrayList = bVar8.f29695b;
                                                                                            arrayList.add(bVar8.d());
                                                                                            bVar8.f29696c.setLength(0);
                                                                                            bVar8.f29694a.clear();
                                                                                            iMin = Math.min(bVar8.f29701h, bVar8.f29697d);
                                                                                            while (arrayList.size() >= iMin) {
                                                                                                arrayList.remove(0);
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        g();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.f29717o = f();
                                                                                        g();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.f29716n.b();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                h(3);
                                                            }
                                                        }
                                                    } else if (i9 != 23) {
                                                        if (i10 == 20) {
                                                            if (b9 == 32) {
                                                                h(2);
                                                            } else if (b9 != 41) {
                                                                switch (b9) {
                                                                    case 37:
                                                                        h(1);
                                                                        this.f29720r = 2;
                                                                        this.f29716n.f29701h = 2;
                                                                        break;
                                                                    case 38:
                                                                        h(1);
                                                                        this.f29720r = 3;
                                                                        this.f29716n.f29701h = 3;
                                                                        break;
                                                                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                        h(1);
                                                                        this.f29720r = 4;
                                                                        this.f29716n.f29701h = 4;
                                                                        break;
                                                                    default:
                                                                        i11 = this.f29719q;
                                                                        if (i11 != 0) {
                                                                            if (b9 != 33) {
                                                                                switch (b9) {
                                                                                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                        this.f29717o = Collections.emptyList();
                                                                                        i12 = this.f29719q;
                                                                                        if (i12 != 1) {
                                                                                            g();
                                                                                        } else {
                                                                                            g();
                                                                                        }
                                                                                        break;
                                                                                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                        if (i11 == 1) {
                                                                                            b bVar9 = this.f29716n;
                                                                                            arrayList = bVar9.f29695b;
                                                                                            arrayList.add(bVar9.d());
                                                                                            bVar9.f29696c.setLength(0);
                                                                                            bVar9.f29694a.clear();
                                                                                            iMin = Math.min(bVar9.f29701h, bVar9.f29697d);
                                                                                            while (arrayList.size() >= iMin) {
                                                                                                arrayList.remove(0);
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        g();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.f29717o = f();
                                                                                        g();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.f29716n.b();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                h(3);
                                                            }
                                                        }
                                                    } else if (i10 == 20) {
                                                        if (b9 == 32) {
                                                            h(2);
                                                        } else if (b9 != 41) {
                                                            switch (b9) {
                                                                case 37:
                                                                    h(1);
                                                                    this.f29720r = 2;
                                                                    this.f29716n.f29701h = 2;
                                                                    break;
                                                                case 38:
                                                                    h(1);
                                                                    this.f29720r = 3;
                                                                    this.f29716n.f29701h = 3;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                    h(1);
                                                                    this.f29720r = 4;
                                                                    this.f29716n.f29701h = 4;
                                                                    break;
                                                                default:
                                                                    i11 = this.f29719q;
                                                                    if (i11 != 0) {
                                                                        if (b9 != 33) {
                                                                            switch (b9) {
                                                                                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                    this.f29717o = Collections.emptyList();
                                                                                    i12 = this.f29719q;
                                                                                    if (i12 != 1) {
                                                                                        g();
                                                                                    } else {
                                                                                        g();
                                                                                    }
                                                                                    break;
                                                                                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                    if (i11 == 1) {
                                                                                        b bVar10 = this.f29716n;
                                                                                        arrayList = bVar10.f29695b;
                                                                                        arrayList.add(bVar10.d());
                                                                                        bVar10.f29696c.setLength(0);
                                                                                        bVar10.f29694a.clear();
                                                                                        iMin = Math.min(bVar10.f29701h, bVar10.f29697d);
                                                                                        while (arrayList.size() >= iMin) {
                                                                                            arrayList.remove(0);
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    g();
                                                                                    break;
                                                                                case 47:
                                                                                    this.f29717o = f();
                                                                                    g();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.f29716n.b();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            h(3);
                                                        }
                                                    }
                                                } else if ((b8 & 240) != 16) {
                                                    if (i9 != 23) {
                                                        if (i10 == 20) {
                                                            if (b9 == 32) {
                                                                h(2);
                                                            } else if (b9 != 41) {
                                                                switch (b9) {
                                                                    case 37:
                                                                        h(1);
                                                                        this.f29720r = 2;
                                                                        this.f29716n.f29701h = 2;
                                                                        break;
                                                                    case 38:
                                                                        h(1);
                                                                        this.f29720r = 3;
                                                                        this.f29716n.f29701h = 3;
                                                                        break;
                                                                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                        h(1);
                                                                        this.f29720r = 4;
                                                                        this.f29716n.f29701h = 4;
                                                                        break;
                                                                    default:
                                                                        i11 = this.f29719q;
                                                                        if (i11 != 0) {
                                                                            if (b9 != 33) {
                                                                                switch (b9) {
                                                                                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                        this.f29717o = Collections.emptyList();
                                                                                        i12 = this.f29719q;
                                                                                        if (i12 != 1) {
                                                                                            g();
                                                                                        } else {
                                                                                            g();
                                                                                        }
                                                                                        break;
                                                                                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                        if (i11 == 1) {
                                                                                            b bVar11 = this.f29716n;
                                                                                            arrayList = bVar11.f29695b;
                                                                                            arrayList.add(bVar11.d());
                                                                                            bVar11.f29696c.setLength(0);
                                                                                            bVar11.f29694a.clear();
                                                                                            iMin = Math.min(bVar11.f29701h, bVar11.f29697d);
                                                                                            while (arrayList.size() >= iMin) {
                                                                                                arrayList.remove(0);
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        g();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.f29717o = f();
                                                                                        g();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.f29716n.b();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                h(3);
                                                            }
                                                        }
                                                    } else if (i10 == 20) {
                                                        if (b9 == 32) {
                                                            h(2);
                                                        } else if (b9 != 41) {
                                                            switch (b9) {
                                                                case 37:
                                                                    h(1);
                                                                    this.f29720r = 2;
                                                                    this.f29716n.f29701h = 2;
                                                                    break;
                                                                case 38:
                                                                    h(1);
                                                                    this.f29720r = 3;
                                                                    this.f29716n.f29701h = 3;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                    h(1);
                                                                    this.f29720r = 4;
                                                                    this.f29716n.f29701h = 4;
                                                                    break;
                                                                default:
                                                                    i11 = this.f29719q;
                                                                    if (i11 != 0) {
                                                                        if (b9 != 33) {
                                                                            switch (b9) {
                                                                                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                    this.f29717o = Collections.emptyList();
                                                                                    i12 = this.f29719q;
                                                                                    if (i12 != 1) {
                                                                                        g();
                                                                                    } else {
                                                                                        g();
                                                                                    }
                                                                                    break;
                                                                                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                    if (i11 == 1) {
                                                                                        b bVar12 = this.f29716n;
                                                                                        arrayList = bVar12.f29695b;
                                                                                        arrayList.add(bVar12.d());
                                                                                        bVar12.f29696c.setLength(0);
                                                                                        bVar12.f29694a.clear();
                                                                                        iMin = Math.min(bVar12.f29701h, bVar12.f29697d);
                                                                                        while (arrayList.size() >= iMin) {
                                                                                            arrayList.remove(0);
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    g();
                                                                                    break;
                                                                                case 47:
                                                                                    this.f29717o = f();
                                                                                    g();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.f29716n.b();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            h(3);
                                                        }
                                                    }
                                                } else if (i9 != 23) {
                                                    if (i10 == 20) {
                                                        if (b9 == 32) {
                                                            h(2);
                                                        } else if (b9 != 41) {
                                                            switch (b9) {
                                                                case 37:
                                                                    h(1);
                                                                    this.f29720r = 2;
                                                                    this.f29716n.f29701h = 2;
                                                                    break;
                                                                case 38:
                                                                    h(1);
                                                                    this.f29720r = 3;
                                                                    this.f29716n.f29701h = 3;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                    h(1);
                                                                    this.f29720r = 4;
                                                                    this.f29716n.f29701h = 4;
                                                                    break;
                                                                default:
                                                                    i11 = this.f29719q;
                                                                    if (i11 != 0) {
                                                                        if (b9 != 33) {
                                                                            switch (b9) {
                                                                                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                    this.f29717o = Collections.emptyList();
                                                                                    i12 = this.f29719q;
                                                                                    if (i12 != 1) {
                                                                                        g();
                                                                                    } else {
                                                                                        g();
                                                                                    }
                                                                                    break;
                                                                                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                    if (i11 == 1) {
                                                                                        b bVar13 = this.f29716n;
                                                                                        arrayList = bVar13.f29695b;
                                                                                        arrayList.add(bVar13.d());
                                                                                        bVar13.f29696c.setLength(0);
                                                                                        bVar13.f29694a.clear();
                                                                                        iMin = Math.min(bVar13.f29701h, bVar13.f29697d);
                                                                                        while (arrayList.size() >= iMin) {
                                                                                            arrayList.remove(0);
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    g();
                                                                                    break;
                                                                                case 47:
                                                                                    this.f29717o = f();
                                                                                    g();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.f29716n.b();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            h(3);
                                                        }
                                                    }
                                                } else if (i10 == 20) {
                                                    if (b9 == 32) {
                                                        h(2);
                                                    } else if (b9 != 41) {
                                                        switch (b9) {
                                                            case 37:
                                                                h(1);
                                                                this.f29720r = 2;
                                                                this.f29716n.f29701h = 2;
                                                                break;
                                                            case 38:
                                                                h(1);
                                                                this.f29720r = 3;
                                                                this.f29716n.f29701h = 3;
                                                                break;
                                                            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                h(1);
                                                                this.f29720r = 4;
                                                                this.f29716n.f29701h = 4;
                                                                break;
                                                            default:
                                                                i11 = this.f29719q;
                                                                if (i11 != 0) {
                                                                    if (b9 != 33) {
                                                                        switch (b9) {
                                                                            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                this.f29717o = Collections.emptyList();
                                                                                i12 = this.f29719q;
                                                                                if (i12 != 1) {
                                                                                    g();
                                                                                } else {
                                                                                    g();
                                                                                }
                                                                                break;
                                                                            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                if (i11 == 1) {
                                                                                    b bVar14 = this.f29716n;
                                                                                    arrayList = bVar14.f29695b;
                                                                                    arrayList.add(bVar14.d());
                                                                                    bVar14.f29696c.setLength(0);
                                                                                    bVar14.f29694a.clear();
                                                                                    iMin = Math.min(bVar14.f29701h, bVar14.f29697d);
                                                                                    while (arrayList.size() >= iMin) {
                                                                                        arrayList.remove(0);
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                g();
                                                                                break;
                                                                            case 47:
                                                                                this.f29717o = f();
                                                                                g();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.f29716n.b();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        h(3);
                                                    }
                                                }
                                            } else if (i9 != 17) {
                                                if ((b8 & 240) != 16) {
                                                    if (i9 != 23) {
                                                        if (i10 == 20) {
                                                            if (b9 == 32) {
                                                                h(2);
                                                            } else if (b9 != 41) {
                                                                switch (b9) {
                                                                    case 37:
                                                                        h(1);
                                                                        this.f29720r = 2;
                                                                        this.f29716n.f29701h = 2;
                                                                        break;
                                                                    case 38:
                                                                        h(1);
                                                                        this.f29720r = 3;
                                                                        this.f29716n.f29701h = 3;
                                                                        break;
                                                                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                        h(1);
                                                                        this.f29720r = 4;
                                                                        this.f29716n.f29701h = 4;
                                                                        break;
                                                                    default:
                                                                        i11 = this.f29719q;
                                                                        if (i11 != 0) {
                                                                            if (b9 != 33) {
                                                                                switch (b9) {
                                                                                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                        this.f29717o = Collections.emptyList();
                                                                                        i12 = this.f29719q;
                                                                                        if (i12 != 1) {
                                                                                            g();
                                                                                        } else {
                                                                                            g();
                                                                                        }
                                                                                        break;
                                                                                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                        if (i11 == 1) {
                                                                                            b bVar15 = this.f29716n;
                                                                                            arrayList = bVar15.f29695b;
                                                                                            arrayList.add(bVar15.d());
                                                                                            bVar15.f29696c.setLength(0);
                                                                                            bVar15.f29694a.clear();
                                                                                            iMin = Math.min(bVar15.f29701h, bVar15.f29697d);
                                                                                            while (arrayList.size() >= iMin) {
                                                                                                arrayList.remove(0);
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        g();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.f29717o = f();
                                                                                        g();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.f29716n.b();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                h(3);
                                                            }
                                                        }
                                                    } else if (i10 == 20) {
                                                        if (b9 == 32) {
                                                            h(2);
                                                        } else if (b9 != 41) {
                                                            switch (b9) {
                                                                case 37:
                                                                    h(1);
                                                                    this.f29720r = 2;
                                                                    this.f29716n.f29701h = 2;
                                                                    break;
                                                                case 38:
                                                                    h(1);
                                                                    this.f29720r = 3;
                                                                    this.f29716n.f29701h = 3;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                    h(1);
                                                                    this.f29720r = 4;
                                                                    this.f29716n.f29701h = 4;
                                                                    break;
                                                                default:
                                                                    i11 = this.f29719q;
                                                                    if (i11 != 0) {
                                                                        if (b9 != 33) {
                                                                            switch (b9) {
                                                                                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                    this.f29717o = Collections.emptyList();
                                                                                    i12 = this.f29719q;
                                                                                    if (i12 != 1) {
                                                                                        g();
                                                                                    } else {
                                                                                        g();
                                                                                    }
                                                                                    break;
                                                                                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                    if (i11 == 1) {
                                                                                        b bVar16 = this.f29716n;
                                                                                        arrayList = bVar16.f29695b;
                                                                                        arrayList.add(bVar16.d());
                                                                                        bVar16.f29696c.setLength(0);
                                                                                        bVar16.f29694a.clear();
                                                                                        iMin = Math.min(bVar16.f29701h, bVar16.f29697d);
                                                                                        while (arrayList.size() >= iMin) {
                                                                                            arrayList.remove(0);
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    g();
                                                                                    break;
                                                                                case 47:
                                                                                    this.f29717o = f();
                                                                                    g();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.f29716n.b();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            h(3);
                                                        }
                                                    }
                                                } else if (i9 != 23) {
                                                    if (i10 == 20) {
                                                        if (b9 == 32) {
                                                            h(2);
                                                        } else if (b9 != 41) {
                                                            switch (b9) {
                                                                case 37:
                                                                    h(1);
                                                                    this.f29720r = 2;
                                                                    this.f29716n.f29701h = 2;
                                                                    break;
                                                                case 38:
                                                                    h(1);
                                                                    this.f29720r = 3;
                                                                    this.f29716n.f29701h = 3;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                    h(1);
                                                                    this.f29720r = 4;
                                                                    this.f29716n.f29701h = 4;
                                                                    break;
                                                                default:
                                                                    i11 = this.f29719q;
                                                                    if (i11 != 0) {
                                                                        if (b9 != 33) {
                                                                            switch (b9) {
                                                                                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                    this.f29717o = Collections.emptyList();
                                                                                    i12 = this.f29719q;
                                                                                    if (i12 != 1) {
                                                                                        g();
                                                                                    } else {
                                                                                        g();
                                                                                    }
                                                                                    break;
                                                                                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                    if (i11 == 1) {
                                                                                        b bVar17 = this.f29716n;
                                                                                        arrayList = bVar17.f29695b;
                                                                                        arrayList.add(bVar17.d());
                                                                                        bVar17.f29696c.setLength(0);
                                                                                        bVar17.f29694a.clear();
                                                                                        iMin = Math.min(bVar17.f29701h, bVar17.f29697d);
                                                                                        while (arrayList.size() >= iMin) {
                                                                                            arrayList.remove(0);
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    g();
                                                                                    break;
                                                                                case 47:
                                                                                    this.f29717o = f();
                                                                                    g();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.f29716n.b();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            h(3);
                                                        }
                                                    }
                                                } else if (i10 == 20) {
                                                    if (b9 == 32) {
                                                        h(2);
                                                    } else if (b9 != 41) {
                                                        switch (b9) {
                                                            case 37:
                                                                h(1);
                                                                this.f29720r = 2;
                                                                this.f29716n.f29701h = 2;
                                                                break;
                                                            case 38:
                                                                h(1);
                                                                this.f29720r = 3;
                                                                this.f29716n.f29701h = 3;
                                                                break;
                                                            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                h(1);
                                                                this.f29720r = 4;
                                                                this.f29716n.f29701h = 4;
                                                                break;
                                                            default:
                                                                i11 = this.f29719q;
                                                                if (i11 != 0) {
                                                                    if (b9 != 33) {
                                                                        switch (b9) {
                                                                            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                this.f29717o = Collections.emptyList();
                                                                                i12 = this.f29719q;
                                                                                if (i12 != 1) {
                                                                                    g();
                                                                                } else {
                                                                                    g();
                                                                                }
                                                                                break;
                                                                            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                if (i11 == 1) {
                                                                                    b bVar18 = this.f29716n;
                                                                                    arrayList = bVar18.f29695b;
                                                                                    arrayList.add(bVar18.d());
                                                                                    bVar18.f29696c.setLength(0);
                                                                                    bVar18.f29694a.clear();
                                                                                    iMin = Math.min(bVar18.f29701h, bVar18.f29697d);
                                                                                    while (arrayList.size() >= iMin) {
                                                                                        arrayList.remove(0);
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                g();
                                                                                break;
                                                                            case 47:
                                                                                this.f29717o = f();
                                                                                g();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.f29716n.b();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        h(3);
                                                    }
                                                }
                                            } else if ((b8 & 240) != 16) {
                                                if (i9 != 23) {
                                                    if (i10 == 20) {
                                                        if (b9 == 32) {
                                                            h(2);
                                                        } else if (b9 != 41) {
                                                            switch (b9) {
                                                                case 37:
                                                                    h(1);
                                                                    this.f29720r = 2;
                                                                    this.f29716n.f29701h = 2;
                                                                    break;
                                                                case 38:
                                                                    h(1);
                                                                    this.f29720r = 3;
                                                                    this.f29716n.f29701h = 3;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                    h(1);
                                                                    this.f29720r = 4;
                                                                    this.f29716n.f29701h = 4;
                                                                    break;
                                                                default:
                                                                    i11 = this.f29719q;
                                                                    if (i11 != 0) {
                                                                        if (b9 != 33) {
                                                                            switch (b9) {
                                                                                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                    this.f29717o = Collections.emptyList();
                                                                                    i12 = this.f29719q;
                                                                                    if (i12 != 1) {
                                                                                        g();
                                                                                    } else {
                                                                                        g();
                                                                                    }
                                                                                    break;
                                                                                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                    if (i11 == 1) {
                                                                                        b bVar19 = this.f29716n;
                                                                                        arrayList = bVar19.f29695b;
                                                                                        arrayList.add(bVar19.d());
                                                                                        bVar19.f29696c.setLength(0);
                                                                                        bVar19.f29694a.clear();
                                                                                        iMin = Math.min(bVar19.f29701h, bVar19.f29697d);
                                                                                        while (arrayList.size() >= iMin) {
                                                                                            arrayList.remove(0);
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    g();
                                                                                    break;
                                                                                case 47:
                                                                                    this.f29717o = f();
                                                                                    g();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.f29716n.b();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            h(3);
                                                        }
                                                    }
                                                } else if (i10 == 20) {
                                                    if (b9 == 32) {
                                                        h(2);
                                                    } else if (b9 != 41) {
                                                        switch (b9) {
                                                            case 37:
                                                                h(1);
                                                                this.f29720r = 2;
                                                                this.f29716n.f29701h = 2;
                                                                break;
                                                            case 38:
                                                                h(1);
                                                                this.f29720r = 3;
                                                                this.f29716n.f29701h = 3;
                                                                break;
                                                            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                h(1);
                                                                this.f29720r = 4;
                                                                this.f29716n.f29701h = 4;
                                                                break;
                                                            default:
                                                                i11 = this.f29719q;
                                                                if (i11 != 0) {
                                                                    if (b9 != 33) {
                                                                        switch (b9) {
                                                                            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                this.f29717o = Collections.emptyList();
                                                                                i12 = this.f29719q;
                                                                                if (i12 != 1) {
                                                                                    g();
                                                                                } else {
                                                                                    g();
                                                                                }
                                                                                break;
                                                                            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                if (i11 == 1) {
                                                                                    b bVar110 = this.f29716n;
                                                                                    arrayList = bVar110.f29695b;
                                                                                    arrayList.add(bVar110.d());
                                                                                    bVar110.f29696c.setLength(0);
                                                                                    bVar110.f29694a.clear();
                                                                                    iMin = Math.min(bVar110.f29701h, bVar110.f29697d);
                                                                                    while (arrayList.size() >= iMin) {
                                                                                        arrayList.remove(0);
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                g();
                                                                                break;
                                                                            case 47:
                                                                                this.f29717o = f();
                                                                                g();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.f29716n.b();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        h(3);
                                                    }
                                                }
                                            } else if (i9 != 23) {
                                                if (i10 == 20) {
                                                    if (b9 == 32) {
                                                        h(2);
                                                    } else if (b9 != 41) {
                                                        switch (b9) {
                                                            case 37:
                                                                h(1);
                                                                this.f29720r = 2;
                                                                this.f29716n.f29701h = 2;
                                                                break;
                                                            case 38:
                                                                h(1);
                                                                this.f29720r = 3;
                                                                this.f29716n.f29701h = 3;
                                                                break;
                                                            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                h(1);
                                                                this.f29720r = 4;
                                                                this.f29716n.f29701h = 4;
                                                                break;
                                                            default:
                                                                i11 = this.f29719q;
                                                                if (i11 != 0) {
                                                                    if (b9 != 33) {
                                                                        switch (b9) {
                                                                            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                this.f29717o = Collections.emptyList();
                                                                                i12 = this.f29719q;
                                                                                if (i12 != 1) {
                                                                                    g();
                                                                                } else {
                                                                                    g();
                                                                                }
                                                                                break;
                                                                            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                if (i11 == 1) {
                                                                                    b bVar111 = this.f29716n;
                                                                                    arrayList = bVar111.f29695b;
                                                                                    arrayList.add(bVar111.d());
                                                                                    bVar111.f29696c.setLength(0);
                                                                                    bVar111.f29694a.clear();
                                                                                    iMin = Math.min(bVar111.f29701h, bVar111.f29697d);
                                                                                    while (arrayList.size() >= iMin) {
                                                                                        arrayList.remove(0);
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                g();
                                                                                break;
                                                                            case 47:
                                                                                this.f29717o = f();
                                                                                g();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.f29716n.b();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        h(3);
                                                    }
                                                }
                                            } else if (i10 == 20) {
                                                if (b9 == 32) {
                                                    h(2);
                                                } else if (b9 != 41) {
                                                    switch (b9) {
                                                        case 37:
                                                            h(1);
                                                            this.f29720r = 2;
                                                            this.f29716n.f29701h = 2;
                                                            break;
                                                        case 38:
                                                            h(1);
                                                            this.f29720r = 3;
                                                            this.f29716n.f29701h = 3;
                                                            break;
                                                        case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                            h(1);
                                                            this.f29720r = 4;
                                                            this.f29716n.f29701h = 4;
                                                            break;
                                                        default:
                                                            i11 = this.f29719q;
                                                            if (i11 != 0) {
                                                                if (b9 != 33) {
                                                                    switch (b9) {
                                                                        case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                            this.f29717o = Collections.emptyList();
                                                                            i12 = this.f29719q;
                                                                            if (i12 != 1) {
                                                                                g();
                                                                            } else {
                                                                                g();
                                                                            }
                                                                            break;
                                                                        case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                            if (i11 == 1) {
                                                                                b bVar112 = this.f29716n;
                                                                                arrayList = bVar112.f29695b;
                                                                                arrayList.add(bVar112.d());
                                                                                bVar112.f29696c.setLength(0);
                                                                                bVar112.f29694a.clear();
                                                                                iMin = Math.min(bVar112.f29701h, bVar112.f29697d);
                                                                                while (arrayList.size() >= iMin) {
                                                                                    arrayList.remove(0);
                                                                                }
                                                                            }
                                                                            break;
                                                                        case 46:
                                                                            g();
                                                                            break;
                                                                        case 47:
                                                                            this.f29717o = f();
                                                                            g();
                                                                            break;
                                                                    }
                                                                } else {
                                                                    this.f29716n.b();
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                    }
                                                } else {
                                                    h(3);
                                                }
                                            }
                                        } else {
                                            i10 = b8 & 246;
                                            if (i10 != 18) {
                                                if (i9 != 17) {
                                                    if ((b8 & 240) != 16) {
                                                        if (i9 != 23) {
                                                            if (i10 == 20) {
                                                                if (b9 == 32) {
                                                                    h(2);
                                                                } else if (b9 != 41) {
                                                                    switch (b9) {
                                                                        case 37:
                                                                            h(1);
                                                                            this.f29720r = 2;
                                                                            this.f29716n.f29701h = 2;
                                                                            break;
                                                                        case 38:
                                                                            h(1);
                                                                            this.f29720r = 3;
                                                                            this.f29716n.f29701h = 3;
                                                                            break;
                                                                        case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                            h(1);
                                                                            this.f29720r = 4;
                                                                            this.f29716n.f29701h = 4;
                                                                            break;
                                                                        default:
                                                                            i11 = this.f29719q;
                                                                            if (i11 != 0) {
                                                                                if (b9 != 33) {
                                                                                    switch (b9) {
                                                                                        case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                            this.f29717o = Collections.emptyList();
                                                                                            i12 = this.f29719q;
                                                                                            if (i12 != 1) {
                                                                                                g();
                                                                                            } else {
                                                                                                g();
                                                                                            }
                                                                                            break;
                                                                                        case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                            if (i11 == 1) {
                                                                                                b bVar113 = this.f29716n;
                                                                                                arrayList = bVar113.f29695b;
                                                                                                arrayList.add(bVar113.d());
                                                                                                bVar113.f29696c.setLength(0);
                                                                                                bVar113.f29694a.clear();
                                                                                                iMin = Math.min(bVar113.f29701h, bVar113.f29697d);
                                                                                                while (arrayList.size() >= iMin) {
                                                                                                    arrayList.remove(0);
                                                                                                }
                                                                                            }
                                                                                            break;
                                                                                        case 46:
                                                                                            g();
                                                                                            break;
                                                                                        case 47:
                                                                                            this.f29717o = f();
                                                                                            g();
                                                                                            break;
                                                                                    }
                                                                                } else {
                                                                                    this.f29716n.b();
                                                                                    break;
                                                                                }
                                                                            }
                                                                            break;
                                                                    }
                                                                } else {
                                                                    h(3);
                                                                }
                                                            }
                                                        } else if (i10 == 20) {
                                                            if (b9 == 32) {
                                                                h(2);
                                                            } else if (b9 != 41) {
                                                                switch (b9) {
                                                                    case 37:
                                                                        h(1);
                                                                        this.f29720r = 2;
                                                                        this.f29716n.f29701h = 2;
                                                                        break;
                                                                    case 38:
                                                                        h(1);
                                                                        this.f29720r = 3;
                                                                        this.f29716n.f29701h = 3;
                                                                        break;
                                                                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                        h(1);
                                                                        this.f29720r = 4;
                                                                        this.f29716n.f29701h = 4;
                                                                        break;
                                                                    default:
                                                                        i11 = this.f29719q;
                                                                        if (i11 != 0) {
                                                                            if (b9 != 33) {
                                                                                switch (b9) {
                                                                                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                        this.f29717o = Collections.emptyList();
                                                                                        i12 = this.f29719q;
                                                                                        if (i12 != 1) {
                                                                                            g();
                                                                                        } else {
                                                                                            g();
                                                                                        }
                                                                                        break;
                                                                                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                        if (i11 == 1) {
                                                                                            b bVar114 = this.f29716n;
                                                                                            arrayList = bVar114.f29695b;
                                                                                            arrayList.add(bVar114.d());
                                                                                            bVar114.f29696c.setLength(0);
                                                                                            bVar114.f29694a.clear();
                                                                                            iMin = Math.min(bVar114.f29701h, bVar114.f29697d);
                                                                                            while (arrayList.size() >= iMin) {
                                                                                                arrayList.remove(0);
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        g();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.f29717o = f();
                                                                                        g();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.f29716n.b();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                h(3);
                                                            }
                                                        }
                                                    } else if (i9 != 23) {
                                                        if (i10 == 20) {
                                                            if (b9 == 32) {
                                                                h(2);
                                                            } else if (b9 != 41) {
                                                                switch (b9) {
                                                                    case 37:
                                                                        h(1);
                                                                        this.f29720r = 2;
                                                                        this.f29716n.f29701h = 2;
                                                                        break;
                                                                    case 38:
                                                                        h(1);
                                                                        this.f29720r = 3;
                                                                        this.f29716n.f29701h = 3;
                                                                        break;
                                                                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                        h(1);
                                                                        this.f29720r = 4;
                                                                        this.f29716n.f29701h = 4;
                                                                        break;
                                                                    default:
                                                                        i11 = this.f29719q;
                                                                        if (i11 != 0) {
                                                                            if (b9 != 33) {
                                                                                switch (b9) {
                                                                                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                        this.f29717o = Collections.emptyList();
                                                                                        i12 = this.f29719q;
                                                                                        if (i12 != 1) {
                                                                                            g();
                                                                                        } else {
                                                                                            g();
                                                                                        }
                                                                                        break;
                                                                                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                        if (i11 == 1) {
                                                                                            b bVar115 = this.f29716n;
                                                                                            arrayList = bVar115.f29695b;
                                                                                            arrayList.add(bVar115.d());
                                                                                            bVar115.f29696c.setLength(0);
                                                                                            bVar115.f29694a.clear();
                                                                                            iMin = Math.min(bVar115.f29701h, bVar115.f29697d);
                                                                                            while (arrayList.size() >= iMin) {
                                                                                                arrayList.remove(0);
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        g();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.f29717o = f();
                                                                                        g();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.f29716n.b();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                h(3);
                                                            }
                                                        }
                                                    } else if (i10 == 20) {
                                                        if (b9 == 32) {
                                                            h(2);
                                                        } else if (b9 != 41) {
                                                            switch (b9) {
                                                                case 37:
                                                                    h(1);
                                                                    this.f29720r = 2;
                                                                    this.f29716n.f29701h = 2;
                                                                    break;
                                                                case 38:
                                                                    h(1);
                                                                    this.f29720r = 3;
                                                                    this.f29716n.f29701h = 3;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                    h(1);
                                                                    this.f29720r = 4;
                                                                    this.f29716n.f29701h = 4;
                                                                    break;
                                                                default:
                                                                    i11 = this.f29719q;
                                                                    if (i11 != 0) {
                                                                        if (b9 != 33) {
                                                                            switch (b9) {
                                                                                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                    this.f29717o = Collections.emptyList();
                                                                                    i12 = this.f29719q;
                                                                                    if (i12 != 1) {
                                                                                        g();
                                                                                    } else {
                                                                                        g();
                                                                                    }
                                                                                    break;
                                                                                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                    if (i11 == 1) {
                                                                                        b bVar116 = this.f29716n;
                                                                                        arrayList = bVar116.f29695b;
                                                                                        arrayList.add(bVar116.d());
                                                                                        bVar116.f29696c.setLength(0);
                                                                                        bVar116.f29694a.clear();
                                                                                        iMin = Math.min(bVar116.f29701h, bVar116.f29697d);
                                                                                        while (arrayList.size() >= iMin) {
                                                                                            arrayList.remove(0);
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    g();
                                                                                    break;
                                                                                case 47:
                                                                                    this.f29717o = f();
                                                                                    g();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.f29716n.b();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            h(3);
                                                        }
                                                    }
                                                } else if ((b8 & 240) != 16) {
                                                    if (i9 != 23) {
                                                        if (i10 == 20) {
                                                            if (b9 == 32) {
                                                                h(2);
                                                            } else if (b9 != 41) {
                                                                switch (b9) {
                                                                    case 37:
                                                                        h(1);
                                                                        this.f29720r = 2;
                                                                        this.f29716n.f29701h = 2;
                                                                        break;
                                                                    case 38:
                                                                        h(1);
                                                                        this.f29720r = 3;
                                                                        this.f29716n.f29701h = 3;
                                                                        break;
                                                                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                        h(1);
                                                                        this.f29720r = 4;
                                                                        this.f29716n.f29701h = 4;
                                                                        break;
                                                                    default:
                                                                        i11 = this.f29719q;
                                                                        if (i11 != 0) {
                                                                            if (b9 != 33) {
                                                                                switch (b9) {
                                                                                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                        this.f29717o = Collections.emptyList();
                                                                                        i12 = this.f29719q;
                                                                                        if (i12 != 1) {
                                                                                            g();
                                                                                        } else {
                                                                                            g();
                                                                                        }
                                                                                        break;
                                                                                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                        if (i11 == 1) {
                                                                                            b bVar117 = this.f29716n;
                                                                                            arrayList = bVar117.f29695b;
                                                                                            arrayList.add(bVar117.d());
                                                                                            bVar117.f29696c.setLength(0);
                                                                                            bVar117.f29694a.clear();
                                                                                            iMin = Math.min(bVar117.f29701h, bVar117.f29697d);
                                                                                            while (arrayList.size() >= iMin) {
                                                                                                arrayList.remove(0);
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        g();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.f29717o = f();
                                                                                        g();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.f29716n.b();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                h(3);
                                                            }
                                                        }
                                                    } else if (i10 == 20) {
                                                        if (b9 == 32) {
                                                            h(2);
                                                        } else if (b9 != 41) {
                                                            switch (b9) {
                                                                case 37:
                                                                    h(1);
                                                                    this.f29720r = 2;
                                                                    this.f29716n.f29701h = 2;
                                                                    break;
                                                                case 38:
                                                                    h(1);
                                                                    this.f29720r = 3;
                                                                    this.f29716n.f29701h = 3;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                    h(1);
                                                                    this.f29720r = 4;
                                                                    this.f29716n.f29701h = 4;
                                                                    break;
                                                                default:
                                                                    i11 = this.f29719q;
                                                                    if (i11 != 0) {
                                                                        if (b9 != 33) {
                                                                            switch (b9) {
                                                                                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                    this.f29717o = Collections.emptyList();
                                                                                    i12 = this.f29719q;
                                                                                    if (i12 != 1) {
                                                                                        g();
                                                                                    } else {
                                                                                        g();
                                                                                    }
                                                                                    break;
                                                                                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                    if (i11 == 1) {
                                                                                        b bVar118 = this.f29716n;
                                                                                        arrayList = bVar118.f29695b;
                                                                                        arrayList.add(bVar118.d());
                                                                                        bVar118.f29696c.setLength(0);
                                                                                        bVar118.f29694a.clear();
                                                                                        iMin = Math.min(bVar118.f29701h, bVar118.f29697d);
                                                                                        while (arrayList.size() >= iMin) {
                                                                                            arrayList.remove(0);
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    g();
                                                                                    break;
                                                                                case 47:
                                                                                    this.f29717o = f();
                                                                                    g();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.f29716n.b();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            h(3);
                                                        }
                                                    }
                                                } else if (i9 != 23) {
                                                    if (i10 == 20) {
                                                        if (b9 == 32) {
                                                            h(2);
                                                        } else if (b9 != 41) {
                                                            switch (b9) {
                                                                case 37:
                                                                    h(1);
                                                                    this.f29720r = 2;
                                                                    this.f29716n.f29701h = 2;
                                                                    break;
                                                                case 38:
                                                                    h(1);
                                                                    this.f29720r = 3;
                                                                    this.f29716n.f29701h = 3;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                    h(1);
                                                                    this.f29720r = 4;
                                                                    this.f29716n.f29701h = 4;
                                                                    break;
                                                                default:
                                                                    i11 = this.f29719q;
                                                                    if (i11 != 0) {
                                                                        if (b9 != 33) {
                                                                            switch (b9) {
                                                                                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                    this.f29717o = Collections.emptyList();
                                                                                    i12 = this.f29719q;
                                                                                    if (i12 != 1) {
                                                                                        g();
                                                                                    } else {
                                                                                        g();
                                                                                    }
                                                                                    break;
                                                                                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                    if (i11 == 1) {
                                                                                        b bVar119 = this.f29716n;
                                                                                        arrayList = bVar119.f29695b;
                                                                                        arrayList.add(bVar119.d());
                                                                                        bVar119.f29696c.setLength(0);
                                                                                        bVar119.f29694a.clear();
                                                                                        iMin = Math.min(bVar119.f29701h, bVar119.f29697d);
                                                                                        while (arrayList.size() >= iMin) {
                                                                                            arrayList.remove(0);
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    g();
                                                                                    break;
                                                                                case 47:
                                                                                    this.f29717o = f();
                                                                                    g();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.f29716n.b();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            h(3);
                                                        }
                                                    }
                                                } else if (i10 == 20) {
                                                    if (b9 == 32) {
                                                        h(2);
                                                    } else if (b9 != 41) {
                                                        switch (b9) {
                                                            case 37:
                                                                h(1);
                                                                this.f29720r = 2;
                                                                this.f29716n.f29701h = 2;
                                                                break;
                                                            case 38:
                                                                h(1);
                                                                this.f29720r = 3;
                                                                this.f29716n.f29701h = 3;
                                                                break;
                                                            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                h(1);
                                                                this.f29720r = 4;
                                                                this.f29716n.f29701h = 4;
                                                                break;
                                                            default:
                                                                i11 = this.f29719q;
                                                                if (i11 != 0) {
                                                                    if (b9 != 33) {
                                                                        switch (b9) {
                                                                            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                this.f29717o = Collections.emptyList();
                                                                                i12 = this.f29719q;
                                                                                if (i12 != 1) {
                                                                                    g();
                                                                                } else {
                                                                                    g();
                                                                                }
                                                                                break;
                                                                            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                if (i11 == 1) {
                                                                                    b bVar1110 = this.f29716n;
                                                                                    arrayList = bVar1110.f29695b;
                                                                                    arrayList.add(bVar1110.d());
                                                                                    bVar1110.f29696c.setLength(0);
                                                                                    bVar1110.f29694a.clear();
                                                                                    iMin = Math.min(bVar1110.f29701h, bVar1110.f29697d);
                                                                                    while (arrayList.size() >= iMin) {
                                                                                        arrayList.remove(0);
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                g();
                                                                                break;
                                                                            case 47:
                                                                                this.f29717o = f();
                                                                                g();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.f29716n.b();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        h(3);
                                                    }
                                                }
                                            } else if (i9 != 17) {
                                                if ((b8 & 240) != 16) {
                                                    if (i9 != 23) {
                                                        if (i10 == 20) {
                                                            if (b9 == 32) {
                                                                h(2);
                                                            } else if (b9 != 41) {
                                                                switch (b9) {
                                                                    case 37:
                                                                        h(1);
                                                                        this.f29720r = 2;
                                                                        this.f29716n.f29701h = 2;
                                                                        break;
                                                                    case 38:
                                                                        h(1);
                                                                        this.f29720r = 3;
                                                                        this.f29716n.f29701h = 3;
                                                                        break;
                                                                    case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                        h(1);
                                                                        this.f29720r = 4;
                                                                        this.f29716n.f29701h = 4;
                                                                        break;
                                                                    default:
                                                                        i11 = this.f29719q;
                                                                        if (i11 != 0) {
                                                                            if (b9 != 33) {
                                                                                switch (b9) {
                                                                                    case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                        this.f29717o = Collections.emptyList();
                                                                                        i12 = this.f29719q;
                                                                                        if (i12 != 1) {
                                                                                            g();
                                                                                        } else {
                                                                                            g();
                                                                                        }
                                                                                        break;
                                                                                    case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                        if (i11 == 1) {
                                                                                            b bVar1111 = this.f29716n;
                                                                                            arrayList = bVar1111.f29695b;
                                                                                            arrayList.add(bVar1111.d());
                                                                                            bVar1111.f29696c.setLength(0);
                                                                                            bVar1111.f29694a.clear();
                                                                                            iMin = Math.min(bVar1111.f29701h, bVar1111.f29697d);
                                                                                            while (arrayList.size() >= iMin) {
                                                                                                arrayList.remove(0);
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    case 46:
                                                                                        g();
                                                                                        break;
                                                                                    case 47:
                                                                                        this.f29717o = f();
                                                                                        g();
                                                                                        break;
                                                                                }
                                                                            } else {
                                                                                this.f29716n.b();
                                                                                break;
                                                                            }
                                                                        }
                                                                        break;
                                                                }
                                                            } else {
                                                                h(3);
                                                            }
                                                        }
                                                    } else if (i10 == 20) {
                                                        if (b9 == 32) {
                                                            h(2);
                                                        } else if (b9 != 41) {
                                                            switch (b9) {
                                                                case 37:
                                                                    h(1);
                                                                    this.f29720r = 2;
                                                                    this.f29716n.f29701h = 2;
                                                                    break;
                                                                case 38:
                                                                    h(1);
                                                                    this.f29720r = 3;
                                                                    this.f29716n.f29701h = 3;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                    h(1);
                                                                    this.f29720r = 4;
                                                                    this.f29716n.f29701h = 4;
                                                                    break;
                                                                default:
                                                                    i11 = this.f29719q;
                                                                    if (i11 != 0) {
                                                                        if (b9 != 33) {
                                                                            switch (b9) {
                                                                                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                    this.f29717o = Collections.emptyList();
                                                                                    i12 = this.f29719q;
                                                                                    if (i12 != 1) {
                                                                                        g();
                                                                                    } else {
                                                                                        g();
                                                                                    }
                                                                                    break;
                                                                                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                    if (i11 == 1) {
                                                                                        b bVar1112 = this.f29716n;
                                                                                        arrayList = bVar1112.f29695b;
                                                                                        arrayList.add(bVar1112.d());
                                                                                        bVar1112.f29696c.setLength(0);
                                                                                        bVar1112.f29694a.clear();
                                                                                        iMin = Math.min(bVar1112.f29701h, bVar1112.f29697d);
                                                                                        while (arrayList.size() >= iMin) {
                                                                                            arrayList.remove(0);
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    g();
                                                                                    break;
                                                                                case 47:
                                                                                    this.f29717o = f();
                                                                                    g();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.f29716n.b();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            h(3);
                                                        }
                                                    }
                                                } else if (i9 != 23) {
                                                    if (i10 == 20) {
                                                        if (b9 == 32) {
                                                            h(2);
                                                        } else if (b9 != 41) {
                                                            switch (b9) {
                                                                case 37:
                                                                    h(1);
                                                                    this.f29720r = 2;
                                                                    this.f29716n.f29701h = 2;
                                                                    break;
                                                                case 38:
                                                                    h(1);
                                                                    this.f29720r = 3;
                                                                    this.f29716n.f29701h = 3;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                    h(1);
                                                                    this.f29720r = 4;
                                                                    this.f29716n.f29701h = 4;
                                                                    break;
                                                                default:
                                                                    i11 = this.f29719q;
                                                                    if (i11 != 0) {
                                                                        if (b9 != 33) {
                                                                            switch (b9) {
                                                                                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                    this.f29717o = Collections.emptyList();
                                                                                    i12 = this.f29719q;
                                                                                    if (i12 != 1) {
                                                                                        g();
                                                                                    } else {
                                                                                        g();
                                                                                    }
                                                                                    break;
                                                                                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                    if (i11 == 1) {
                                                                                        b bVar1113 = this.f29716n;
                                                                                        arrayList = bVar1113.f29695b;
                                                                                        arrayList.add(bVar1113.d());
                                                                                        bVar1113.f29696c.setLength(0);
                                                                                        bVar1113.f29694a.clear();
                                                                                        iMin = Math.min(bVar1113.f29701h, bVar1113.f29697d);
                                                                                        while (arrayList.size() >= iMin) {
                                                                                            arrayList.remove(0);
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    g();
                                                                                    break;
                                                                                case 47:
                                                                                    this.f29717o = f();
                                                                                    g();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.f29716n.b();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            h(3);
                                                        }
                                                    }
                                                } else if (i10 == 20) {
                                                    if (b9 == 32) {
                                                        h(2);
                                                    } else if (b9 != 41) {
                                                        switch (b9) {
                                                            case 37:
                                                                h(1);
                                                                this.f29720r = 2;
                                                                this.f29716n.f29701h = 2;
                                                                break;
                                                            case 38:
                                                                h(1);
                                                                this.f29720r = 3;
                                                                this.f29716n.f29701h = 3;
                                                                break;
                                                            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                h(1);
                                                                this.f29720r = 4;
                                                                this.f29716n.f29701h = 4;
                                                                break;
                                                            default:
                                                                i11 = this.f29719q;
                                                                if (i11 != 0) {
                                                                    if (b9 != 33) {
                                                                        switch (b9) {
                                                                            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                this.f29717o = Collections.emptyList();
                                                                                i12 = this.f29719q;
                                                                                if (i12 != 1) {
                                                                                    g();
                                                                                } else {
                                                                                    g();
                                                                                }
                                                                                break;
                                                                            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                if (i11 == 1) {
                                                                                    b bVar1114 = this.f29716n;
                                                                                    arrayList = bVar1114.f29695b;
                                                                                    arrayList.add(bVar1114.d());
                                                                                    bVar1114.f29696c.setLength(0);
                                                                                    bVar1114.f29694a.clear();
                                                                                    iMin = Math.min(bVar1114.f29701h, bVar1114.f29697d);
                                                                                    while (arrayList.size() >= iMin) {
                                                                                        arrayList.remove(0);
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                g();
                                                                                break;
                                                                            case 47:
                                                                                this.f29717o = f();
                                                                                g();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.f29716n.b();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        h(3);
                                                    }
                                                }
                                            } else if ((b8 & 240) != 16) {
                                                if (i9 != 23) {
                                                    if (i10 == 20) {
                                                        if (b9 == 32) {
                                                            h(2);
                                                        } else if (b9 != 41) {
                                                            switch (b9) {
                                                                case 37:
                                                                    h(1);
                                                                    this.f29720r = 2;
                                                                    this.f29716n.f29701h = 2;
                                                                    break;
                                                                case 38:
                                                                    h(1);
                                                                    this.f29720r = 3;
                                                                    this.f29716n.f29701h = 3;
                                                                    break;
                                                                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                    h(1);
                                                                    this.f29720r = 4;
                                                                    this.f29716n.f29701h = 4;
                                                                    break;
                                                                default:
                                                                    i11 = this.f29719q;
                                                                    if (i11 != 0) {
                                                                        if (b9 != 33) {
                                                                            switch (b9) {
                                                                                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                    this.f29717o = Collections.emptyList();
                                                                                    i12 = this.f29719q;
                                                                                    if (i12 != 1) {
                                                                                        g();
                                                                                    } else {
                                                                                        g();
                                                                                    }
                                                                                    break;
                                                                                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                    if (i11 == 1) {
                                                                                        b bVar1115 = this.f29716n;
                                                                                        arrayList = bVar1115.f29695b;
                                                                                        arrayList.add(bVar1115.d());
                                                                                        bVar1115.f29696c.setLength(0);
                                                                                        bVar1115.f29694a.clear();
                                                                                        iMin = Math.min(bVar1115.f29701h, bVar1115.f29697d);
                                                                                        while (arrayList.size() >= iMin) {
                                                                                            arrayList.remove(0);
                                                                                        }
                                                                                    }
                                                                                    break;
                                                                                case 46:
                                                                                    g();
                                                                                    break;
                                                                                case 47:
                                                                                    this.f29717o = f();
                                                                                    g();
                                                                                    break;
                                                                            }
                                                                        } else {
                                                                            this.f29716n.b();
                                                                            break;
                                                                        }
                                                                    }
                                                                    break;
                                                            }
                                                        } else {
                                                            h(3);
                                                        }
                                                    }
                                                } else if (i10 == 20) {
                                                    if (b9 == 32) {
                                                        h(2);
                                                    } else if (b9 != 41) {
                                                        switch (b9) {
                                                            case 37:
                                                                h(1);
                                                                this.f29720r = 2;
                                                                this.f29716n.f29701h = 2;
                                                                break;
                                                            case 38:
                                                                h(1);
                                                                this.f29720r = 3;
                                                                this.f29716n.f29701h = 3;
                                                                break;
                                                            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                h(1);
                                                                this.f29720r = 4;
                                                                this.f29716n.f29701h = 4;
                                                                break;
                                                            default:
                                                                i11 = this.f29719q;
                                                                if (i11 != 0) {
                                                                    if (b9 != 33) {
                                                                        switch (b9) {
                                                                            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                this.f29717o = Collections.emptyList();
                                                                                i12 = this.f29719q;
                                                                                if (i12 != 1) {
                                                                                    g();
                                                                                } else {
                                                                                    g();
                                                                                }
                                                                                break;
                                                                            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                if (i11 == 1) {
                                                                                    b bVar1116 = this.f29716n;
                                                                                    arrayList = bVar1116.f29695b;
                                                                                    arrayList.add(bVar1116.d());
                                                                                    bVar1116.f29696c.setLength(0);
                                                                                    bVar1116.f29694a.clear();
                                                                                    iMin = Math.min(bVar1116.f29701h, bVar1116.f29697d);
                                                                                    while (arrayList.size() >= iMin) {
                                                                                        arrayList.remove(0);
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                g();
                                                                                break;
                                                                            case 47:
                                                                                this.f29717o = f();
                                                                                g();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.f29716n.b();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        h(3);
                                                    }
                                                }
                                            } else if (i9 != 23) {
                                                if (i10 == 20) {
                                                    if (b9 == 32) {
                                                        h(2);
                                                    } else if (b9 != 41) {
                                                        switch (b9) {
                                                            case 37:
                                                                h(1);
                                                                this.f29720r = 2;
                                                                this.f29716n.f29701h = 2;
                                                                break;
                                                            case 38:
                                                                h(1);
                                                                this.f29720r = 3;
                                                                this.f29716n.f29701h = 3;
                                                                break;
                                                            case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                                h(1);
                                                                this.f29720r = 4;
                                                                this.f29716n.f29701h = 4;
                                                                break;
                                                            default:
                                                                i11 = this.f29719q;
                                                                if (i11 != 0) {
                                                                    if (b9 != 33) {
                                                                        switch (b9) {
                                                                            case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                                this.f29717o = Collections.emptyList();
                                                                                i12 = this.f29719q;
                                                                                if (i12 != 1) {
                                                                                    g();
                                                                                } else {
                                                                                    g();
                                                                                }
                                                                                break;
                                                                            case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                                if (i11 == 1) {
                                                                                    b bVar1117 = this.f29716n;
                                                                                    arrayList = bVar1117.f29695b;
                                                                                    arrayList.add(bVar1117.d());
                                                                                    bVar1117.f29696c.setLength(0);
                                                                                    bVar1117.f29694a.clear();
                                                                                    iMin = Math.min(bVar1117.f29701h, bVar1117.f29697d);
                                                                                    while (arrayList.size() >= iMin) {
                                                                                        arrayList.remove(0);
                                                                                    }
                                                                                }
                                                                                break;
                                                                            case 46:
                                                                                g();
                                                                                break;
                                                                            case 47:
                                                                                this.f29717o = f();
                                                                                g();
                                                                                break;
                                                                        }
                                                                    } else {
                                                                        this.f29716n.b();
                                                                        break;
                                                                    }
                                                                }
                                                                break;
                                                        }
                                                    } else {
                                                        h(3);
                                                    }
                                                }
                                            } else if (i10 == 20) {
                                                if (b9 == 32) {
                                                    h(2);
                                                } else if (b9 != 41) {
                                                    switch (b9) {
                                                        case 37:
                                                            h(1);
                                                            this.f29720r = 2;
                                                            this.f29716n.f29701h = 2;
                                                            break;
                                                        case 38:
                                                            h(1);
                                                            this.f29720r = 3;
                                                            this.f29716n.f29701h = 3;
                                                            break;
                                                        case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                                                            h(1);
                                                            this.f29720r = 4;
                                                            this.f29716n.f29701h = 4;
                                                            break;
                                                        default:
                                                            i11 = this.f29719q;
                                                            if (i11 != 0) {
                                                                if (b9 != 33) {
                                                                    switch (b9) {
                                                                        case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                                                                            this.f29717o = Collections.emptyList();
                                                                            i12 = this.f29719q;
                                                                            if (i12 != 1) {
                                                                                g();
                                                                            } else {
                                                                                g();
                                                                            }
                                                                            break;
                                                                        case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                                                                            if (i11 == 1) {
                                                                                b bVar1118 = this.f29716n;
                                                                                arrayList = bVar1118.f29695b;
                                                                                arrayList.add(bVar1118.d());
                                                                                bVar1118.f29696c.setLength(0);
                                                                                bVar1118.f29694a.clear();
                                                                                iMin = Math.min(bVar1118.f29701h, bVar1118.f29697d);
                                                                                while (arrayList.size() >= iMin) {
                                                                                    arrayList.remove(0);
                                                                                }
                                                                            }
                                                                            break;
                                                                        case 46:
                                                                            g();
                                                                            break;
                                                                        case 47:
                                                                            this.f29717o = f();
                                                                            g();
                                                                            break;
                                                                    }
                                                                } else {
                                                                    this.f29716n.b();
                                                                    break;
                                                                }
                                                            }
                                                            break;
                                                    }
                                                } else {
                                                    h(3);
                                                }
                                            }
                                        }
                                    } else {
                                        b bVar20 = this.f29716n;
                                        iArr = f29704C;
                                        bVar20.a((char) iArr[(b8 & 127) - 32]);
                                        if ((b9 & 224) != 0) {
                                            this.f29716n.a((char) iArr[(b9 & 127) - 32]);
                                        }
                                    }
                                    z8 = true;
                                }
                            }
                        } else if (z9) {
                            g();
                            z8 = true;
                        }
                    }
                }
            }
        }
    }

    @Override // p134r1.i, p171w0.d
    /* JADX INFO: renamed from: d */
    public final j dequeueOutputBuffer() {
        j jVar;
        j jVarDequeueOutputBuffer = super.dequeueOutputBuffer();
        if (jVarDequeueOutputBuffer != null) {
            return jVarDequeueOutputBuffer;
        }
        long j8 = this.f29714l;
        if (j8 == -9223372036854775807L) {
            return null;
        }
        long j9 = this.f29727y;
        if (j9 == -9223372036854775807L || this.f29778e - j9 < j8 || (jVar = (j) this.f29775b.pollFirst()) == null) {
            return null;
        }
        this.f29717o = Collections.emptyList();
        this.f29727y = -9223372036854775807L;
        I2.c cVarB = b();
        long j10 = this.f29778e;
        jVar.timeUs = j10;
        jVar.f29553G = cVarB;
        jVar.f29554H = j10;
        return jVar;
    }

    @Override // p134r1.i
    public final boolean e() {
        return this.f29717o != this.f29718p;
    }

    public final ArrayList f() {
        ArrayList arrayList = this.f29715m;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        int iMin = 2;
        for (int i8 = 0; i8 < size; i8++) {
            b bVarC = ((b) arrayList.get(i8)).c(Integer.MIN_VALUE);
            arrayList2.add(bVarC);
            if (bVarC != null) {
                iMin = Math.min(iMin, bVarC.f27643i);
            }
        }
        ArrayList arrayList3 = new ArrayList(size);
        for (int i9 = 0; i9 < size; i9++) {
            b bVarC2 = (b) arrayList2.get(i9);
            if (bVarC2 != null) {
                if (bVarC2.f27643i != iMin) {
                    bVarC2 = ((b) arrayList.get(i9)).c(iMin);
                    bVarC2.getClass();
                }
                arrayList3.add(bVarC2);
            }
        }
        return arrayList3;
    }

    @Override // p134r1.i, p171w0.d
    public final void flush() {
        super.flush();
        this.f29717o = null;
        this.f29718p = null;
        h(0);
        this.f29720r = 4;
        this.f29716n.f29701h = 4;
        g();
        this.f29721s = false;
        this.f29722t = false;
        this.f29723u = (byte) 0;
        this.f29724v = (byte) 0;
        this.f29725w = 0;
        this.f29726x = true;
        this.f29727y = -9223372036854775807L;
    }

    public final void g() {
        b bVar = this.f29716n;
        bVar.f29700g = this.f29719q;
        bVar.f29694a.clear();
        bVar.f29695b.clear();
        bVar.f29696c.setLength(0);
        bVar.f29697d = 15;
        bVar.f29698e = 0;
        bVar.f29699f = 0;
        ArrayList arrayList = this.f29715m;
        arrayList.clear();
        arrayList.add(this.f29716n);
    }

    @Override // p171w0.d
    public final String getName() {
        return "Cea608Decoder";
    }

    public final void h(int i8) {
        int i9 = this.f29719q;
        if (i9 == i8) {
            return;
        }
        this.f29719q = i8;
        if (i8 != 3) {
            g();
            if (i9 == 3 || i8 == 1 || i8 == 0) {
                this.f29717o = Collections.emptyList();
                return;
            }
            return;
        }
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f29715m;
            if (i10 >= arrayList.size()) {
                return;
            }
            ((b) arrayList.get(i10)).f29700g = i8;
            i10++;
        }
    }

    @Override // p134r1.i, p171w0.d
    public final void release() {
    }
}
