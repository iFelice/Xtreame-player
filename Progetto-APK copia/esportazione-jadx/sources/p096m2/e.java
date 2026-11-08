package p096m2;

import A0.O;
import F2.w;
import F2.z;
import I2.c;
import N.InterfaceC0269s;
import N.N;
import N.i0;
import P1.x;
import S0.o;
import Y.AbstractComponentCallbacksC0406s;
import Y.K;
import Z3.C;
import android.content.Context;
import android.database.Cursor;
import android.graphics.ImageDecoder;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import androidx.work.impl.WorkDatabase;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.bumptech.glide.load.data.n;
import com.google.android.gms.internal.measurement.H1;
import com.google.android.gms.internal.measurement.InterfaceC2603n;
import com.google.android.gms.internal.measurement.InterfaceC2643v;
import com.google.protobuf.U2;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import p021c4.C0595k1;
import p027d2.v;
import p079k.AbstractC3012d;
import p094m0.P;
import p117p0.AbstractC3170h;
import p117p0.E;
import p117p0.InterfaceC3172j;
import p117p0.M;
import p126q1.d;
import p126q1.m;
import p130q5.p;
import p141s0.C3186k;
import p173w2.f;
import p173w2.l;
import p176w5.b;
import p190y4.k;
import p195z1.a;
import p195z1.i;
import p195z1.j;
import p196z2.h;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class e implements o, m, InterfaceC0269s, InterfaceC2643v {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f27214G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f27215H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f27216I;

    public e(int i8, Object obj) {
        this.f27214G = i8;
        if (i8 == 9) {
            this.f27215H = new HashMap();
            this.f27216I = new HashMap();
            return;
        }
        if (i8 == 24) {
            this.f27215H = new ArrayList();
            this.f27216I = new ArrayList();
        } else {
            if (i8 == 27) {
                this.f27216I = new c(5);
                return;
            }
            if (i8 != 12) {
                if (i8 == 13) {
                    this.f27216I = new HashMap();
                } else {
                    this.f27215H = new E();
                    this.f27216I = new a();
                }
            }
        }
    }

    public static z i(ImageDecoder.Source source, int i8, int i9, l lVar) throws IOException {
        Drawable drawableDecodeDrawable = ImageDecoder.decodeDrawable(source, new E2.c(i8, i9, lVar));
        if (E2.a.x(drawableDecodeDrawable)) {
            return new z(E2.a.i(drawableDecodeDrawable), 2);
        }
        throw new IOException("Received unexpected drawable type for animated image, failing: " + drawableDecodeDrawable);
    }

    public final ImageHeaderParser$ImageType A(f fVar) throws Throwable {
        w wVar = null;
        try {
            w wVar2 = new w(new FileInputStream(((n) this.f27215H).b().getFileDescriptor()), (h) this.f27216I);
            try {
                ImageHeaderParser$ImageType imageHeaderParser$ImageTypeC = fVar.c(wVar2);
                wVar2.E();
                ((n) this.f27215H).b();
                return imageHeaderParser$ImageTypeC;
            } catch (Throwable th) {
                th = th;
                wVar = wVar2;
                if (wVar != null) {
                    wVar.E();
                }
                ((n) this.f27215H).b();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // S0.o
    public final Object B(Uri uri, C3186k c3186k) {
        M0.a aVar = (M0.a) ((o) this.f27215H).B(uri, c3186k);
        List list = (List) this.f27216I;
        return (list == null || list.isEmpty()) ? aVar : (M0.a) aVar.a((List) this.f27216I);
    }

    public final void C(d dVar) {
        ((x) this.f27215H).b();
        ((x) this.f27215H).c();
        try {
            ((P1.e) this.f27216I).u(dVar);
            ((x) this.f27215H).n();
        } finally {
            ((x) this.f27215H).j();
        }
    }

    public final float D(int i8, int i9, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16 = 1;
        boolean z7 = Math.abs(i11 - i9) > Math.abs(i10 - i8);
        if (z7) {
            i13 = i8;
            i12 = i9;
            i15 = i10;
            i14 = i11;
        } else {
            i12 = i8;
            i13 = i9;
            i14 = i10;
            i15 = i11;
        }
        int iAbs = Math.abs(i14 - i12);
        int iAbs2 = Math.abs(i15 - i13);
        int i17 = (-iAbs) / 2;
        int i18 = i12 < i14 ? 1 : -1;
        int i19 = i13 < i15 ? 1 : -1;
        int i20 = i14 + i18;
        int i21 = i12;
        int i22 = i13;
        int i23 = 0;
        while (true) {
            if (i21 == i20) {
                i20 = i20;
                break;
            }
            if ((i23 == i16) == ((b) this.f27215H).b(z7 ? i22 : i21, z7 ? i21 : i22)) {
                if (i23 == 2) {
                    return v.i(i21, i22, i12, i13);
                }
                i23++;
            }
            i17 += iAbs2;
            if (i17 > 0) {
                if (i22 == i15) {
                    break;
                }
                i22 += i19;
                i17 -= iAbs;
            }
            i21 += i18;
            i20 = i20;
            z7 = z7;
            i16 = 1;
        }
        if (i23 == 2) {
            return v.i(i20, i15, i12, i13);
        }
        return Float.NaN;
    }

    public final float E(int i8, int i9, int i10, int i11) {
        float f8;
        float f9;
        float fD = D(i8, i9, i10, i11);
        int i12 = i8 - (i10 - i8);
        int i13 = 0;
        if (i12 < 0) {
            f8 = i8 / (i8 - i12);
            i12 = 0;
        } else {
            Object obj = this.f27215H;
            if (i12 >= ((b) obj).f31091G) {
                float f10 = ((((b) obj).f31091G - 1) - i8) / (i12 - i8);
                int i14 = ((b) obj).f31091G - 1;
                f8 = f10;
                i12 = i14;
            } else {
                f8 = 1.0f;
            }
        }
        float f11 = i9;
        int i15 = (int) (f11 - ((i11 - i9) * f8));
        if (i15 < 0) {
            f9 = f11 / (i9 - i15);
        } else {
            Object obj2 = this.f27215H;
            if (i15 >= ((b) obj2).f31092H) {
                f9 = ((((b) obj2).f31092H - 1) - i9) / (i15 - i9);
                i13 = ((b) obj2).f31092H - 1;
            } else {
                i13 = i15;
                f9 = 1.0f;
            }
        }
        return (D(i8, i9, (int) (((i12 - i8) * f9) + i8), i13) + fD) - 1.0f;
    }

    public final void F(boolean z7, boolean z8) {
        if (z7 && ((WifiManager.WifiLock) this.f27216I) == null) {
            WifiManager wifiManager = (WifiManager) ((Context) this.f27215H).getApplicationContext().getSystemService("wifi");
            if (wifiManager == null) {
                p117p0.x.f("WifiLockManager", "WifiManager is null, therefore not creating the WifiLock.");
                return;
            } else {
                WifiManager.WifiLock wifiLockCreateWifiLock = wifiManager.createWifiLock(3, "ExoPlayer:WifiLockManager");
                this.f27216I = wifiLockCreateWifiLock;
                wifiLockCreateWifiLock.setReferenceCounted(false);
            }
        }
        Object obj = this.f27216I;
        if (((WifiManager.WifiLock) obj) == null) {
            return;
        }
        if (z7 && z8) {
            ((WifiManager.WifiLock) obj).acquire();
        } else {
            ((WifiManager.WifiLock) obj).release();
        }
    }

    /* JADX WARN: Code duplicated, block: B:131:0x0271  */
    /* JADX WARN: Code duplicated, block: B:132:0x027c  */
    /* JADX WARN: Code duplicated, block: B:134:0x0285  */
    /* JADX WARN: Code duplicated, block: B:135:0x028f  */
    /* JADX WARN: Code duplicated, block: B:137:0x0297  */
    /* JADX WARN: Code duplicated, block: B:139:0x029f  */
    /* JADX WARN: Code duplicated, block: B:140:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:142:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:143:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:145:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:151:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:153:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:155:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:157:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:158:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:160:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:161:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:163:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:165:0x0305  */
    /* JADX WARN: Code duplicated, block: B:166:0x030a  */
    /* JADX WARN: Code duplicated, block: B:168:0x0313  */
    /* JADX WARN: Code duplicated, block: B:170:0x031b  */
    /* JADX WARN: Code duplicated, block: B:171:0x031f  */
    /* JADX WARN: Code duplicated, block: B:173:0x0327  */
    /* JADX WARN: Code duplicated, block: B:175:0x0337  */
    /* JADX WARN: Code duplicated, block: B:176:0x0350  */
    /* JADX WARN: Code duplicated, block: B:179:0x0361  */
    /* JADX WARN: Code duplicated, block: B:182:0x036a  */
    /* JADX WARN: Code duplicated, block: B:183:0x036c  */
    /* JADX WARN: Code duplicated, block: B:186:0x0375  */
    /* JADX WARN: Code duplicated, block: B:187:0x0377  */
    /* JADX WARN: Code duplicated, block: B:190:0x0380  */
    /* JADX WARN: Code duplicated, block: B:194:0x038a  */
    /* JADX WARN: Code duplicated, block: B:195:0x038f  */
    /* JADX WARN: Code duplicated, block: B:196:0x0394  */
    /* JADX WARN: Code duplicated, block: B:198:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:217:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:237:0x0384 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x00d3  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Instruction removed from duplicated block: B:175:0x0337, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v7 */
    @Override // p126q1.m
    public final void b(byte[] bArr, int i8, int i9, p126q1.l lVar, InterfaceC3172j interfaceC3172j) {
        E e8;
        String strTrim;
        String str;
        String string;
        Matcher matcher;
        String strGroup;
        byte b8;
        int i10;
        boolean z7;
        String strSubstring;
        p195z1.c cVarD;
        ((E) this.f27215H).J(i8 + i9, bArr);
        ((E) this.f27215H).L(i8);
        ArrayList arrayList = new ArrayList();
        try {
            i.d((E) this.f27215H);
            do {
                e8 = (E) this.f27215H;
                e8.getClass();
            } while (!TextUtils.isEmpty(e8.m(StandardCharsets.UTF_8)));
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                E e9 = (E) this.f27215H;
                ?? r7 = 0;
                int i11 = -1;
                byte b9 = -1;
                int i12 = 0;
                while (true) {
                    int i13 = 1;
                    if (b9 == -1) {
                        i12 = e9.f28036b;
                        String strM = e9.m(StandardCharsets.UTF_8);
                        if (strM == null) {
                            b9 = 0;
                        } else if ("STYLE".equals(strM)) {
                            b9 = 2;
                        } else {
                            b9 = strM.startsWith("NOTE") ? (byte) 1 : (byte) 3;
                        }
                    } else {
                        e9.L(i12);
                        if (b9 == 0) {
                            com.bumptech.glide.c.v(new j(arrayList2), lVar, interfaceC3172j);
                            return;
                        }
                        if (b9 == 1) {
                            E e10 = (E) this.f27215H;
                            do {
                                e10.getClass();
                            } while (!TextUtils.isEmpty(e10.m(StandardCharsets.UTF_8)));
                        } else {
                            String str2 = null;
                            if (b9 == 2) {
                                if (!arrayList2.isEmpty()) {
                                    throw new IllegalArgumentException("A style block was found after the first cue.");
                                }
                                E e11 = (E) this.f27215H;
                                e11.getClass();
                                e11.m(StandardCharsets.UTF_8);
                                a aVar = (a) this.f27216I;
                                E e12 = (E) this.f27215H;
                                StringBuilder sb = aVar.f31704b;
                                sb.setLength(0);
                                int i14 = e12.f28036b;
                                while (!TextUtils.isEmpty(e12.m(StandardCharsets.UTF_8))) {
                                }
                                byte[] bArr2 = e12.f28035a;
                                int i15 = e12.f28036b;
                                E e13 = aVar.f31703a;
                                e13.J(i15, bArr2);
                                e13.L(i14);
                                ArrayList arrayList3 = new ArrayList();
                                while (true) {
                                    a.c(e13);
                                    if (e13.a() >= 5 && "::cue".equals(e13.x(5, StandardCharsets.UTF_8))) {
                                        int i16 = e13.f28036b;
                                        String strB = a.b(e13, sb);
                                        if (strB == null) {
                                            str = str2;
                                        } else if ("{".equals(strB)) {
                                            e13.L(i16);
                                            str = HttpUrl.FRAGMENT_ENCODE_SET;
                                        } else {
                                            if ("(".equals(strB)) {
                                                int i17 = e13.f28036b;
                                                int i18 = e13.f28037c;
                                                boolean z8 = false;
                                                while (i17 < i18 && !z8) {
                                                    int i19 = i17 + 1;
                                                    boolean z9 = ((char) e13.f28035a[i17]) == ')';
                                                    i17 = i19;
                                                    z8 = z9;
                                                }
                                                strTrim = e13.x((i17 - 1) - e13.f28036b, StandardCharsets.UTF_8).trim();
                                            } else {
                                                strTrim = str2;
                                            }
                                            str = strTrim;
                                            if (!")".equals(a.b(e13, sb))) {
                                                str = str2;
                                            }
                                        }
                                    } else {
                                        str = str2;
                                    }
                                    if (str != 0 && "{".equals(a.b(e13, sb))) {
                                        p195z1.b bVar = new p195z1.b();
                                        bVar.f31705a = HttpUrl.FRAGMENT_ENCODE_SET;
                                        bVar.f31706b = HttpUrl.FRAGMENT_ENCODE_SET;
                                        bVar.f31707c = Collections.emptySet();
                                        bVar.f31708d = HttpUrl.FRAGMENT_ENCODE_SET;
                                        bVar.f31709e = str2;
                                        bVar.f31711g = r7;
                                        bVar.f31713i = r7;
                                        bVar.f31714j = i11;
                                        bVar.f31715k = i11;
                                        bVar.f31716l = i11;
                                        bVar.f31717m = i11;
                                        bVar.f31718n = i11;
                                        bVar.f31720p = i11;
                                        bVar.f31721q = r7;
                                        if (!str.isEmpty()) {
                                            int iIndexOf = str.indexOf(91);
                                            if (iIndexOf != i11) {
                                                Matcher matcher2 = a.f31701c.matcher(str.substring(iIndexOf));
                                                if (matcher2.matches()) {
                                                    strSubstring = str;
                                                    String strGroup2 = matcher2.group(i13);
                                                    strGroup2.getClass();
                                                    bVar.f31708d = strGroup2;
                                                }
                                                strSubstring = str;
                                                strSubstring = str.substring(r7, iIndexOf);
                                            }
                                            strSubstring = str;
                                            String str3 = M.f28050a;
                                            String[] strArrSplit = strSubstring.split("\\.", i11);
                                            String str4 = strArrSplit[r7];
                                            int iIndexOf2 = str4.indexOf(35);
                                            if (iIndexOf2 != i11) {
                                                bVar.f31706b = str4.substring(r7, iIndexOf2);
                                                bVar.f31705a = str4.substring(iIndexOf2 + 1);
                                            } else {
                                                bVar.f31706b = str4;
                                            }
                                            if (strArrSplit.length > i13) {
                                                int length = strArrSplit.length;
                                                H1.d(length <= strArrSplit.length);
                                                bVar.f31707c = new HashSet(Arrays.asList((String[]) Arrays.copyOfRange(strArrSplit, i13, length)));
                                            }
                                        }
                                        String strB2 = str2;
                                        boolean z10 = false;
                                        while (!z10) {
                                            int i20 = e13.f28036b;
                                            strB2 = a.b(e13, sb);
                                            boolean z11 = strB2 == null || "}".equals(strB2);
                                            if (!z11) {
                                                e13.L(i20);
                                                a.c(e13);
                                                String strA = a.a(e13, sb);
                                                if (!strA.isEmpty() && ":".equals(a.b(e13, sb))) {
                                                    a.c(e13);
                                                    StringBuilder sb2 = new StringBuilder();
                                                    boolean z12 = false;
                                                    while (true) {
                                                        if (z12) {
                                                            string = sb2.toString();
                                                        } else {
                                                            int i21 = e13.f28036b;
                                                            String strB3 = a.b(e13, sb);
                                                            if (strB3 == null) {
                                                                string = null;
                                                            } else if ("}".equals(strB3) || ";".equals(strB3)) {
                                                                e13.L(i21);
                                                                z12 = true;
                                                            } else {
                                                                sb2.append(strB3);
                                                            }
                                                        }
                                                    }
                                                    if (string != null && !string.isEmpty()) {
                                                        int i22 = e13.f28036b;
                                                        String strB4 = a.b(e13, sb);
                                                        if (";".equals(strB4)) {
                                                            if ("color".equals(strA)) {
                                                                bVar.f31710f = AbstractC3170h.a(string, true);
                                                                bVar.f31711g = true;
                                                            } else if ("background-color".equals(strA)) {
                                                                bVar.f31712h = AbstractC3170h.a(string, true);
                                                                bVar.f31713i = true;
                                                            } else if ("ruby-position".equals(strA)) {
                                                                if ("over".equals(string)) {
                                                                    bVar.f31720p = 1;
                                                                } else if ("under".equals(string)) {
                                                                    bVar.f31720p = 2;
                                                                }
                                                            } else if ("text-combine-upright".equals(strA)) {
                                                                if ("all".equals(string)) {
                                                                    z7 = true;
                                                                } else {
                                                                    z7 = true;
                                                                }
                                                                bVar.f31721q = z7;
                                                            } else if ("text-decoration".equals(strA)) {
                                                                if ("underline".equals(string)) {
                                                                    bVar.f31715k = 1;
                                                                }
                                                            } else if ("font-family".equals(strA)) {
                                                                bVar.f31709e = k.h0(string);
                                                            } else if ("font-weight".equals(strA)) {
                                                                if ("bold".equals(string)) {
                                                                    bVar.f31716l = 1;
                                                                }
                                                            } else if ("font-style".equals(strA)) {
                                                                if ("italic".equals(string)) {
                                                                    bVar.f31717m = 1;
                                                                }
                                                            } else if ("font-size".equals(strA)) {
                                                                matcher = a.f31702d.matcher(k.h0(string));
                                                                if (matcher.matches()) {
                                                                    strGroup = matcher.group(2);
                                                                    strGroup.getClass();
                                                                    switch (strGroup.hashCode()) {
                                                                        case 37:
                                                                            if (!strGroup.equals("%")) {
                                                                                b8 = 0;
                                                                            }
                                                                            switch (b8) {
                                                                                case 0:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 3;
                                                                                    break;
                                                                                case 1:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 2;
                                                                                    break;
                                                                                case 2:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 1;
                                                                                    break;
                                                                                default:
                                                                                    throw new IllegalStateException();
                                                                            }
                                                                            String strGroup3 = matcher.group(i10);
                                                                            strGroup3.getClass();
                                                                            bVar.f31719o = Float.parseFloat(strGroup3);
                                                                            break;
                                                                        case 3240:
                                                                            if (!strGroup.equals("em")) {
                                                                                b8 = 1;
                                                                            }
                                                                            switch (b8) {
                                                                                case 0:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 3;
                                                                                    break;
                                                                                case 1:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 2;
                                                                                    break;
                                                                                case 2:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 1;
                                                                                    break;
                                                                                default:
                                                                                    throw new IllegalStateException();
                                                                            }
                                                                            String strGroup4 = matcher.group(i10);
                                                                            strGroup4.getClass();
                                                                            bVar.f31719o = Float.parseFloat(strGroup4);
                                                                            break;
                                                                        case 3592:
                                                                            if (!strGroup.equals("px")) {
                                                                                b8 = 2;
                                                                            }
                                                                            switch (b8) {
                                                                                case 0:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 3;
                                                                                    break;
                                                                                case 1:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 2;
                                                                                    break;
                                                                                case 2:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 1;
                                                                                    break;
                                                                                default:
                                                                                    throw new IllegalStateException();
                                                                            }
                                                                            String strGroup5 = matcher.group(i10);
                                                                            strGroup5.getClass();
                                                                            bVar.f31719o = Float.parseFloat(strGroup5);
                                                                            break;
                                                                    }
                                                                    b8 = -1;
                                                                    switch (b8) {
                                                                        case 0:
                                                                            i10 = 1;
                                                                            bVar.f31718n = 3;
                                                                            break;
                                                                        case 1:
                                                                            i10 = 1;
                                                                            bVar.f31718n = 2;
                                                                            break;
                                                                        case 2:
                                                                            i10 = 1;
                                                                            bVar.f31718n = 1;
                                                                            break;
                                                                        default:
                                                                            throw new IllegalStateException();
                                                                    }
                                                                    String strGroup6 = matcher.group(i10);
                                                                    strGroup6.getClass();
                                                                    bVar.f31719o = Float.parseFloat(strGroup6);
                                                                } else {
                                                                    p117p0.x.f("WebvttCssParser", "Invalid font-size: '" + string + "'.");
                                                                }
                                                            }
                                                        } else if ("}".equals(strB4)) {
                                                            e13.L(i22);
                                                            if ("color".equals(strA)) {
                                                                bVar.f31710f = AbstractC3170h.a(string, true);
                                                                bVar.f31711g = true;
                                                            } else if ("background-color".equals(strA)) {
                                                                bVar.f31712h = AbstractC3170h.a(string, true);
                                                                bVar.f31713i = true;
                                                            } else if ("ruby-position".equals(strA)) {
                                                                if ("over".equals(string)) {
                                                                    bVar.f31720p = 1;
                                                                } else if ("under".equals(string)) {
                                                                    bVar.f31720p = 2;
                                                                }
                                                            } else if ("text-combine-upright".equals(strA)) {
                                                                if ("all".equals(string) || string.startsWith("digits")) {
                                                                    z7 = true;
                                                                } else {
                                                                    z7 = false;
                                                                }
                                                                bVar.f31721q = z7;
                                                            } else if ("text-decoration".equals(strA)) {
                                                                if ("underline".equals(string)) {
                                                                    bVar.f31715k = 1;
                                                                }
                                                            } else if ("font-family".equals(strA)) {
                                                                bVar.f31709e = k.h0(string);
                                                            } else if ("font-weight".equals(strA)) {
                                                                if ("bold".equals(string)) {
                                                                    bVar.f31716l = 1;
                                                                }
                                                            } else if ("font-style".equals(strA)) {
                                                                if ("italic".equals(string)) {
                                                                    bVar.f31717m = 1;
                                                                }
                                                            } else if ("font-size".equals(strA)) {
                                                                matcher = a.f31702d.matcher(k.h0(string));
                                                                if (matcher.matches()) {
                                                                    p117p0.x.f("WebvttCssParser", "Invalid font-size: '" + string + "'.");
                                                                } else {
                                                                    strGroup = matcher.group(2);
                                                                    strGroup.getClass();
                                                                    switch (strGroup.hashCode()) {
                                                                        case 37:
                                                                            if (!strGroup.equals("%")) {
                                                                                b8 = 0;
                                                                            }
                                                                            switch (b8) {
                                                                                case 0:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 3;
                                                                                    break;
                                                                                case 1:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 2;
                                                                                    break;
                                                                                case 2:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 1;
                                                                                    break;
                                                                                default:
                                                                                    throw new IllegalStateException();
                                                                            }
                                                                            String strGroup7 = matcher.group(i10);
                                                                            strGroup7.getClass();
                                                                            bVar.f31719o = Float.parseFloat(strGroup7);
                                                                            break;
                                                                        case 3240:
                                                                            if (!strGroup.equals("em")) {
                                                                                b8 = 1;
                                                                            }
                                                                            switch (b8) {
                                                                                case 0:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 3;
                                                                                    break;
                                                                                case 1:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 2;
                                                                                    break;
                                                                                case 2:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 1;
                                                                                    break;
                                                                                default:
                                                                                    throw new IllegalStateException();
                                                                            }
                                                                            String strGroup8 = matcher.group(i10);
                                                                            strGroup8.getClass();
                                                                            bVar.f31719o = Float.parseFloat(strGroup8);
                                                                            break;
                                                                        case 3592:
                                                                            if (!strGroup.equals("px")) {
                                                                                b8 = 2;
                                                                            }
                                                                            switch (b8) {
                                                                                case 0:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 3;
                                                                                    break;
                                                                                case 1:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 2;
                                                                                    break;
                                                                                case 2:
                                                                                    i10 = 1;
                                                                                    bVar.f31718n = 1;
                                                                                    break;
                                                                                default:
                                                                                    throw new IllegalStateException();
                                                                            }
                                                                            String strGroup9 = matcher.group(i10);
                                                                            strGroup9.getClass();
                                                                            bVar.f31719o = Float.parseFloat(strGroup9);
                                                                            break;
                                                                    }
                                                                    b8 = -1;
                                                                    switch (b8) {
                                                                        case 0:
                                                                            i10 = 1;
                                                                            bVar.f31718n = 3;
                                                                            break;
                                                                        case 1:
                                                                            i10 = 1;
                                                                            bVar.f31718n = 2;
                                                                            break;
                                                                        case 2:
                                                                            i10 = 1;
                                                                            bVar.f31718n = 1;
                                                                            break;
                                                                        default:
                                                                            throw new IllegalStateException();
                                                                    }
                                                                    String strGroup10 = matcher.group(i10);
                                                                    strGroup10.getClass();
                                                                    bVar.f31719o = Float.parseFloat(strGroup10);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            z10 = z11;
                                        }
                                        if ("}".equals(strB2)) {
                                            arrayList3.add(bVar);
                                        }
                                        str2 = null;
                                        r7 = 0;
                                        i11 = -1;
                                        i13 = 1;
                                    }
                                }
                                arrayList.addAll(arrayList3);
                            } else if (b9 == 3) {
                                E e14 = (E) this.f27215H;
                                Pattern pattern = p195z1.h.f31745a;
                                e14.getClass();
                                Charset charset = StandardCharsets.UTF_8;
                                String strM2 = e14.m(charset);
                                if (strM2 == null) {
                                    cVarD = null;
                                } else {
                                    Pattern pattern2 = p195z1.h.f31745a;
                                    Matcher matcher3 = pattern2.matcher(strM2);
                                    if (matcher3.matches()) {
                                        cVarD = p195z1.h.d(null, matcher3, e14, arrayList);
                                    } else {
                                        String strM3 = e14.m(charset);
                                        if (strM3 == null) {
                                            cVarD = null;
                                        } else {
                                            Matcher matcher4 = pattern2.matcher(strM3);
                                            if (matcher4.matches()) {
                                                cVarD = p195z1.h.d(strM2.trim(), matcher4, e14, arrayList);
                                            } else {
                                                cVarD = null;
                                            }
                                        }
                                    }
                                }
                                if (cVarD != null) {
                                    arrayList2.add(cVarD);
                                }
                            }
                        }
                    }
                }
            }
        } catch (P e15) {
            throw new IllegalArgumentException(e15);
        }
    }

    @Override // p126q1.m
    public final /* synthetic */ d c(int i8, byte[] bArr, int i9) {
        return U2.b(this, bArr, i8, i9);
    }

    public final void d(Object obj, String str) {
        ((List) this.f27215H).add(U2.l(str, "=", String.valueOf(obj)));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2643v
    public final i e(InterfaceC2603n interfaceC2603n) {
        i iVar = (i) this.f27215H;
        iVar.z((String) this.f27216I, interfaceC2603n);
        return iVar;
    }

    public final void f(String str, int[] iArr) {
        ((List) this.f27215H).add(iArr);
        ((List) this.f27216I).add(str);
    }

    @Override // p126q1.m
    public final int g() {
        return 1;
    }

    public final float h(M5.c cVar, M5.c cVar2) {
        int i8 = (int) cVar.f29645a;
        int i9 = (int) cVar.f29646b;
        int i10 = (int) cVar2.f29645a;
        int i11 = (int) cVar2.f29646b;
        float fE = E(i8, i9, i10, i11);
        float fE2 = E((int) cVar2.f29645a, i11, (int) cVar.f29645a, i9);
        if (Float.isNaN(fE)) {
            return fE2 / 7.0f;
        }
        return Float.isNaN(fE2) ? fE / 7.0f : (fE + fE2) / 14.0f;
    }

    public final void j(boolean z7) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = ((K) this.f27216I).f7744w;
        if (abstractComponentCallbacksC0406s != null) {
            abstractComponentCallbacksC0406s.n().f7734m.j(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f27215H).iterator();
        if (it.hasNext()) {
            O.I(it.next());
            if (!z7) {
                throw null;
            }
            throw null;
        }
    }

    @Override // N.InterfaceC0269s
    public final i0 k(View view, i0 i0Var) {
        i0 i0VarJ = N.j(view, i0Var);
        if (i0VarJ.f4901a.i()) {
            return i0VarJ;
        }
        Rect rect = (Rect) this.f27215H;
        rect.left = i0VarJ.b();
        rect.top = i0VarJ.d();
        rect.right = i0VarJ.c();
        rect.bottom = i0VarJ.a();
        int childCount = ((ViewPager) this.f27216I).getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            i0 i0VarB = N.b(((ViewPager) this.f27216I).getChildAt(i8), i0VarJ);
            rect.left = Math.min(i0VarB.b(), rect.left);
            rect.top = Math.min(i0VarB.d(), rect.top);
            rect.right = Math.min(i0VarB.c(), rect.right);
            rect.bottom = Math.min(i0VarB.a(), rect.bottom);
        }
        return i0VarJ.f(rect.left, rect.top, rect.right, rect.bottom);
    }

    public final void l(boolean z7) {
        K k8 = (K) this.f27216I;
        Context context = k8.f7742u.f7980N;
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = k8.f7744w;
        if (abstractComponentCallbacksC0406s != null) {
            abstractComponentCallbacksC0406s.n().f7734m.l(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f27215H).iterator();
        if (it.hasNext()) {
            O.I(it.next());
            if (!z7) {
                throw null;
            }
            throw null;
        }
    }

    public final void m(boolean z7) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = ((K) this.f27216I).f7744w;
        if (abstractComponentCallbacksC0406s != null) {
            abstractComponentCallbacksC0406s.n().f7734m.m(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f27215H).iterator();
        if (it.hasNext()) {
            O.I(it.next());
            if (!z7) {
                throw null;
            }
            throw null;
        }
    }

    public final void n(boolean z7) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = ((K) this.f27216I).f7744w;
        if (abstractComponentCallbacksC0406s != null) {
            abstractComponentCallbacksC0406s.n().f7734m.n(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f27215H).iterator();
        if (it.hasNext()) {
            O.I(it.next());
            if (!z7) {
                throw null;
            }
            throw null;
        }
    }

    public final void o(boolean z7) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = ((K) this.f27216I).f7744w;
        if (abstractComponentCallbacksC0406s != null) {
            abstractComponentCallbacksC0406s.n().f7734m.o(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f27215H).iterator();
        if (it.hasNext()) {
            O.I(it.next());
            if (!z7) {
                throw null;
            }
            throw null;
        }
    }

    public final void p(boolean z7) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = ((K) this.f27216I).f7744w;
        if (abstractComponentCallbacksC0406s != null) {
            abstractComponentCallbacksC0406s.n().f7734m.p(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f27215H).iterator();
        if (it.hasNext()) {
            O.I(it.next());
            if (!z7) {
                throw null;
            }
            throw null;
        }
    }

    public final void q(boolean z7) {
        K k8 = (K) this.f27216I;
        Context context = k8.f7742u.f7980N;
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = k8.f7744w;
        if (abstractComponentCallbacksC0406s != null) {
            abstractComponentCallbacksC0406s.n().f7734m.q(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f27215H).iterator();
        if (it.hasNext()) {
            O.I(it.next());
            if (!z7) {
                throw null;
            }
            throw null;
        }
    }

    public final void r(boolean z7) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = ((K) this.f27216I).f7744w;
        if (abstractComponentCallbacksC0406s != null) {
            abstractComponentCallbacksC0406s.n().f7734m.r(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f27215H).iterator();
        if (it.hasNext()) {
            O.I(it.next());
            if (!z7) {
                throw null;
            }
            throw null;
        }
    }

    public final void s(boolean z7) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = ((K) this.f27216I).f7744w;
        if (abstractComponentCallbacksC0406s != null) {
            abstractComponentCallbacksC0406s.n().f7734m.s(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f27215H).iterator();
        if (it.hasNext()) {
            O.I(it.next());
            if (!z7) {
                throw null;
            }
            throw null;
        }
    }

    public final void t(boolean z7) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = ((K) this.f27216I).f7744w;
        if (abstractComponentCallbacksC0406s != null) {
            abstractComponentCallbacksC0406s.n().f7734m.t(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f27215H).iterator();
        if (it.hasNext()) {
            O.I(it.next());
            if (!z7) {
                throw null;
            }
            throw null;
        }
    }

    public final String toString() {
        switch (this.f27214G) {
            case 17:
                StringBuilder sb = new StringBuilder(100);
                sb.append(this.f27216I.getClass().getSimpleName());
                sb.append('{');
                int size = ((List) this.f27215H).size();
                for (int i8 = 0; i8 < size; i8++) {
                    sb.append((String) ((List) this.f27215H).get(i8));
                    if (i8 < size - 1) {
                        sb.append(", ");
                    }
                }
                sb.append('}');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public final void u(boolean z7) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = ((K) this.f27216I).f7744w;
        if (abstractComponentCallbacksC0406s != null) {
            abstractComponentCallbacksC0406s.n().f7734m.u(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f27215H).iterator();
        if (it.hasNext()) {
            O.I(it.next());
            if (!z7) {
                throw null;
            }
            throw null;
        }
    }

    public final void v(boolean z7) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = ((K) this.f27216I).f7744w;
        if (abstractComponentCallbacksC0406s != null) {
            abstractComponentCallbacksC0406s.n().f7734m.v(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f27215H).iterator();
        if (it.hasNext()) {
            O.I(it.next());
            if (!z7) {
                throw null;
            }
            throw null;
        }
    }

    public final void w(boolean z7) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = ((K) this.f27216I).f7744w;
        if (abstractComponentCallbacksC0406s != null) {
            abstractComponentCallbacksC0406s.n().f7734m.w(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f27215H).iterator();
        if (it.hasNext()) {
            O.I(it.next());
            if (!z7) {
                throw null;
            }
            throw null;
        }
    }

    public final void x(boolean z7) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = ((K) this.f27216I).f7744w;
        if (abstractComponentCallbacksC0406s != null) {
            abstractComponentCallbacksC0406s.n().f7734m.x(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f27215H).iterator();
        if (it.hasNext()) {
            O.I(it.next());
            if (!z7) {
                throw null;
            }
            throw null;
        }
    }

    public final M5.a y(float f8, float f9, int i8, int i9) throws p130q5.i {
        b bVar;
        M5.a aVarB;
        M5.a aVarB2;
        int i10 = (int) (f9 * f8);
        int iMax = Math.max(0, i8 - i10);
        int iMin = Math.min(((b) this.f27215H).f31091G - 1, i8 + i10) - iMax;
        float f10 = 3.0f * f8;
        if (iMin < f10) {
            throw p130q5.i.f29623I;
        }
        int iMax2 = Math.max(0, i9 - i10);
        int iMin2 = Math.min(((b) this.f27215H).f31092H - 1, i9 + i10) - iMax2;
        if (iMin2 < f10) {
            throw p130q5.i.f29623I;
        }
        M5.b bVar2 = new M5.b((b) this.f27215H, iMax, iMax2, iMin, iMin2, f8, (p) this.f27216I);
        int i11 = bVar2.f4817e;
        int i12 = bVar2.f4815c;
        int i13 = i11 + i12;
        int i14 = bVar2.f4818f;
        int i15 = (i14 / 2) + bVar2.f4816d;
        int[] iArr = new int[3];
        for (int i16 = 0; i16 < i14; i16++) {
            int i17 = ((i16 & 1) == 0 ? (i16 + 1) / 2 : -((i16 + 1) / 2)) + i15;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i18 = i12;
            while (true) {
                bVar = bVar2.f4813a;
                if (i18 >= i13 || bVar.b(i18, i17)) {
                    break;
                }
                i18++;
            }
            int i19 = 0;
            while (i18 < i13) {
                if (!bVar.b(i18, i17)) {
                    if (i19 == 1) {
                        i19++;
                    }
                    iArr[i19] = iArr[i19] + 1;
                } else if (i19 == 1) {
                    iArr[1] = iArr[1] + 1;
                } else if (i19 != 2) {
                    i19++;
                    iArr[i19] = iArr[i19] + 1;
                } else {
                    if (bVar2.a(iArr) && (aVarB2 = bVar2.b(i17, i18, iArr)) != null) {
                        return aVarB2;
                    }
                    iArr[0] = iArr[2];
                    iArr[1] = 1;
                    iArr[2] = 0;
                    i19 = 1;
                }
                i18++;
            }
            if (bVar2.a(iArr) && (aVarB = bVar2.b(i17, i13, iArr)) != null) {
                return aVarB;
            }
        }
        ArrayList arrayList = bVar2.f4814b;
        if (arrayList.isEmpty()) {
            throw p130q5.i.f29623I;
        }
        return (M5.a) arrayList.get(0);
    }

    public final Long z(String str) {
        P1.z zVarN = P1.z.N(1, "SELECT long_value FROM Preference where `key`=?");
        zVarN.g(1, str);
        ((x) this.f27215H).b();
        Cursor cursorH = C.h((x) this.f27215H, zVarN);
        try {
            Long lValueOf = null;
            if (cursorH.moveToFirst() && !cursorH.isNull(0)) {
                lValueOf = Long.valueOf(cursorH.getLong(0));
            }
            return lValueOf;
        } finally {
            cursorH.close();
            zVarN.O();
        }
    }

    public /* synthetic */ e(int i8, Object obj, Object obj2) {
        this.f27214G = i8;
        this.f27215H = obj;
        this.f27216I = obj2;
    }

    public e(C0595k1 c0595k1) {
        this.f27214G = 20;
        this.f27216I = c0595k1;
    }

    public /* synthetic */ e(Object obj, int i8) {
        this.f27214G = i8;
        this.f27215H = obj;
    }

    public e(L3.a aVar) {
        this.f27214G = 15;
        this.f27215H = aVar == null ? null : aVar.f4700H;
    }

    public /* synthetic */ e(Object obj) {
        this.f27214G = 17;
        com.bumptech.glide.c.h(obj);
        this.f27216I = obj;
        this.f27215H = new ArrayList();
    }

    @Override // p126q1.m
    public final /* synthetic */ void a() {
    }

    public e(WorkDatabase workDatabase) {
        this.f27214G = 0;
        this.f27215H = workDatabase;
        this.f27216I = new b(this, workDatabase, 1);
    }

    public e(TextView textView) {
        this.f27214G = 1;
        textView.getClass();
        this.f27215H = textView;
    }

    public e(K k8) {
        this.f27214G = 2;
        this.f27215H = new CopyOnWriteArrayList();
        this.f27216I = k8;
    }

    public e(X4.b bVar, AbstractC3012d abstractC3012d) {
        this.f27214G = 21;
        this.f27216I = bVar;
        this.f27215H = abstractC3012d;
    }

    public e(d0 d0Var, int[] iArr) {
        this.f27214G = 3;
        this.f27215H = H.s(d0Var);
        this.f27216I = iArr;
    }

    public e(ViewPager viewPager) {
        this.f27214G = 7;
        this.f27216I = viewPager;
        this.f27215H = new Rect();
    }
}
