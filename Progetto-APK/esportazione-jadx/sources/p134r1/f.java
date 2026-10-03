package p134r1;

import I2.c;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.ws.WebSocketProtocol;
import p117p0.AbstractC3169g;
import p117p0.D;
import p117p0.E;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public final class f extends i {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final E f29762h = new E();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final D f29763i = new D();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f29764j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f29765k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final e[] f29766l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public e f29767m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public List f29768n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public List f29769o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public D f29770p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f29771q;

    public f(int i8, List list) {
        this.f29765k = i8 == -1 ? 1 : i8;
        if (list != null) {
            byte[] bArr = AbstractC3169g.f28081a;
            if (list.size() == 1 && ((byte[]) list.get(0)).length == 1) {
                byte b8 = ((byte[]) list.get(0))[0];
            }
        }
        this.f29766l = new e[8];
        for (int i9 = 0; i9 < 8; i9++) {
            this.f29766l[i9] = new e();
        }
        this.f29767m = this.f29766l[0];
    }

    @Override // p134r1.i
    public final c b() {
        List list = this.f29768n;
        this.f29769o = list;
        list.getClass();
        return new c(list);
    }

    @Override // p134r1.i
    public final void c(g gVar) {
        ByteBuffer byteBuffer = gVar.f30904I;
        byteBuffer.getClass();
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        E e8 = this.f29762h;
        e8.J(iLimit, bArrArray);
        while (e8.a() >= 3) {
            int iZ = e8.z();
            int i8 = iZ & 3;
            boolean z7 = (iZ & 4) == 4;
            byte bZ = (byte) e8.z();
            byte bZ2 = (byte) e8.z();
            if (i8 == 2 || i8 == 3) {
                if (z7) {
                    if (i8 == 3) {
                        f();
                        int i9 = (bZ & 192) >> 6;
                        int i10 = this.f29764j;
                        if (i10 != -1 && i9 != (i10 + 1) % 4) {
                            h();
                            x.f("Cea708Decoder", "Sequence number discontinuity. previous=" + this.f29764j + " current=" + i9);
                        }
                        this.f29764j = i9;
                        int i11 = bZ & 63;
                        if (i11 == 0) {
                            i11 = 64;
                        }
                        D d6 = new D(i9, i11);
                        this.f29770p = d6;
                        byte[] bArr = d6.f28028b;
                        int i12 = d6.f28031e;
                        d6.f28031e = i12 + 1;
                        bArr[i12] = bZ2;
                    } else {
                        H1.d(i8 == 2);
                        D d8 = this.f29770p;
                        if (d8 == null) {
                            x.c("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = d8.f28028b;
                            int i13 = d8.f28031e;
                            bArr2[i13] = bZ;
                            d8.f28031e = i13 + 2;
                            bArr2[i13 + 1] = bZ2;
                        }
                    }
                    D d9 = this.f29770p;
                    if (d9.f28031e == (d9.f28030d * 2) - 1) {
                        f();
                    }
                }
            }
        }
    }

    @Override // p134r1.i
    public final boolean e() {
        return this.f29768n != this.f29769o;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:229:0x0564  */
    public final void f() {
        D d6 = this.f29770p;
        if (d6 == null) {
            return;
        }
        int i8 = 2;
        if (d6.f28031e != (d6.f28030d * 2) - 1) {
            x.b("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.f29770p.f28030d * 2) - 1) + ", but current index is " + this.f29770p.f28031e + " (sequence number " + this.f29770p.f28029c + ");");
        }
        D d8 = this.f29770p;
        byte[] bArr = d8.f28028b;
        int i9 = d8.f28031e;
        D d9 = this.f29763i;
        d9.p(i9, bArr);
        boolean z7 = false;
        while (d9.b() > 0) {
            int i10 = 3;
            int i11 = d9.i(3);
            int i12 = d9.i(5);
            if (i11 == 7) {
                d9.u(i8);
                i11 = d9.i(6);
                if (i11 < 7) {
                    U2.v("Invalid extended service number: ", i11, "Cea708Decoder");
                }
            }
            if (i12 == 0) {
                if (i11 != 0) {
                    x.f("Cea708Decoder", "serviceNumber is non-zero (" + i11 + ") when blockSize is 0");
                }
                if (z7) {
                    this.f29768n = g();
                }
                this.f29770p = null;
            }
            if (i11 != this.f29765k) {
                d9.v(i12);
            } else {
                int iG = (i12 * 8) + d9.g();
                while (d9.g() < iG) {
                    int i13 = d9.i(8);
                    if (i13 == 16) {
                        iG = iG;
                        int i14 = d9.i(8);
                        if (i14 <= 31) {
                            if (i14 > 7) {
                                if (i14 <= 15) {
                                    d9.u(8);
                                } else if (i14 <= 23) {
                                    d9.u(16);
                                } else if (i14 <= 31) {
                                    d9.u(24);
                                }
                            }
                        } else if (i14 <= 127) {
                            if (i14 == 32) {
                                this.f29767m.a(' ');
                            } else if (i14 == 33) {
                                this.f29767m.a((char) 160);
                            } else if (i14 == 37) {
                                this.f29767m.a((char) 8230);
                            } else if (i14 == 42) {
                                this.f29767m.a((char) 352);
                            } else if (i14 == 44) {
                                this.f29767m.a((char) 338);
                            } else if (i14 == 63) {
                                this.f29767m.a((char) 376);
                            } else if (i14 == 57) {
                                this.f29767m.a((char) 8482);
                            } else if (i14 == 58) {
                                this.f29767m.a((char) 353);
                            } else if (i14 == 60) {
                                this.f29767m.a((char) 339);
                            } else if (i14 != 61) {
                                switch (i14) {
                                    case 48:
                                        this.f29767m.a((char) 9608);
                                        break;
                                    case 49:
                                        this.f29767m.a((char) 8216);
                                        break;
                                    case 50:
                                        this.f29767m.a((char) 8217);
                                        break;
                                    case 51:
                                        this.f29767m.a((char) 8220);
                                        break;
                                    case 52:
                                        this.f29767m.a((char) 8221);
                                        break;
                                    case 53:
                                        this.f29767m.a((char) 8226);
                                        break;
                                    default:
                                        switch (i14) {
                                            case 118:
                                                this.f29767m.a((char) 8539);
                                                break;
                                            case 119:
                                                this.f29767m.a((char) 8540);
                                                break;
                                            case 120:
                                                this.f29767m.a((char) 8541);
                                                break;
                                            case 121:
                                                this.f29767m.a((char) 8542);
                                                break;
                                            case 122:
                                                this.f29767m.a((char) 9474);
                                                break;
                                            case 123:
                                                this.f29767m.a((char) 9488);
                                                break;
                                            case 124:
                                                this.f29767m.a((char) 9492);
                                                break;
                                            case 125:
                                                this.f29767m.a((char) 9472);
                                                break;
                                            case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                                                this.f29767m.a((char) 9496);
                                                break;
                                            case 127:
                                                this.f29767m.a((char) 9484);
                                                break;
                                            default:
                                                U2.v("Invalid G2 character: ", i14, "Cea708Decoder");
                                                break;
                                        }
                                        break;
                                }
                            } else {
                                this.f29767m.a((char) 8480);
                            }
                            z7 = true;
                        } else if (i14 <= 159) {
                            if (i14 <= 135) {
                                d9.u(32);
                            } else if (i14 <= 143) {
                                d9.u(40);
                            } else if (i14 <= 159) {
                                d9.u(2);
                                d9.u(d9.i(6) * 8);
                            }
                        } else if (i14 <= 255) {
                            if (i14 == 160) {
                                this.f29767m.a((char) 13252);
                            } else {
                                U2.v("Invalid G3 character: ", i14, "Cea708Decoder");
                                this.f29767m.a('_');
                            }
                            z7 = true;
                        } else {
                            U2.v("Invalid extended command: ", i14, "Cea708Decoder");
                        }
                    } else if (i13 <= 31) {
                        if (i13 != 0) {
                            if (i13 == i10) {
                                this.f29768n = g();
                            } else if (i13 != 8) {
                                switch (i13) {
                                    case 12:
                                        h();
                                        break;
                                    case 13:
                                        this.f29767m.a('\n');
                                        break;
                                    case 14:
                                        break;
                                    default:
                                        if (i13 >= 17 && i13 <= 23) {
                                            x.f("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i13);
                                            d9.u(8);
                                        } else if (i13 < 24 || i13 > 31) {
                                            U2.v("Invalid C0 command: ", i13, "Cea708Decoder");
                                        } else {
                                            x.f("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i13);
                                            d9.u(16);
                                        }
                                        break;
                                }
                            } else {
                                SpannableStringBuilder spannableStringBuilder = this.f29767m.f29742b;
                                int length = spannableStringBuilder.length();
                                if (length > 0) {
                                    spannableStringBuilder.delete(length - 1, length);
                                }
                            }
                        }
                    } else if (i13 <= 127) {
                        if (i13 == 127) {
                            this.f29767m.a((char) 9835);
                        } else {
                            this.f29767m.a((char) (i13 & 255));
                        }
                        z7 = true;
                    } else {
                        if (i13 <= 159) {
                            e[] eVarArr = this.f29766l;
                            switch (i13) {
                                case 128:
                                case 129:
                                case 130:
                                case 131:
                                case 132:
                                case 133:
                                case 134:
                                case 135:
                                    iG = iG;
                                    int i15 = i13 - 128;
                                    if (this.f29771q != i15) {
                                        this.f29771q = i15;
                                        this.f29767m = eVarArr[i15];
                                    }
                                    break;
                                case 136:
                                    iG = iG;
                                    for (int i16 = 1; i16 <= 8; i16++) {
                                        if (d9.h()) {
                                            e eVar = eVarArr[8 - i16];
                                            eVar.f29741a.clear();
                                            eVar.f29742b.clear();
                                            eVar.f29755o = -1;
                                            eVar.f29756p = -1;
                                            eVar.f29757q = -1;
                                            eVar.f29759s = -1;
                                            eVar.f29761u = 0;
                                        }
                                    }
                                    break;
                                case 137:
                                    iG = iG;
                                    for (int i17 = 1; i17 <= 8; i17++) {
                                        if (d9.h()) {
                                            eVarArr[8 - i17].f29744d = true;
                                        }
                                    }
                                    break;
                                case 138:
                                    iG = iG;
                                    for (int i18 = 1; i18 <= 8; i18++) {
                                        if (d9.h()) {
                                            eVarArr[8 - i18].f29744d = false;
                                        }
                                    }
                                    break;
                                case 139:
                                    iG = iG;
                                    for (int i19 = 1; i19 <= 8; i19++) {
                                        if (d9.h()) {
                                            e eVar2 = eVarArr[8 - i19];
                                            eVar2.f29744d = !eVar2.f29744d;
                                        }
                                    }
                                    break;
                                case 140:
                                    iG = iG;
                                    for (int i20 = 1; i20 <= 8; i20++) {
                                        if (d9.h()) {
                                            eVarArr[8 - i20].d();
                                        }
                                    }
                                    break;
                                case ModuleDescriptor.MODULE_VERSION /* 141 */:
                                    iG = iG;
                                    d9.u(8);
                                    break;
                                case 142:
                                    iG = iG;
                                    break;
                                case 143:
                                    iG = iG;
                                    h();
                                    break;
                                case 144:
                                    iG = iG;
                                    if (this.f29767m.f29743c) {
                                        d9.i(4);
                                        d9.i(2);
                                        d9.i(2);
                                        boolean zH = d9.h();
                                        boolean zH2 = d9.h();
                                        d9.i(3);
                                        d9.i(3);
                                        this.f29767m.e(zH, zH2);
                                    } else {
                                        d9.u(16);
                                    }
                                    break;
                                case 145:
                                    iG = iG;
                                    if (this.f29767m.f29743c) {
                                        int iC = e.c(d9.i(2), d9.i(2), d9.i(2), d9.i(2));
                                        int iC2 = e.c(d9.i(2), d9.i(2), d9.i(2), d9.i(2));
                                        d9.u(2);
                                        e.c(d9.i(2), d9.i(2), d9.i(2), 0);
                                        this.f29767m.f(iC, iC2);
                                    } else {
                                        d9.u(24);
                                    }
                                    break;
                                case 146:
                                    iG = iG;
                                    if (this.f29767m.f29743c) {
                                        d9.u(4);
                                        int i21 = d9.i(4);
                                        d9.u(2);
                                        d9.i(6);
                                        e eVar3 = this.f29767m;
                                        if (eVar3.f29761u != i21) {
                                            eVar3.a('\n');
                                        }
                                        eVar3.f29761u = i21;
                                    } else {
                                        d9.u(16);
                                    }
                                    break;
                                case 147:
                                case 148:
                                case 149:
                                case 150:
                                default:
                                    U2.v("Invalid C1 command: ", i13, "Cea708Decoder");
                                    iG = iG;
                                    break;
                                case 151:
                                    iG = iG;
                                    if (this.f29767m.f29743c) {
                                        int iC3 = e.c(d9.i(2), d9.i(2), d9.i(2), d9.i(2));
                                        d9.i(2);
                                        e.c(d9.i(2), d9.i(2), d9.i(2), 0);
                                        d9.h();
                                        d9.h();
                                        d9.i(2);
                                        d9.i(2);
                                        int i22 = d9.i(2);
                                        d9.u(8);
                                        e eVar4 = this.f29767m;
                                        eVar4.f29754n = iC3;
                                        eVar4.f29751k = i22;
                                    } else {
                                        d9.u(32);
                                    }
                                    break;
                                case 152:
                                case 153:
                                case 154:
                                case 155:
                                case 156:
                                case 157:
                                case 158:
                                case 159:
                                    int i23 = i13 - 152;
                                    e eVar5 = eVarArr[i23];
                                    d9.u(i8);
                                    boolean zH3 = d9.h();
                                    d9.u(i8);
                                    int i24 = d9.i(i10);
                                    boolean zH4 = d9.h();
                                    int i25 = d9.i(7);
                                    int i26 = d9.i(8);
                                    int i27 = d9.i(4);
                                    int i28 = d9.i(4);
                                    d9.u(i8);
                                    d9.u(6);
                                    d9.u(i8);
                                    int i29 = d9.i(3);
                                    iG = iG;
                                    int i30 = d9.i(3);
                                    eVar5.f29743c = true;
                                    eVar5.f29744d = zH3;
                                    eVar5.f29745e = i24;
                                    eVar5.f29746f = zH4;
                                    eVar5.f29747g = i25;
                                    eVar5.f29748h = i26;
                                    eVar5.f29749i = i27;
                                    int i31 = i28 + 1;
                                    if (eVar5.f29750j != i31) {
                                        eVar5.f29750j = i31;
                                        while (true) {
                                            ArrayList arrayList = eVar5.f29741a;
                                            if (arrayList.size() >= eVar5.f29750j || arrayList.size() >= 15) {
                                                arrayList.remove(0);
                                            }
                                        }
                                    }
                                    if (i29 != 0 && eVar5.f29752l != i29) {
                                        eVar5.f29752l = i29;
                                        int i32 = i29 - 1;
                                        int i33 = e.f29732B[i32];
                                        boolean z8 = e.f29731A[i32];
                                        int i34 = e.f29739y[i32];
                                        int i35 = e.f29740z[i32];
                                        int i36 = e.f29738x[i32];
                                        eVar5.f29754n = i33;
                                        eVar5.f29751k = i36;
                                    }
                                    if (i30 != 0 && eVar5.f29753m != i30) {
                                        eVar5.f29753m = i30;
                                        int i37 = i30 - 1;
                                        int i38 = e.f29734D[i37];
                                        int i39 = e.f29733C[i37];
                                        eVar5.e(false, false);
                                        eVar5.f(e.f29736v, e.f29735E[i37]);
                                    }
                                    if (this.f29771q != i23) {
                                        this.f29771q = i23;
                                        this.f29767m = eVarArr[i23];
                                    }
                                    break;
                            }
                        } else {
                            iG = iG;
                            if (i13 <= 255) {
                                this.f29767m.a((char) (i13 & 255));
                            } else {
                                U2.v("Invalid base command: ", i13, "Cea708Decoder");
                            }
                        }
                        z7 = true;
                    }
                    iG = iG;
                    i8 = 2;
                    i10 = 3;
                }
            }
        }
        if (z7) {
            this.f29768n = g();
        }
        this.f29770p = null;
    }

    @Override // p134r1.i, p171w0.d
    public final void flush() {
        super.flush();
        this.f29768n = null;
        this.f29769o = null;
        this.f29771q = 0;
        this.f29767m = this.f29766l[0];
        h();
        this.f29770p = null;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00ec  */
    public final List g() {
        d dVar;
        Layout.Alignment alignment;
        float f8;
        float f9;
        ArrayList arrayList = new ArrayList();
        for (int i8 = 0; i8 < 8; i8++) {
            e[] eVarArr = this.f29766l;
            e eVar = eVarArr[i8];
            if (eVar.f29743c && (!eVar.f29741a.isEmpty() || eVar.f29742b.length() != 0)) {
                e eVar2 = eVarArr[i8];
                if (eVar2.f29744d) {
                    if (eVar2.f29743c) {
                        ArrayList arrayList2 = eVar2.f29741a;
                        if (arrayList2.isEmpty() && eVar2.f29742b.length() == 0) {
                            dVar = null;
                        } else {
                            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                            for (int i9 = 0; i9 < arrayList2.size(); i9++) {
                                spannableStringBuilder.append((CharSequence) arrayList2.get(i9));
                                spannableStringBuilder.append('\n');
                            }
                            spannableStringBuilder.append((CharSequence) eVar2.b());
                            int i10 = eVar2.f29751k;
                            if (i10 == 0) {
                                alignment = Layout.Alignment.ALIGN_NORMAL;
                            } else if (i10 == 1) {
                                alignment = Layout.Alignment.ALIGN_OPPOSITE;
                            } else if (i10 != 2) {
                                if (i10 != 3) {
                                    throw new IllegalArgumentException("Unexpected justification value: " + eVar2.f29751k);
                                }
                                alignment = Layout.Alignment.ALIGN_NORMAL;
                            } else {
                                alignment = Layout.Alignment.ALIGN_CENTER;
                            }
                            Layout.Alignment alignment2 = alignment;
                            if (eVar2.f29746f) {
                                f8 = eVar2.f29748h / 99.0f;
                                f9 = eVar2.f29747g / 99.0f;
                            } else {
                                f8 = eVar2.f29748h / 209.0f;
                                f9 = eVar2.f29747g / 74.0f;
                            }
                            float f10 = (f8 * 0.9f) + 0.05f;
                            float f11 = (f9 * 0.9f) + 0.05f;
                            int i11 = eVar2.f29749i;
                            int i12 = i11 / 3;
                            int i13 = i12 == 0 ? 0 : i12 == 1 ? 1 : 2;
                            int i14 = i11 % 3;
                            int i15 = i14 == 0 ? 0 : i14 == 1 ? 1 : 2;
                            int i16 = eVar2.f29754n;
                            dVar = new d(spannableStringBuilder, alignment2, f11, i13, f10, i15, i16 != e.f29737w, i16, eVar2.f29745e);
                        }
                    } else {
                        dVar = null;
                    }
                    if (dVar != null) {
                        arrayList.add(dVar);
                    }
                } else {
                    continue;
                }
            }
        }
        Collections.sort(arrayList, d.f29728c);
        ArrayList arrayList3 = new ArrayList(arrayList.size());
        for (int i17 = 0; i17 < arrayList.size(); i17++) {
            arrayList3.add(((d) arrayList.get(i17)).f29729a);
        }
        return Collections.unmodifiableList(arrayList3);
    }

    @Override // p171w0.d
    public final String getName() {
        return "Cea708Decoder";
    }

    public final void h() {
        for (int i8 = 0; i8 < 8; i8++) {
            this.f29766l[i8].d();
        }
    }
}
