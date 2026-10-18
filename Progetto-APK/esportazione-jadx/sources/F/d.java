package F;

import D0.U;
import N.C0260i;
import O0.Q;
import W0.C0376i;
import W0.InterfaceC0377j;
import W0.t;
import W0.w;
import Z3.C0435q;
import Z3.H;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.Xml;
import androidx.media3.extractor.FlacStreamMetadata;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.atv_ads_framework.C2404p;
import com.google.android.gms.internal.atv_ads_framework.C2420y;
import com.google.android.gms.internal.measurement.H1;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import okhttp3.HttpUrl;
import org.xmlpull.v1.XmlPullParserException;
import p000a.r;
import p096m2.u;
import p117p0.E;
import p117p0.InterfaceC3172j;

/* JADX INFO: loaded from: classes.dex */
public final class d implements InterfaceC0377j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f2960G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f2961H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f2962I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f2963J;

    public d(int i8) {
        this.f2960G = i8;
        if (i8 == 8) {
            this.f2962I = new Object[8];
            this.f2961H = 0;
        } else if (i8 == 12) {
            this.f2961H = 1;
        } else if (i8 == 14) {
            this.f2961H = -1;
        } else {
            this.f2962I = Collections.synchronizedMap(new p132r.f(0));
            this.f2961H = 0;
        }
    }

    public static d c(int i8, Resources.Theme theme, Resources resources) {
        int next;
        float f8;
        float f9;
        float f10;
        Object radialGradient;
        Shader.TileMode tileMode;
        Shader.TileMode tileMode2;
        XmlResourceParser xml = resources.getXml(i8);
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xml.getName();
        name.getClass();
        Object obj = null;
        int i9 = 0;
        if (!name.equals("gradient")) {
            if (name.equals("selector")) {
                ColorStateList colorStateListB = c.b(resources, xml, attributeSetAsAttributeSet, theme);
                return new d(obj, colorStateListB, colorStateListB.getDefaultColor(), i9);
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
        String name2 = xml.getName();
        if (!name2.equals("gradient")) {
            throw new XmlPullParserException(xml.getPositionDescription() + ": invalid gradient color tag " + name2);
        }
        TypedArray typedArrayN = H.n(resources, theme, attributeSetAsAttributeSet, C.a.f1224d);
        float f11 = !H.j(xml, "startX") ? 0.0f : typedArrayN.getFloat(8, 0.0f);
        float f12 = !H.j(xml, "startY") ? 0.0f : typedArrayN.getFloat(9, 0.0f);
        float f13 = !H.j(xml, "endX") ? 0.0f : typedArrayN.getFloat(10, 0.0f);
        float f14 = !H.j(xml, "endY") ? 0.0f : typedArrayN.getFloat(11, 0.0f);
        float f15 = !H.j(xml, "centerX") ? 0.0f : typedArrayN.getFloat(3, 0.0f);
        float f16 = !H.j(xml, "centerY") ? 0.0f : typedArrayN.getFloat(4, 0.0f);
        int i10 = !H.j(xml, "type") ? 0 : typedArrayN.getInt(2, 0);
        int color = !H.j(xml, "startColor") ? 0 : typedArrayN.getColor(0, 0);
        boolean zJ = H.j(xml, "centerColor");
        int color2 = !H.j(xml, "centerColor") ? 0 : typedArrayN.getColor(7, 0);
        int color3 = !H.j(xml, "endColor") ? 0 : typedArrayN.getColor(1, 0);
        int i11 = !H.j(xml, "tileMode") ? 0 : typedArrayN.getInt(6, 0);
        float f17 = !H.j(xml, "gradientRadius") ? 0.0f : typedArrayN.getFloat(5, 0.0f);
        typedArrayN.recycle();
        int depth = xml.getDepth() + 1;
        float f18 = f17;
        ArrayList arrayList = new ArrayList(20);
        float f19 = f14;
        ArrayList arrayList2 = new ArrayList(20);
        while (true) {
            int next2 = xml.next();
            f8 = f13;
            if (next2 == 1) {
                f9 = f12;
                break;
            }
            int depth2 = xml.getDepth();
            f9 = f12;
            if (depth2 < depth && next2 == 3) {
                break;
            }
            if (next2 == 2 && depth2 <= depth && xml.getName().equals("item")) {
                TypedArray typedArrayN2 = H.n(resources, theme, attributeSetAsAttributeSet, C.a.f1225e);
                boolean zHasValue = typedArrayN2.hasValue(0);
                boolean zHasValue2 = typedArrayN2.hasValue(1);
                if (!zHasValue || !zHasValue2) {
                    throw new XmlPullParserException(xml.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
                }
                int color4 = typedArrayN2.getColor(0, 0);
                float f20 = typedArrayN2.getFloat(1, 0.0f);
                typedArrayN2.recycle();
                arrayList2.add(Integer.valueOf(color4));
                arrayList.add(Float.valueOf(f20));
            }
            f13 = f8;
            f12 = f9;
        }
        i iVar = arrayList2.size() > 0 ? new i(arrayList2, arrayList) : null;
        if (iVar == null) {
            iVar = zJ ? new i(color, color2, color3) : new i(color, color3);
        }
        if (i10 == 1) {
            float f21 = f15;
            if (f18 <= 0.0f) {
                f10 = f16;
                throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
            }
            int[] iArr = (int[]) iVar.f2977H;
            float[] fArr = (float[]) iVar.f2978I;
            if (i11 == 1) {
                f10 = f16;
                tileMode = Shader.TileMode.REPEAT;
            } else if (i11 != 2) {
                f10 = f16;
                tileMode = Shader.TileMode.CLAMP;
            } else {
                f10 = f16;
                tileMode = Shader.TileMode.MIRROR;
            }
            radialGradient = new RadialGradient(f21, f10, f18, iArr, fArr, tileMode);
        } else if (i10 != 2) {
            int[] iArr2 = (int[]) iVar.f2977H;
            float[] fArr2 = (float[]) iVar.f2978I;
            if (i11 != 1) {
                tileMode2 = i11 != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR;
            } else {
                tileMode2 = Shader.TileMode.REPEAT;
            }
            radialGradient = new LinearGradient(f11, f9, f8, f19, iArr2, fArr2, tileMode2);
        } else {
            radialGradient = new SweepGradient(f15, f16, (int[]) iVar.f2977H, (float[]) iVar.f2978I);
        }
        int i12 = 0;
        return new d(radialGradient, (Object) null, i12, i12);
    }

    public static d i(String str) throws ProtocolException {
        int i8;
        String strSubstring;
        boolean zStartsWith = str.startsWith("HTTP/1.");
        p015b6.k kVar = p015b6.k.HTTP_1_0;
        if (zStartsWith) {
            i8 = 9;
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt != 0) {
                if (iCharAt != 1) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                kVar = p015b6.k.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            i8 = 4;
        }
        int i9 = i8 + 3;
        if (str.length() < i9) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
        try {
            int i10 = Integer.parseInt(str.substring(i8, i9));
            if (str.length() <= i9) {
                strSubstring = HttpUrl.FRAGMENT_ENCODE_SET;
            } else {
                if (str.charAt(i9) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                strSubstring = str.substring(i8 + 4);
            }
            return new d(strSubstring, i10, 13, kVar);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
    }

    @Override // W0.InterfaceC0377j
    public final C0376i a(t tVar, long j8) {
        long jR = tVar.r();
        long jD = d(tVar);
        long jF = tVar.f();
        tVar.g(Math.max(6, ((FlacStreamMetadata) this.f2962I).minFrameSize));
        long jD2 = d(tVar);
        long jF2 = tVar.f();
        if (jD > j8 || jD2 <= j8) {
            return jD2 <= j8 ? new C0376i(-2, jD2, jF2) : new C0376i(-1, jD, jR);
        }
        return C0376i.a(jF);
    }

    public final void b(int i8, Q q7) {
        if (this.f2961H == -1) {
            H1.i(((SparseArray) this.f2962I).size() == 0);
            this.f2961H = 0;
        }
        if (((SparseArray) this.f2962I).size() > 0) {
            SparseArray sparseArray = (SparseArray) this.f2962I;
            int iKeyAt = sparseArray.keyAt(sparseArray.size() - 1);
            H1.d(i8 >= iKeyAt);
            if (iKeyAt == i8) {
                InterfaceC3172j interfaceC3172j = (InterfaceC3172j) this.f2963J;
                SparseArray sparseArray2 = (SparseArray) this.f2962I;
                interfaceC3172j.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        ((SparseArray) this.f2962I).append(i8, q7);
    }

    public final long d(t tVar) {
        int iH;
        while (tVar.f() < tVar.j() - 6) {
            FlacStreamMetadata flacStreamMetadata = (FlacStreamMetadata) this.f2962I;
            int i8 = this.f2961H;
            w wVar = (w) this.f2963J;
            long jF = tVar.f();
            byte[] bArr = new byte[2];
            int i9 = 0;
            tVar.c(0, bArr, 2);
            if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) == i8) {
                E e8 = new E(16);
                System.arraycopy(bArr, 0, e8.f28035a, 0, 2);
                byte[] bArr2 = e8.f28035a;
                while (i9 < 14 && (iH = tVar.h(2 + i9, bArr2, 14 - i9)) != -1) {
                    i9 += iH;
                }
                e8.K(i9);
                tVar.m();
                tVar.g((int) (jF - tVar.r()));
                if (Q3.b.b(e8, flacStreamMetadata, i8, wVar)) {
                    break;
                }
            } else {
                tVar.m();
                tVar.g((int) (jF - tVar.r()));
            }
            tVar.g(1);
        }
        if (tVar.f() < tVar.j() - 6) {
            return ((w) this.f2963J).f7458a;
        }
        tVar.g((int) (tVar.j() - tVar.f()));
        return ((FlacStreamMetadata) this.f2962I).totalSamples;
    }

    public final Object f(int i8) {
        if (this.f2961H == -1) {
            this.f2961H = 0;
        }
        while (true) {
            int i9 = this.f2961H;
            if (i9 <= 0 || i8 >= ((SparseArray) this.f2962I).keyAt(i9)) {
                break;
            }
            this.f2961H--;
        }
        while (this.f2961H < ((SparseArray) this.f2962I).size() - 1 && i8 >= ((SparseArray) this.f2962I).keyAt(this.f2961H + 1)) {
            this.f2961H++;
        }
        return ((SparseArray) this.f2962I).valueAt(this.f2961H);
    }

    public final boolean g() {
        if (((Shader) this.f2962I) == null) {
            Object obj = this.f2963J;
            if (((ColorStateList) obj) != null && ((ColorStateList) obj).isStateful()) {
                return true;
            }
        }
        return false;
    }

    public final boolean h(int[] iArr) {
        if (g()) {
            ColorStateList colorStateList = (ColorStateList) this.f2963J;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != this.f2961H) {
                this.f2961H = colorForState;
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0073, code lost:
    
        if (android.os.Build.VERSION.SDK_INT >= 26) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x007a, code lost:
    
        if (android.os.Build.VERSION.SDK_INT >= 34) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int j(p094m0.C3136t r6) {
        /*
            r5 = this;
            java.lang.String r0 = r6.f27041o
            r1 = 0
            if (r0 == 0) goto L86
            boolean r0 = p094m0.O.m(r0)
            if (r0 != 0) goto Ld
            goto L86
        Ld:
            java.lang.String r0 = p117p0.M.f28050a
            java.lang.String r6 = r6.f27041o
            r6.getClass()
            int r0 = r6.hashCode()
            r2 = 4
            r3 = 1
            r4 = -1
            switch(r0) {
                case -1487656890: goto L61;
                case -1487464693: goto L56;
                case -1487464690: goto L4b;
                case -1487394660: goto L40;
                case -1487018032: goto L35;
                case -879272239: goto L2a;
                case -879258763: goto L1f;
                default: goto L1e;
            }
        L1e:
            goto L6b
        L1f:
            java.lang.String r0 = "image/png"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L28
            goto L6b
        L28:
            r4 = 6
            goto L6b
        L2a:
            java.lang.String r0 = "image/bmp"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L33
            goto L6b
        L33:
            r4 = 5
            goto L6b
        L35:
            java.lang.String r0 = "image/webp"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L3e
            goto L6b
        L3e:
            r4 = 4
            goto L6b
        L40:
            java.lang.String r0 = "image/jpeg"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L49
            goto L6b
        L49:
            r4 = 3
            goto L6b
        L4b:
            java.lang.String r0 = "image/heif"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L54
            goto L6b
        L54:
            r4 = 2
            goto L6b
        L56:
            java.lang.String r0 = "image/heic"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L5f
            goto L6b
        L5f:
            r4 = 1
            goto L6b
        L61:
            java.lang.String r0 = "image/avif"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L6a
            goto L6b
        L6a:
            r4 = 0
        L6b:
            switch(r4) {
                case 0: goto L76;
                case 1: goto L6f;
                case 2: goto L6f;
                case 3: goto L7c;
                case 4: goto L7c;
                case 5: goto L7c;
                case 6: goto L7c;
                default: goto L6e;
            }
        L6e:
            goto L81
        L6f:
            int r6 = android.os.Build.VERSION.SDK_INT
            r0 = 26
            if (r6 < r0) goto L81
            goto L7c
        L76:
            int r6 = android.os.Build.VERSION.SDK_INT
            r0 = 34
            if (r6 < r0) goto L81
        L7c:
            int r6 = A0.O.o(r2, r1, r1, r1)
            goto L85
        L81:
            int r6 = A0.O.o(r3, r1, r1, r1)
        L85:
            return r6
        L86:
            int r6 = A0.O.o(r1, r1, r1, r1)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: F.d.j(m0.t):int");
    }

    public final void k(Object obj, Object obj2) {
        m(this.f2961H + 1);
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=".concat(String.valueOf(obj2)));
        }
        if (obj2 == null) {
            throw new NullPointerException(r.g("null value in entry: ", obj.toString(), "=null"));
        }
        Object[] objArr = (Object[]) this.f2962I;
        int i8 = this.f2961H;
        int i9 = i8 + i8;
        objArr[i9] = obj;
        objArr[i9 + 1] = obj2;
        this.f2961H = i8 + 1;
    }

    /* JADX WARN: Code duplicated, block: B:73:0x017b  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int[]] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v6 */
    public final C2420y l() {
        short[] sArr;
        char c8;
        char c9;
        Object[] objArr;
        ?? r8;
        ?? r9;
        boolean z7;
        ?? r10;
        C2420y c2420y;
        byte b8 = -1;
        C2404p c2404p = (C2404p) this.f2963J;
        if (c2404p != null) {
            throw c2404p.a();
        }
        int iIntValue = this.f2961H;
        Object[] objArrCopyOf = (Object[]) this.f2962I;
        if (iIntValue == 0) {
            c2420y = C2420y.f22392N;
        } else {
            C2404p c2404p2 = null;
            ?? r11 = 0;
            C2404p c2404p3 = null;
            if (iIntValue == 1) {
                objArrCopyOf[0].getClass();
                objArrCopyOf[1].getClass();
                c2420y = new C2420y(null, objArrCopyOf, 1);
            } else {
                Cw.T0(iIntValue, objArrCopyOf.length >> 1);
                int iQ = com.google.android.gms.internal.atv_ads_framework.r.q(iIntValue);
                if (iIntValue == 1) {
                    objArrCopyOf[0].getClass();
                    objArrCopyOf[1].getClass();
                } else {
                    int i8 = iQ - 1;
                    if (iQ <= 128) {
                        byte[] bArr = new byte[iQ];
                        Arrays.fill(bArr, (byte) -1);
                        int i9 = 0;
                        for (int i10 = 0; i10 < iIntValue; i10++) {
                            int i11 = i9 + i9;
                            int i12 = i10 + i10;
                            Object obj = objArrCopyOf[i12];
                            obj.getClass();
                            Object obj2 = objArrCopyOf[i12 ^ 1];
                            obj2.getClass();
                            int iL0 = Cw.l0(obj.hashCode());
                            while (true) {
                                int i13 = iL0 & i8;
                                int i14 = bArr[i13] & 255;
                                if (i14 == 255) {
                                    bArr[i13] = (byte) i11;
                                    if (i9 < i10) {
                                        objArrCopyOf[i11] = obj;
                                        objArrCopyOf[i11 ^ 1] = obj2;
                                    }
                                    i9++;
                                    break;
                                }
                                if (obj.equals(objArrCopyOf[i14 == true ? 1 : 0])) {
                                    int i15 = ~i14;
                                    Object obj3 = objArrCopyOf[i15 == true ? 1 : 0];
                                    obj3.getClass();
                                    C2404p c2404p4 = new C2404p(obj, obj2, obj3);
                                    objArrCopyOf[i15 == true ? 1 : 0] = obj2;
                                    c2404p3 = c2404p4;
                                    break;
                                }
                                iL0 = i13 + 1;
                            }
                        }
                        if (i9 == iIntValue) {
                            r11 = bArr;
                        } else {
                            c9 = 2;
                            objArr = new Object[]{bArr, Integer.valueOf(i9), c2404p3};
                            r8 = objArr;
                            c8 = 0;
                            r9 = r8;
                        }
                    } else {
                        if (iQ <= 32768) {
                            sArr = new short[iQ];
                            Arrays.fill(sArr, (short) -1);
                            int i16 = 0;
                            for (int i17 = 0; i17 < iIntValue; i17++) {
                                int i18 = i16 + i16;
                                int i19 = i17 + i17;
                                Object obj4 = objArrCopyOf[i19];
                                obj4.getClass();
                                Object obj5 = objArrCopyOf[i19 ^ 1];
                                obj5.getClass();
                                int iL1 = Cw.l0(obj4.hashCode());
                                while (true) {
                                    int i20 = iL1 & i8;
                                    char c10 = (char) sArr[i20];
                                    if (c10 == 65535) {
                                        sArr[i20] = (short) i18;
                                        if (i16 < i17) {
                                            objArrCopyOf[i18] = obj4;
                                            objArrCopyOf[i18 ^ 1] = obj5;
                                        }
                                        i16++;
                                        break;
                                    }
                                    if (obj4.equals(objArrCopyOf[c10])) {
                                        int i21 = c10 ^ 1;
                                        Object obj6 = objArrCopyOf[i21 == true ? 1 : 0];
                                        obj6.getClass();
                                        C2404p c2404p5 = new C2404p(obj4, obj5, obj6);
                                        objArrCopyOf[i21 == true ? 1 : 0] = obj5;
                                        c2404p2 = c2404p5;
                                        break;
                                    }
                                    iL1 = i20 + 1;
                                }
                            }
                            if (i16 != iIntValue) {
                                c9 = 2;
                                objArr = new Object[]{sArr, Integer.valueOf(i16), c2404p2};
                                r8 = objArr;
                                c8 = 0;
                                r9 = r8;
                            }
                        } else {
                            sArr = new int[iQ];
                            Arrays.fill((int[]) sArr, -1);
                            C2404p c2404p6 = null;
                            int i22 = 0;
                            int i23 = 0;
                            while (i22 < iIntValue) {
                                int i24 = i23 + i23;
                                int i25 = i22 + i22;
                                Object obj7 = objArrCopyOf[i25];
                                obj7.getClass();
                                Object obj8 = objArrCopyOf[i25 ^ 1];
                                obj8.getClass();
                                int iL2 = Cw.l0(obj7.hashCode());
                                while (true) {
                                    int i26 = iL2 & i8;
                                    ?? r15 = sArr[i26];
                                    if (r15 == b8) {
                                        sArr[i26] = i24;
                                        if (i23 < i22) {
                                            objArrCopyOf[i24] = obj7;
                                            objArrCopyOf[i24 ^ 1] = obj8;
                                        }
                                        i23++;
                                        break;
                                    }
                                    if (obj7.equals(objArrCopyOf[r15])) {
                                        int i27 = r15 ^ 1;
                                        Object obj9 = objArrCopyOf[i27 == true ? 1 : 0];
                                        obj9.getClass();
                                        c2404p6 = new C2404p(obj7, obj8, obj9);
                                        objArrCopyOf[i27 == true ? 1 : 0] = obj8;
                                        break;
                                    }
                                    iL2 = i26 + 1;
                                    b8 = -1;
                                }
                                i22++;
                                b8 = -1;
                            }
                            if (i23 != iIntValue) {
                                c8 = 0;
                                c9 = 2;
                                r9 = new Object[]{sArr, Integer.valueOf(i23), c2404p6};
                            }
                        }
                        r11 = sArr;
                    }
                    z7 = r9 instanceof Object[];
                    r10 = r9;
                    if (z7) {
                        Object[] objArr2 = (Object[]) r9;
                        this.f2963J = (C2404p) objArr2[c9];
                        Object obj10 = objArr2[c8];
                        iIntValue = ((Integer) objArr2[1]).intValue();
                        objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue + iIntValue);
                        r10 = obj10;
                    }
                    c2420y = new C2420y(r10, objArrCopyOf, iIntValue);
                }
                c9 = 2;
                r8 = r11;
                c8 = 0;
                r9 = r8;
                z7 = r9 instanceof Object[];
                r10 = r9;
                if (z7) {
                    Object[] objArr3 = (Object[]) r9;
                    this.f2963J = (C2404p) objArr3[c9];
                    Object obj11 = objArr3[c8];
                    iIntValue = ((Integer) objArr3[1]).intValue();
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue + iIntValue);
                    r10 = obj11;
                }
                c2420y = new C2420y(r10, objArrCopyOf, iIntValue);
            }
        }
        C2404p c2404p7 = (C2404p) this.f2963J;
        if (c2404p7 == null) {
            return c2420y;
        }
        throw c2404p7.a();
    }

    public final void m(int i8) {
        Object[] objArr = (Object[]) this.f2962I;
        int length = objArr.length;
        int i9 = i8 + i8;
        if (i9 > length) {
            int i10 = length + (length >> 1) + 1;
            if (i10 < i9) {
                int iHighestOneBit = Integer.highestOneBit(i9 - 1);
                i10 = iHighestOneBit + iHighestOneBit;
            }
            if (i10 < 0) {
                i10 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            }
            this.f2962I = Arrays.copyOf(objArr, i10);
        }
    }

    public final String toString() {
        switch (this.f2960G) {
            case 13:
                StringBuilder sb = new StringBuilder();
                sb.append(((p015b6.k) this.f2962I) == p015b6.k.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
                sb.append(' ');
                sb.append(this.f2961H);
                if (((String) this.f2963J) != null) {
                    sb.append(' ');
                    sb.append((String) this.f2963J);
                }
                return sb.toString();
            case 14:
                StringBuilder sb2 = new StringBuilder();
                sb2.append((String) this.f2962I);
                sb2.append("://");
                int i8 = -1;
                if (((String) this.f2963J).indexOf(58) != -1) {
                    sb2.append('[');
                    sb2.append((String) this.f2963J);
                    sb2.append(']');
                } else {
                    sb2.append((String) this.f2963J);
                }
                int i9 = this.f2961H;
                if (i9 == -1) {
                    String str = (String) this.f2962I;
                    if (str.equals("http")) {
                        i9 = 80;
                    } else {
                        i9 = str.equals("https") ? 443 : -1;
                    }
                }
                String str2 = (String) this.f2962I;
                if (str2.equals("http")) {
                    i8 = 80;
                } else if (str2.equals("https")) {
                    i8 = 443;
                }
                if (i9 != i8) {
                    sb2.append(':');
                    sb2.append(i9);
                }
                return sb2.toString();
            default:
                return super.toString();
        }
    }

    public d(int i8, int i9) {
        this.f2960G = 10;
        this.f2961H = i8;
    }

    public /* synthetic */ d(int i8, p168v4.a aVar, C0435q c0435q) {
        this.f2960G = 11;
        this.f2961H = i8;
        this.f2962I = aVar;
        this.f2963J = c0435q;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public d(Context context) {
        this(context, 0);
        this.f2960G = 2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d(FlacStreamMetadata flacStreamMetadata, int i8) {
        this(i8, flacStreamMetadata);
        this.f2960G = 5;
    }

    public /* synthetic */ d(Object obj, Object obj2, int i8, int i9) {
        this.f2960G = i9;
        this.f2962I = obj;
        this.f2963J = obj2;
        this.f2961H = i8;
    }

    public /* synthetic */ d(String str, int i8, int i9, Object obj) {
        this.f2960G = i9;
        this.f2962I = obj;
        this.f2961H = i8;
        this.f2963J = str;
    }

    public d(C0260i c0260i) {
        this.f2960G = 3;
        this.f2962I = new SparseArray();
        this.f2963J = c0260i;
        this.f2961H = -1;
    }

    @Override // W0.InterfaceC0377j
    public final /* synthetic */ void e() {
    }

    public d(int i8, FlacStreamMetadata flacStreamMetadata) {
        this.f2960G = 5;
        this.f2962I = flacStreamMetadata;
        this.f2961H = i8;
        this.f2963J = new w();
    }

    public d(Context context, int i8) {
        this.f2960G = 2;
        this.f2962I = context;
        this.f2963J = null;
        this.f2961H = -1;
    }

    public d(J3.k kVar) {
        this.f2960G = 6;
        this.f2963J = new u(new M.d(150), new U(this, 25), Q2.d.f6032a, 28);
        this.f2962I = kVar;
    }
}
