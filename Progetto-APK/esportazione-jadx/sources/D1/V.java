package D1;

import android.content.Context;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Base64;
import android.util.SparseArray;
import android.widget.FrameLayout;
import com.google.android.gms.internal.measurement.H1;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import z4.i0;

/* JADX INFO: loaded from: classes.dex */
public final class V extends FrameLayout implements N {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0138c f2117G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final T f2118H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public List f2119I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public C0139d f2120J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public float f2121K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f2122L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public float f2123M;

    public V(Context context) {
        super(context, null);
        this.f2119I = Collections.emptyList();
        this.f2120J = C0139d.f2132g;
        this.f2121K = 0.0533f;
        this.f2122L = 0;
        this.f2123M = 0.08f;
        C0138c c0138c = new C0138c(context);
        this.f2117G = c0138c;
        T t7 = new T(context, null);
        this.f2118H = t7;
        t7.setBackgroundColor(0);
        addView(c0138c);
        addView(t7);
    }

    @Override // D1.N
    public final void a(List list, C0139d c0139d, float f8, int i8, float f9) {
        this.f2120J = c0139d;
        this.f2121K = f8;
        this.f2122L = i8;
        this.f2123M = f9;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i9 = 0; i9 < list.size(); i9++) {
            p110o0.b bVar = (p110o0.b) list.get(i9);
            if (bVar.f27638d != null) {
                arrayList.add(bVar);
            } else {
                arrayList2.add(bVar);
            }
        }
        if (!this.f2119I.isEmpty() || !arrayList2.isEmpty()) {
            this.f2119I = arrayList2;
            c();
        }
        this.f2117G.a(arrayList, c0139d, f8, i8, f9);
        invalidate();
    }

    public final String b(int i8, float f8) {
        float fW = H1.w(f8, i8, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        if (fW == -3.4028235E38f) {
            return "unset";
        }
        Object[] objArr = {Float.valueOf(fW / getContext().getResources().getDisplayMetrics().density)};
        String str = p117p0.M.f28050a;
        return String.format(Locale.US, "%.2fpx", objArr);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0276  */
    /* JADX WARN: Code duplicated, block: B:102:0x0292 A[LOOP:2: B:101:0x0290->B:102:0x0292, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:106:0x02b5 A[LOOP:3: B:104:0x02af->B:106:0x02b5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:109:0x030e  */
    /* JADX WARN: Code duplicated, block: B:111:0x0318  */
    /* JADX WARN: Code duplicated, block: B:112:0x032a  */
    /* JADX WARN: Code duplicated, block: B:114:0x0330  */
    /* JADX WARN: Code duplicated, block: B:115:0x034f  */
    /* JADX WARN: Code duplicated, block: B:117:0x0355  */
    /* JADX WARN: Code duplicated, block: B:119:0x0370  */
    /* JADX WARN: Code duplicated, block: B:121:0x0376  */
    /* JADX WARN: Code duplicated, block: B:122:0x0379  */
    /* JADX WARN: Code duplicated, block: B:124:0x037d  */
    /* JADX WARN: Code duplicated, block: B:126:0x0386  */
    /* JADX WARN: Code duplicated, block: B:127:0x038c  */
    /* JADX WARN: Code duplicated, block: B:129:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:131:0x03ab  */
    /* JADX WARN: Code duplicated, block: B:132:0x03c9  */
    /* JADX WARN: Code duplicated, block: B:134:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:136:0x03d6  */
    /* JADX WARN: Code duplicated, block: B:137:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:138:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:140:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:142:0x03f4  */
    /* JADX WARN: Code duplicated, block: B:144:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:146:0x03fa  */
    /* JADX WARN: Code duplicated, block: B:147:0x0402  */
    /* JADX WARN: Code duplicated, block: B:148:0x0406  */
    /* JADX WARN: Code duplicated, block: B:149:0x040a  */
    /* JADX WARN: Code duplicated, block: B:150:0x040e  */
    /* JADX WARN: Code duplicated, block: B:152:0x0412  */
    /* JADX WARN: Code duplicated, block: B:154:0x041a  */
    /* JADX WARN: Code duplicated, block: B:156:0x041d  */
    /* JADX WARN: Code duplicated, block: B:159:0x0421  */
    /* JADX WARN: Code duplicated, block: B:160:0x0425  */
    /* JADX WARN: Code duplicated, block: B:161:0x0429  */
    /* JADX WARN: Code duplicated, block: B:162:0x042d  */
    /* JADX WARN: Code duplicated, block: B:164:0x0431  */
    /* JADX WARN: Code duplicated, block: B:165:0x0435  */
    /* JADX WARN: Code duplicated, block: B:167:0x0439  */
    /* JADX WARN: Code duplicated, block: B:169:0x044c  */
    /* JADX WARN: Code duplicated, block: B:172:0x0450  */
    /* JADX WARN: Code duplicated, block: B:173:0x0456  */
    /* JADX WARN: Code duplicated, block: B:175:0x045e  */
    /* JADX WARN: Code duplicated, block: B:177:0x0461 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:178:0x0463  */
    /* JADX WARN: Code duplicated, block: B:180:0x0466  */
    /* JADX WARN: Code duplicated, block: B:181:0x046a  */
    /* JADX WARN: Code duplicated, block: B:182:0x0470  */
    /* JADX WARN: Code duplicated, block: B:183:0x0476  */
    /* JADX WARN: Code duplicated, block: B:184:0x047c  */
    /* JADX WARN: Code duplicated, block: B:187:0x048a  */
    /* JADX WARN: Code duplicated, block: B:188:0x048d  */
    /* JADX WARN: Code duplicated, block: B:228:0x0514  */
    /* JADX WARN: Code duplicated, block: B:231:0x0520  */
    /* JADX WARN: Code duplicated, block: B:233:0x0530  */
    /* JADX WARN: Code duplicated, block: B:236:0x0545  */
    /* JADX WARN: Code duplicated, block: B:242:0x0579  */
    /* JADX WARN: Code duplicated, block: B:245:0x05a1 A[LOOP:6: B:243:0x059b->B:245:0x05a1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:249:0x05be A[LOOP:7: B:247:0x05b8->B:249:0x05be, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:255:0x05f6  */
    /* JADX WARN: Code duplicated, block: B:261:0x0617  */
    /* JADX WARN: Code duplicated, block: B:265:0x0664  */
    /* JADX WARN: Code duplicated, block: B:270:0x0670  */
    /* JADX WARN: Code duplicated, block: B:272:0x0688  */
    /* JADX WARN: Code duplicated, block: B:275:0x06a4  */
    /* JADX WARN: Code duplicated, block: B:277:0x06af  */
    /* JADX WARN: Code duplicated, block: B:279:0x06b2  */
    /* JADX WARN: Code duplicated, block: B:280:0x06b5  */
    /* JADX WARN: Code duplicated, block: B:281:0x06b8  */
    /* JADX WARN: Code duplicated, block: B:283:0x06dc  */
    /* JADX WARN: Code duplicated, block: B:301:0x0552 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x0180  */
    /* JADX WARN: Code duplicated, block: B:54:0x0195  */
    /* JADX WARN: Code duplicated, block: B:57:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:58:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:60:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:62:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:64:0x01be  */
    /* JADX WARN: Code duplicated, block: B:65:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:67:0x01c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:69:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:70:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:73:0x01df  */
    /* JADX WARN: Code duplicated, block: B:74:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:77:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:79:0x01f6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:83:0x0200 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x0203  */
    /* JADX WARN: Code duplicated, block: B:86:0x0206 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:93:0x0212  */
    /* JADX WARN: Code duplicated, block: B:96:0x0240  */
    /* JADX WARN: Code duplicated, block: B:97:0x0257  */
    /* JADX WARN: Code duplicated, block: B:99:0x025d  */
    /* JADX WARN: Instruction removed from duplicated block: B:106:0x02b5, please report this as an issue */
    public final void c() {
        String strConcat;
        String str;
        boolean z7;
        float f8;
        String str2;
        Layout.Alignment alignment;
        int i8;
        String str3;
        int i9;
        String str4;
        int i10;
        String str5;
        int i11;
        String str6;
        String str7;
        String str8;
        float f9;
        StringBuilder sb;
        i0 i0Var;
        String str9;
        CharSequence charSequence;
        String str10;
        Spanned spanned;
        HashSet hashSet;
        BackgroundColorSpan[] backgroundColorSpanArr;
        int length;
        int i12;
        HashMap map;
        Iterator it;
        String str11;
        String str12;
        SparseArray sparseArray;
        Object[] spans;
        int length2;
        int i13;
        String str13;
        String str14;
        String str15;
        StringBuilder sb2;
        int i14;
        int i15;
        F.i iVar;
        Iterator it2;
        Iterator it3;
        Object obj;
        boolean z8;
        int i16;
        String str16;
        String str17;
        p110o0.h hVar;
        int i17;
        StringBuilder sb3;
        int i18;
        int i19;
        String str18;
        String strG;
        int i20;
        int style;
        String family;
        AbsoluteSizeSpan absoluteSizeSpan;
        float size;
        String str19;
        int spanStart;
        int spanEnd;
        K k8;
        K k9;
        Object obj2;
        float f10;
        String str20;
        Layout.Alignment alignment2;
        int i21;
        String str21;
        String str22;
        String str23;
        boolean z9;
        V v5 = this;
        StringBuilder sb4 = new StringBuilder();
        Object[] objArr = new Object[4];
        char c8 = 0;
        objArr[0] = com.bumptech.glide.d.t(v5.f2120J.f2133a);
        int i22 = 1;
        objArr[1] = v5.b(v5.f2122L, v5.f2121K);
        int i23 = 2;
        objArr[2] = Float.valueOf(1.2f);
        C0139d c0139d = v5.f2120J;
        int i24 = c0139d.f2136d;
        int i25 = c0139d.f2137e;
        if (i24 == 1) {
            Object[] objArr2 = {com.bumptech.glide.d.t(i25)};
            String str24 = p117p0.M.f28050a;
            strConcat = String.format(Locale.US, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", objArr2);
        } else if (i24 == 2) {
            String strT = com.bumptech.glide.d.t(i25);
            String str25 = p117p0.M.f28050a;
            Locale locale = Locale.US;
            strConcat = "0.1em 0.12em 0.15em ".concat(strT);
        } else if (i24 == 3) {
            String strT2 = com.bumptech.glide.d.t(i25);
            String str26 = p117p0.M.f28050a;
            Locale locale2 = Locale.US;
            strConcat = "0.06em 0.08em 0.15em ".concat(strT2);
        } else if (i24 != 4) {
            strConcat = "unset";
        } else {
            String strT3 = com.bumptech.glide.d.t(i25);
            String str27 = p117p0.M.f28050a;
            Locale locale3 = Locale.US;
            strConcat = "-0.05em -0.05em 0.15em ".concat(strT3);
        }
        objArr[3] = strConcat;
        String str28 = p117p0.M.f28050a;
        sb4.append(String.format(Locale.US, "<body><div style='-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;'>", objArr));
        HashMap map2 = new HashMap();
        String strT4 = com.bumptech.glide.d.t(v5.f2120J.f2134b);
        String str29 = "background-color:";
        StringBuilder sb5 = new StringBuilder("background-color:");
        sb5.append(strT4);
        String str30 = ";";
        sb5.append(";");
        map2.put(".default_bg,.default_bg *", sb5.toString());
        int i26 = 0;
        while (i26 < v5.f2119I.size()) {
            p110o0.b bVar = (p110o0.b) v5.f2119I.get(i26);
            float f11 = bVar.f27642h;
            float f12 = f11 != -3.4028235E38f ? f11 * 100.0f : 50.0f;
            int i27 = -100;
            int i28 = bVar.f27643i;
            int i29 = i28 != i22 ? i28 != i23 ? 0 : -100 : -50;
            int i30 = bVar.f27650p;
            float f13 = bVar.f27639e;
            if (f13 != -3.4028235E38f) {
                if (bVar.f27640f != i22) {
                    Object[] objArr3 = new Object[i22];
                    objArr3[c8] = Float.valueOf(f13 * 100.0f);
                    str = String.format(Locale.US, "%.2f%%", objArr3);
                    int i31 = bVar.f27641g;
                    if (i30 == i22) {
                        i27 = -(i31 != i22 ? i31 != 2 ? 0 : -100 : -50);
                    } else {
                        i27 = i31 != i22 ? i31 != 2 ? 0 : -100 : -50;
                    }
                } else {
                    if (f13 >= 0.0f) {
                        Object[] objArr4 = new Object[i22];
                        objArr4[0] = Float.valueOf(f13 * 1.2f);
                        str = String.format(Locale.US, "%.2fem", objArr4);
                        z7 = false;
                    } else {
                        Object[] objArr5 = new Object[i22];
                        objArr5[0] = Float.valueOf(((-f13) - 1.0f) * 1.2f);
                        str = String.format(Locale.US, "%.2fem", objArr5);
                        z7 = true;
                    }
                    i27 = 0;
                }
                f8 = bVar.f27644j;
                if (f8 != -3.4028235E38f) {
                    Object[] objArr6 = new Object[i22];
                    objArr6[0] = Float.valueOf(f8 * 100.0f);
                    str2 = String.format(Locale.US, "%.2f%%", objArr6);
                } else {
                    str2 = "fit-content";
                }
                alignment = bVar.f27636b;
                if (alignment == null) {
                    str3 = "start";
                    str4 = "center";
                    i10 = 1;
                    i9 = 2;
                } else {
                    i8 = U.f2116a[alignment.ordinal()];
                    str3 = "start";
                    if (i8 != 1) {
                        i9 = 2;
                        if (i8 != 2) {
                            str4 = "center";
                        } else {
                            str4 = "end";
                        }
                    } else {
                        i9 = 2;
                        str4 = str3;
                    }
                    i10 = 1;
                }
                if (i30 != i10) {
                    str5 = "vertical-rl";
                } else if (i30 != i9) {
                    str5 = "horizontal-tb";
                } else {
                    str5 = "vertical-lr";
                }
                String strB = v5.b(bVar.f27648n, bVar.f27649o);
                if (bVar.f27646l) {
                    i11 = bVar.f27647m;
                } else {
                    i11 = v5.f2120J.f2135c;
                }
                String strT5 = com.bumptech.glide.d.t(i11);
                str6 = "right";
                str7 = "top";
                if (i30 != 1) {
                    if (i30 != 2) {
                        str6 = z7 ? "bottom" : "top";
                        str7 = "left";
                    } else if (!z7) {
                        str6 = "left";
                    }
                } else if (z7) {
                    str6 = "left";
                }
                if (i30 != 2 || i30 == 1) {
                    str8 = "height";
                    int i32 = i27;
                    i27 = i29;
                    i29 = i32;
                } else {
                    str8 = "width";
                }
                f9 = getContext().getResources().getDisplayMetrics().density;
                Pattern pattern = L.f2077a;
                sb = sb4;
                i0Var = i0.f31862M;
                str9 = ";'>";
                charSequence = bVar.f27635a;
                if (charSequence == null) {
                    iVar = new F.i(HttpUrl.FRAGMENT_ENCODE_SET, i0Var);
                    str11 = str8;
                    str12 = str2;
                    str13 = ";'>";
                    str14 = str30;
                    str15 = str29;
                    str10 = HttpUrl.FRAGMENT_ENCODE_SET;
                } else {
                    str10 = HttpUrl.FRAGMENT_ENCODE_SET;
                    if (charSequence instanceof Spanned) {
                        spanned = (Spanned) charSequence;
                        hashSet = new HashSet();
                        backgroundColorSpanArr = (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class);
                        i12 = 0;
                        for (length = backgroundColorSpanArr.length; i12 < length; length = length) {
                            hashSet.add(Integer.valueOf(backgroundColorSpanArr[i12].getBackgroundColor()));
                            i12++;
                        }
                        map = new HashMap();
                        it = hashSet.iterator();
                        while (it.hasNext()) {
                            int iIntValue = ((Integer) it.next()).intValue();
                            String strF = p000a.r.f("bg_", iIntValue);
                            Iterator it4 = it;
                            String str31 = str2;
                            String str32 = str8;
                            String strC = A0.O.C(".", strF, ",.", strF, " *");
                            String strT6 = com.bumptech.glide.d.t(iIntValue);
                            String str33 = p117p0.M.f28050a;
                            Locale locale4 = Locale.US;
                            map.put(strC, str29 + strT6 + str30);
                            it = it4;
                            str2 = str31;
                            str8 = str32;
                        }
                        str11 = str8;
                        str12 = str2;
                        sparseArray = new SparseArray();
                        spans = spanned.getSpans(0, spanned.length(), Object.class);
                        length2 = spans.length;
                        i13 = 0;
                        while (i13 < length2) {
                            obj = spans[i13];
                            Object[] objArr7 = spans;
                            z8 = obj instanceof StrikethroughSpan;
                            String str34 = null;
                            if (z8) {
                                str16 = str30;
                                str17 = str29;
                                i16 = length2;
                                strG = "<span style='text-decoration:line-through;'>";
                            } else {
                                i16 = length2;
                                if (obj instanceof ForegroundColorSpan) {
                                    String strT7 = com.bumptech.glide.d.t(((ForegroundColorSpan) obj).getForegroundColor());
                                    String str35 = p117p0.M.f28050a;
                                    Locale locale5 = Locale.US;
                                    str16 = str30;
                                    strG = p000a.r.g("<span style='color:", strT7, str9);
                                    str17 = str29;
                                } else {
                                    str16 = str30;
                                    if (obj instanceof BackgroundColorSpan) {
                                        int backgroundColor = ((BackgroundColorSpan) obj).getBackgroundColor();
                                        String str36 = p117p0.M.f28050a;
                                        Locale locale6 = Locale.US;
                                        str17 = str29;
                                        strG = A0.O.y("<span class='bg_", backgroundColor, "'>");
                                    } else {
                                        str17 = str29;
                                        if (obj instanceof p110o0.e) {
                                            strG = "<span style='text-combine-upright:all;'>";
                                        } else if (obj instanceof AbsoluteSizeSpan) {
                                            absoluteSizeSpan = (AbsoluteSizeSpan) obj;
                                            if (absoluteSizeSpan.getDip()) {
                                                size = absoluteSizeSpan.getSize();
                                            } else {
                                                size = absoluteSizeSpan.getSize() / f9;
                                            }
                                            Object[] objArr8 = {Float.valueOf(size)};
                                            String str37 = p117p0.M.f28050a;
                                            strG = String.format(Locale.US, "<span style='font-size:%.2fpx;'>", objArr8);
                                        } else if (obj instanceof RelativeSizeSpan) {
                                            Object[] objArr9 = {Float.valueOf(((RelativeSizeSpan) obj).getSizeChange() * 100.0f)};
                                            String str38 = p117p0.M.f28050a;
                                            strG = String.format(Locale.US, "<span style='font-size:%.2f%%;'>", objArr9);
                                        } else if (obj instanceof TypefaceSpan) {
                                            family = ((TypefaceSpan) obj).getFamily();
                                            if (family != null) {
                                                String str39 = p117p0.M.f28050a;
                                                Locale locale7 = Locale.US;
                                                strG = p000a.r.g("<span style='font-family:\"", family, "\";'>");
                                            } else {
                                                strG = null;
                                            }
                                        } else if (obj instanceof StyleSpan) {
                                            style = ((StyleSpan) obj).getStyle();
                                            if (style != 1) {
                                                strG = "<b>";
                                            } else if (style != 2) {
                                                strG = "<i>";
                                            } else if (style != 3) {
                                                strG = null;
                                            } else {
                                                strG = "<b><i>";
                                            }
                                        } else if (obj instanceof p110o0.g) {
                                            i20 = ((p110o0.g) obj).f27664b;
                                            if (i20 != -1) {
                                                strG = "<ruby style='ruby-position:unset;'>";
                                            } else if (i20 != 1) {
                                                strG = "<ruby style='ruby-position:over;'>";
                                            } else if (i20 != 2) {
                                                strG = null;
                                            } else {
                                                strG = "<ruby style='ruby-position:under;'>";
                                            }
                                        } else if (obj instanceof UnderlineSpan) {
                                            strG = "<u>";
                                        } else if (obj instanceof p110o0.h) {
                                            hVar = (p110o0.h) obj;
                                            i17 = hVar.f27668a;
                                            sb3 = new StringBuilder();
                                            i18 = hVar.f27669b;
                                            if (i18 != 1) {
                                                i19 = 2;
                                                if (i18 == 2) {
                                                    sb3.append("open ");
                                                }
                                            } else {
                                                i19 = 2;
                                                sb3.append("filled ");
                                            }
                                            if (i17 != 0) {
                                                sb3.append("none");
                                            } else if (i17 != 1) {
                                                sb3.append("circle");
                                            } else if (i17 != i19) {
                                                sb3.append("dot");
                                            } else if (i17 != 3) {
                                                sb3.append("unset");
                                            } else {
                                                sb3.append("sesame");
                                            }
                                            String string = sb3.toString();
                                            if (hVar.f27670c != 2) {
                                                str18 = "over right";
                                            } else {
                                                str18 = "under left";
                                            }
                                            Object[] objArr10 = {string, str18};
                                            String str40 = p117p0.M.f28050a;
                                            strG = String.format(Locale.US, "<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", objArr10);
                                        } else {
                                            strG = null;
                                        }
                                    }
                                }
                            }
                            if (!z8 || (obj instanceof ForegroundColorSpan) || (obj instanceof BackgroundColorSpan) || (obj instanceof p110o0.e) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan) || (obj instanceof p110o0.h)) {
                                str19 = "</span>";
                            } else {
                                if (obj instanceof TypefaceSpan) {
                                    if (((TypefaceSpan) obj).getFamily() != null) {
                                        str34 = "</span>";
                                    }
                                } else if (obj instanceof StyleSpan) {
                                    int style2 = ((StyleSpan) obj).getStyle();
                                    if (style2 == 1) {
                                        str34 = "</b>";
                                    } else if (style2 == 2) {
                                        str34 = "</i>";
                                    } else if (style2 == 3) {
                                        str34 = "</i></b>";
                                    }
                                } else if (obj instanceof p110o0.g) {
                                    str34 = "<rt>" + L.a(((p110o0.g) obj).f27663a) + "</rt></ruby>";
                                } else if (obj instanceof UnderlineSpan) {
                                    str34 = "</u>";
                                }
                                str19 = str34;
                            }
                            spanStart = spanned.getSpanStart(obj);
                            spanEnd = spanned.getSpanEnd(obj);
                            if (strG != null) {
                                str19.getClass();
                                J j8 = new J(spanStart, spanEnd, strG, str19);
                                k8 = (K) sparseArray.get(spanStart);
                                if (k8 == null) {
                                    k8 = new K();
                                    sparseArray.put(spanStart, k8);
                                }
                                k8.f2075a.add(j8);
                                k9 = (K) sparseArray.get(spanEnd);
                                if (k9 == null) {
                                    k9 = new K();
                                    sparseArray.put(spanEnd, k9);
                                }
                                k9.f2076b.add(j8);
                            }
                            i13++;
                            spans = objArr7;
                            length2 = i16;
                            str30 = str16;
                            str29 = str17;
                            f9 = f9;
                            str9 = str9;
                        }
                        str13 = str9;
                        str14 = str30;
                        str15 = str29;
                        sb2 = new StringBuilder(spanned.length());
                        i14 = 0;
                        i15 = 0;
                        while (i14 < sparseArray.size()) {
                            int iKeyAt = sparseArray.keyAt(i14);
                            sb2.append(L.a(spanned.subSequence(i15, iKeyAt)));
                            K k10 = (K) sparseArray.get(iKeyAt);
                            Collections.sort(k10.f2076b, J.f2070f);
                            it2 = k10.f2076b.iterator();
                            while (it2.hasNext()) {
                                sb2.append(((J) it2.next()).f2074d);
                            }
                            ArrayList arrayList = k10.f2075a;
                            Collections.sort(arrayList, J.f2069e);
                            it3 = arrayList.iterator();
                            while (it3.hasNext()) {
                                sb2.append(((J) it3.next()).f2073c);
                            }
                            i14++;
                            i15 = iKeyAt;
                        }
                        sb2.append(L.a(spanned.subSequence(i15, spanned.length())));
                        iVar = new F.i(sb2.toString(), map);
                    } else {
                        iVar = new F.i(L.a(charSequence), i0Var);
                        str11 = str8;
                        str12 = str2;
                        str13 = ";'>";
                        str14 = str30;
                        str15 = str29;
                    }
                }
                obj2 = iVar.f2977H;
                for (String str41 : map2.keySet()) {
                    str23 = (String) map2.put(str41, (String) map2.get(str41));
                    if (str23 != null || str23.equals(map2.get(str41))) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    H1.i(z9);
                }
                Object[] objArr11 = new Object[14];
                objArr11[0] = Integer.valueOf(i26);
                objArr11[1] = str7;
                objArr11[2] = Float.valueOf(f12);
                objArr11[3] = str6;
                objArr11[4] = str;
                objArr11[5] = str11;
                objArr11[6] = str12;
                objArr11[7] = str4;
                objArr11[8] = str5;
                objArr11[9] = strB;
                objArr11[10] = strT5;
                objArr11[11] = Integer.valueOf(i29);
                objArr11[12] = Integer.valueOf(i27);
                f10 = bVar.f27651q;
                if (f10 != 0.0f) {
                    if (i30 != 2 || i30 == 1) {
                        str22 = "skewY";
                    } else {
                        str22 = "skewX";
                    }
                    Object[] objArr12 = {str22, Float.valueOf(f10)};
                    String str42 = p117p0.M.f28050a;
                    str20 = String.format(Locale.US, "%s(%.2fdeg)", objArr12);
                } else {
                    str20 = str10;
                }
                objArr11[13] = str20;
                sb.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", objArr11));
                sb.append("<span class='default_bg'>");
                alignment2 = bVar.f27637c;
                if (alignment2 != null) {
                    i21 = U.f2116a[alignment2.ordinal()];
                    if (i21 != 1) {
                        str21 = str3;
                    } else if (i21 != 2) {
                        str21 = "center";
                    } else {
                        str21 = "end";
                    }
                    sb.append("<span style='display:inline-block; text-align:" + str21 + str13);
                    sb.append((String) obj2);
                    sb.append("</span>");
                } else {
                    sb.append((String) obj2);
                }
                sb.append("</span></div>");
                i26++;
                i22 = 1;
                i23 = 2;
                v5 = this;
                sb4 = sb;
                str30 = str14;
                str29 = str15;
                c8 = 0;
            } else {
                Object[] objArr13 = new Object[i22];
                objArr13[0] = Float.valueOf((1.0f - v5.f2123M) * 100.0f);
                str = String.format(Locale.US, "%.2f%%", objArr13);
            }
            z7 = false;
            f8 = bVar.f27644j;
            if (f8 != -3.4028235E38f) {
                Object[] objArr14 = new Object[i22];
                objArr14[0] = Float.valueOf(f8 * 100.0f);
                str2 = String.format(Locale.US, "%.2f%%", objArr14);
            } else {
                str2 = "fit-content";
            }
            alignment = bVar.f27636b;
            if (alignment == null) {
                str3 = "start";
                str4 = "center";
                i10 = 1;
                i9 = 2;
            } else {
                i8 = U.f2116a[alignment.ordinal()];
                str3 = "start";
                if (i8 != 1) {
                    i9 = 2;
                    if (i8 != 2) {
                        str4 = "center";
                    } else {
                        str4 = "end";
                    }
                } else {
                    i9 = 2;
                    str4 = str3;
                }
                i10 = 1;
            }
            if (i30 != i10) {
                str5 = "vertical-rl";
            } else if (i30 != i9) {
                str5 = "horizontal-tb";
            } else {
                str5 = "vertical-lr";
            }
            String strB2 = v5.b(bVar.f27648n, bVar.f27649o);
            if (bVar.f27646l) {
                i11 = bVar.f27647m;
            } else {
                i11 = v5.f2120J.f2135c;
            }
            String strT8 = com.bumptech.glide.d.t(i11);
            str6 = "right";
            str7 = "top";
            if (i30 != 1) {
                if (i30 != 2) {
                    str6 = z7 ? "bottom" : "top";
                    str7 = "left";
                } else if (!z7) {
                    str6 = "left";
                }
            } else if (z7) {
                str6 = "left";
            }
            if (i30 != 2) {
                str8 = "height";
                int i33 = i27;
                i27 = i29;
                i29 = i33;
            } else {
                str8 = "height";
                int i34 = i27;
                i27 = i29;
                i29 = i34;
            }
            f9 = getContext().getResources().getDisplayMetrics().density;
            Pattern pattern2 = L.f2077a;
            sb = sb4;
            i0Var = i0.f31862M;
            str9 = ";'>";
            charSequence = bVar.f27635a;
            if (charSequence == null) {
                iVar = new F.i(HttpUrl.FRAGMENT_ENCODE_SET, i0Var);
                str11 = str8;
                str12 = str2;
                str13 = ";'>";
                str14 = str30;
                str15 = str29;
                str10 = HttpUrl.FRAGMENT_ENCODE_SET;
            } else {
                str10 = HttpUrl.FRAGMENT_ENCODE_SET;
                if (charSequence instanceof Spanned) {
                    iVar = new F.i(L.a(charSequence), i0Var);
                    str11 = str8;
                    str12 = str2;
                    str13 = ";'>";
                    str14 = str30;
                    str15 = str29;
                } else {
                    spanned = (Spanned) charSequence;
                    hashSet = new HashSet();
                    backgroundColorSpanArr = (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class);
                    i12 = 0;
                    while (i12 < length) {
                        hashSet.add(Integer.valueOf(backgroundColorSpanArr[i12].getBackgroundColor()));
                        i12++;
                    }
                    map = new HashMap();
                    it = hashSet.iterator();
                    while (it.hasNext()) {
                        int iIntValue2 = ((Integer) it.next()).intValue();
                        String strF2 = p000a.r.f("bg_", iIntValue2);
                        Iterator it5 = it;
                        String str310 = str2;
                        String str311 = str8;
                        String strC2 = A0.O.C(".", strF2, ",.", strF2, " *");
                        String strT9 = com.bumptech.glide.d.t(iIntValue2);
                        String str312 = p117p0.M.f28050a;
                        Locale locale8 = Locale.US;
                        map.put(strC2, str29 + strT9 + str30);
                        it = it5;
                        str2 = str310;
                        str8 = str311;
                    }
                    str11 = str8;
                    str12 = str2;
                    sparseArray = new SparseArray();
                    spans = spanned.getSpans(0, spanned.length(), Object.class);
                    length2 = spans.length;
                    i13 = 0;
                    while (i13 < length2) {
                        obj = spans[i13];
                        Object[] objArr15 = spans;
                        z8 = obj instanceof StrikethroughSpan;
                        String str313 = null;
                        if (z8) {
                            str16 = str30;
                            str17 = str29;
                            i16 = length2;
                            strG = "<span style='text-decoration:line-through;'>";
                        } else {
                            i16 = length2;
                            if (obj instanceof ForegroundColorSpan) {
                                String strT10 = com.bumptech.glide.d.t(((ForegroundColorSpan) obj).getForegroundColor());
                                String str314 = p117p0.M.f28050a;
                                Locale locale9 = Locale.US;
                                str16 = str30;
                                strG = p000a.r.g("<span style='color:", strT10, str9);
                                str17 = str29;
                            } else {
                                str16 = str30;
                                if (obj instanceof BackgroundColorSpan) {
                                    int backgroundColor2 = ((BackgroundColorSpan) obj).getBackgroundColor();
                                    String str315 = p117p0.M.f28050a;
                                    Locale locale10 = Locale.US;
                                    str17 = str29;
                                    strG = A0.O.y("<span class='bg_", backgroundColor2, "'>");
                                } else {
                                    str17 = str29;
                                    if (obj instanceof p110o0.e) {
                                        strG = "<span style='text-combine-upright:all;'>";
                                    } else if (obj instanceof AbsoluteSizeSpan) {
                                        absoluteSizeSpan = (AbsoluteSizeSpan) obj;
                                        if (absoluteSizeSpan.getDip()) {
                                            size = absoluteSizeSpan.getSize();
                                        } else {
                                            size = absoluteSizeSpan.getSize() / f9;
                                        }
                                        Object[] objArr16 = {Float.valueOf(size)};
                                        String str316 = p117p0.M.f28050a;
                                        strG = String.format(Locale.US, "<span style='font-size:%.2fpx;'>", objArr16);
                                    } else if (obj instanceof RelativeSizeSpan) {
                                        Object[] objArr17 = {Float.valueOf(((RelativeSizeSpan) obj).getSizeChange() * 100.0f)};
                                        String str317 = p117p0.M.f28050a;
                                        strG = String.format(Locale.US, "<span style='font-size:%.2f%%;'>", objArr17);
                                    } else if (obj instanceof TypefaceSpan) {
                                        family = ((TypefaceSpan) obj).getFamily();
                                        if (family != null) {
                                            String str318 = p117p0.M.f28050a;
                                            Locale locale11 = Locale.US;
                                            strG = p000a.r.g("<span style='font-family:\"", family, "\";'>");
                                        } else {
                                            strG = null;
                                        }
                                    } else if (obj instanceof StyleSpan) {
                                        style = ((StyleSpan) obj).getStyle();
                                        if (style != 1) {
                                            strG = "<b>";
                                        } else if (style != 2) {
                                            strG = "<i>";
                                        } else if (style != 3) {
                                            strG = null;
                                        } else {
                                            strG = "<b><i>";
                                        }
                                    } else if (obj instanceof p110o0.g) {
                                        i20 = ((p110o0.g) obj).f27664b;
                                        if (i20 != -1) {
                                            strG = "<ruby style='ruby-position:unset;'>";
                                        } else if (i20 != 1) {
                                            strG = "<ruby style='ruby-position:over;'>";
                                        } else if (i20 != 2) {
                                            strG = null;
                                        } else {
                                            strG = "<ruby style='ruby-position:under;'>";
                                        }
                                    } else if (obj instanceof UnderlineSpan) {
                                        strG = "<u>";
                                    } else if (obj instanceof p110o0.h) {
                                        hVar = (p110o0.h) obj;
                                        i17 = hVar.f27668a;
                                        sb3 = new StringBuilder();
                                        i18 = hVar.f27669b;
                                        if (i18 != 1) {
                                            i19 = 2;
                                            if (i18 == 2) {
                                                sb3.append("open ");
                                            }
                                        } else {
                                            i19 = 2;
                                            sb3.append("filled ");
                                        }
                                        if (i17 != 0) {
                                            sb3.append("none");
                                        } else if (i17 != 1) {
                                            sb3.append("circle");
                                        } else if (i17 != i19) {
                                            sb3.append("dot");
                                        } else if (i17 != 3) {
                                            sb3.append("unset");
                                        } else {
                                            sb3.append("sesame");
                                        }
                                        String string2 = sb3.toString();
                                        if (hVar.f27670c != 2) {
                                            str18 = "over right";
                                        } else {
                                            str18 = "under left";
                                        }
                                        Object[] objArr18 = {string2, str18};
                                        String str43 = p117p0.M.f28050a;
                                        strG = String.format(Locale.US, "<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", objArr18);
                                    } else {
                                        strG = null;
                                    }
                                }
                            }
                        }
                        if (z8) {
                            str19 = "</span>";
                        } else {
                            str19 = "</span>";
                        }
                        spanStart = spanned.getSpanStart(obj);
                        spanEnd = spanned.getSpanEnd(obj);
                        if (strG != null) {
                            str19.getClass();
                            J j9 = new J(spanStart, spanEnd, strG, str19);
                            k8 = (K) sparseArray.get(spanStart);
                            if (k8 == null) {
                                k8 = new K();
                                sparseArray.put(spanStart, k8);
                            }
                            k8.f2075a.add(j9);
                            k9 = (K) sparseArray.get(spanEnd);
                            if (k9 == null) {
                                k9 = new K();
                                sparseArray.put(spanEnd, k9);
                            }
                            k9.f2076b.add(j9);
                        }
                        i13++;
                        spans = objArr15;
                        length2 = i16;
                        str30 = str16;
                        str29 = str17;
                        f9 = f9;
                        str9 = str9;
                    }
                    str13 = str9;
                    str14 = str30;
                    str15 = str29;
                    sb2 = new StringBuilder(spanned.length());
                    i14 = 0;
                    i15 = 0;
                    while (i14 < sparseArray.size()) {
                        int iKeyAt2 = sparseArray.keyAt(i14);
                        sb2.append(L.a(spanned.subSequence(i15, iKeyAt2)));
                        K k11 = (K) sparseArray.get(iKeyAt2);
                        Collections.sort(k11.f2076b, J.f2070f);
                        it2 = k11.f2076b.iterator();
                        while (it2.hasNext()) {
                            sb2.append(((J) it2.next()).f2074d);
                        }
                        ArrayList arrayList2 = k11.f2075a;
                        Collections.sort(arrayList2, J.f2069e);
                        it3 = arrayList2.iterator();
                        while (it3.hasNext()) {
                            sb2.append(((J) it3.next()).f2073c);
                        }
                        i14++;
                        i15 = iKeyAt2;
                    }
                    sb2.append(L.a(spanned.subSequence(i15, spanned.length())));
                    iVar = new F.i(sb2.toString(), map);
                }
            }
            obj2 = iVar.f2977H;
            while (r1.hasNext()) {
                str23 = (String) map2.put(str41, (String) map2.get(str41));
                if (str23 != null) {
                    z9 = true;
                } else {
                    z9 = true;
                }
                H1.i(z9);
            }
            Object[] objArr19 = new Object[14];
            objArr19[0] = Integer.valueOf(i26);
            objArr19[1] = str7;
            objArr19[2] = Float.valueOf(f12);
            objArr19[3] = str6;
            objArr19[4] = str;
            objArr19[5] = str11;
            objArr19[6] = str12;
            objArr19[7] = str4;
            objArr19[8] = str5;
            objArr19[9] = strB2;
            objArr19[10] = strT8;
            objArr19[11] = Integer.valueOf(i29);
            objArr19[12] = Integer.valueOf(i27);
            f10 = bVar.f27651q;
            if (f10 != 0.0f) {
                if (i30 != 2) {
                    str22 = "skewY";
                } else {
                    str22 = "skewY";
                }
                Object[] objArr110 = {str22, Float.valueOf(f10)};
                String str44 = p117p0.M.f28050a;
                str20 = String.format(Locale.US, "%s(%.2fdeg)", objArr110);
            } else {
                str20 = str10;
            }
            objArr19[13] = str20;
            sb.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", objArr19));
            sb.append("<span class='default_bg'>");
            alignment2 = bVar.f27637c;
            if (alignment2 != null) {
                i21 = U.f2116a[alignment2.ordinal()];
                if (i21 != 1) {
                    str21 = str3;
                } else if (i21 != 2) {
                    str21 = "center";
                } else {
                    str21 = "end";
                }
                sb.append("<span style='display:inline-block; text-align:" + str21 + str13);
                sb.append((String) obj2);
                sb.append("</span>");
            } else {
                sb.append((String) obj2);
            }
            sb.append("</span></div>");
            i26++;
            i22 = 1;
            i23 = 2;
            v5 = this;
            sb4 = sb;
            str30 = str14;
            str29 = str15;
            c8 = 0;
        }
        StringBuilder sb6 = sb4;
        sb6.append("</div></body></html>");
        StringBuilder sb7 = new StringBuilder();
        sb7.append("<html><head><style>");
        for (String str45 : map2.keySet()) {
            sb7.append(str45);
            sb7.append("{");
            sb7.append((String) map2.get(str45));
            sb7.append("}");
        }
        sb7.append("</style></head>");
        sb6.insert(0, (CharSequence) sb7);
        this.f2118H.loadData(Base64.encodeToString(sb6.toString().getBytes(StandardCharsets.UTF_8), 1), "text/html", "base64");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        super.onLayout(z7, i8, i9, i10, i11);
        if (!z7 || this.f2119I.isEmpty()) {
            return;
        }
        c();
    }
}
