package C0;

import O0.Z;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import com.google.android.gms.internal.measurement.H1;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.regex.Pattern;
import p094m0.C3139w;
import p094m0.g0;
import p117p0.InterfaceC3168f;
import z4.C3253q;
import z4.C3260y;

/* JADX INFO: renamed from: C0.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0083h implements p117p0.u, p190y4.h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1302G;

    public /* synthetic */ C0083h(int i8) {
        this.f1302G = i8;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0324  */
    /* JADX WARN: Code duplicated, block: B:103:0x032b  */
    /* JADX WARN: Code duplicated, block: B:106:0x0338  */
    /* JADX WARN: Code duplicated, block: B:107:0x033b  */
    /* JADX WARN: Code duplicated, block: B:110:0x0345  */
    /* JADX WARN: Code duplicated, block: B:111:0x034c  */
    /* JADX WARN: Code duplicated, block: B:114:0x0356  */
    /* JADX WARN: Code duplicated, block: B:115:0x035d  */
    /* JADX WARN: Code duplicated, block: B:118:0x0368  */
    /* JADX WARN: Code duplicated, block: B:119:0x036f  */
    /* JADX WARN: Code duplicated, block: B:70:0x0288  */
    /* JADX WARN: Code duplicated, block: B:72:0x0290  */
    /* JADX WARN: Code duplicated, block: B:73:0x029d  */
    /* JADX WARN: Code duplicated, block: B:76:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:77:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:80:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:81:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:84:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:85:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:88:0x02de  */
    /* JADX WARN: Code duplicated, block: B:90:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:91:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:94:0x0300  */
    /* JADX WARN: Code duplicated, block: B:95:0x0307  */
    /* JADX WARN: Code duplicated, block: B:98:0x0312  */
    /* JADX WARN: Code duplicated, block: B:99:0x0319  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v40, types: [android.text.Spannable, android.text.SpannableString] */
    @Override // p190y4.h
    public Object apply(Object obj) {
        ?? r13;
        Bitmap bitmapDecodeByteArray;
        String str;
        float f8;
        int i8;
        String str2;
        int i9;
        String str3;
        float f9;
        String str4;
        int i10;
        String str5;
        int i11;
        float f10;
        String str6;
        float f11;
        String str7;
        float f12;
        String str8;
        int i12;
        boolean z7;
        String str9;
        int i13;
        String str10;
        float f13;
        String str11;
        int i14;
        String str12;
        String str13;
        int i15 = 3;
        int i16 = 2;
        boolean z8 = true;
        switch (this.f1302G) {
            case 0:
                C3139w c3139w = (C3139w) obj;
                return c3139w.f27060a + ": " + c3139w.f27061b;
            case 1:
                C3253q c3253q = p110o0.c.f27653b;
                return Integer.valueOf(((p110o0.b) obj).f27652r);
            case 2:
                return new A((InterfaceC3168f) obj);
            case 3:
            default:
                C3253q c3253q2 = p126q1.b.f29535I;
                long j8 = ((p126q1.a) obj).f29532b;
                if (j8 == -9223372036854775807L) {
                    j8 = 0;
                }
                return Long.valueOf(j8);
            case 4:
                Pattern pattern = E0.d.f2449g0;
                return z4.H.x(Integer.valueOf(((P0.m) obj).f5736G));
            case 5:
                H0.t tVar = (H0.t) obj;
                tVar.f();
                return z4.H.s(p113o3.r.i(new C0083h(7), tVar.f3597o0.f5183b));
            case 6:
                return ((W0.s) obj).b().getClass().getSimpleName();
            case 7:
                Z z9 = Z.f5181d;
                return Integer.valueOf(((g0) obj).f26859c);
            case 8:
                C3260y c3260y = Q0.c.f6007b;
                return Long.valueOf(((p126q1.a) obj).f29532b);
            case 9:
                C3260y c3260y2 = Q0.c.f6007b;
                return Long.valueOf(((p126q1.a) obj).f29533c);
            case 10:
                return (p111o1.p) obj;
            case 11:
                Bundle bundle = (Bundle) obj;
                ?? charSequence = bundle.getCharSequence(p110o0.b.f27627s);
                if (charSequence != 0) {
                    ArrayList<Bundle> parcelableArrayList = bundle.getParcelableArrayList(p110o0.b.f27628t);
                    if (parcelableArrayList != null) {
                        charSequence = SpannableString.valueOf(charSequence);
                        for (Bundle bundle2 : parcelableArrayList) {
                            int i17 = bundle2.getInt(p110o0.d.f27656a);
                            int i18 = bundle2.getInt(p110o0.d.f27657b);
                            int i19 = bundle2.getInt(p110o0.d.f27658c);
                            int i20 = bundle2.getInt(p110o0.d.f27659d, -1);
                            Bundle bundle3 = bundle2.getBundle(p110o0.d.f27660e);
                            if (i20 == 1) {
                                bundle3.getClass();
                                String string = bundle3.getString(p110o0.g.f27661c);
                                string.getClass();
                                charSequence.setSpan(new p110o0.g(string, bundle3.getInt(p110o0.g.f27662d)), i17, i18, i19);
                            } else if (i20 == i16) {
                                bundle3.getClass();
                                charSequence.setSpan(new p110o0.h(bundle3.getInt(p110o0.h.f27665d), bundle3.getInt(p110o0.h.f27666e), bundle3.getInt(p110o0.h.f27667f)), i17, i18, i19);
                            } else if (i20 == i15) {
                                charSequence.setSpan(new p110o0.e(), i17, i18, i19);
                            } else if (i20 == 4) {
                                bundle3.getClass();
                                String string2 = bundle3.getString(p110o0.i.f27671b);
                                string2.getClass();
                                charSequence.setSpan(new p110o0.i(string2), i17, i18, i19);
                            }
                            i15 = 3;
                            i16 = 2;
                        }
                    }
                } else {
                    charSequence = 0;
                }
                Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(p110o0.b.f27629u);
                Layout.Alignment alignment2 = alignment != null ? alignment : null;
                Layout.Alignment alignment3 = (Layout.Alignment) bundle.getSerializable(p110o0.b.f27630v);
                Layout.Alignment alignment4 = alignment3 != null ? alignment3 : null;
                Bitmap bitmap = (Bitmap) bundle.getParcelable(p110o0.b.f27631w);
                if (bitmap == null) {
                    byte[] byteArray = bundle.getByteArray(p110o0.b.f27632x);
                    if (byteArray != null) {
                        bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
                    } else {
                        r13 = charSequence;
                        bitmapDecodeByteArray = null;
                    }
                    str = p110o0.b.f27633y;
                    if (bundle.containsKey(str)) {
                        str13 = p110o0.b.f27634z;
                        if (bundle.containsKey(str13)) {
                            f8 = bundle.getFloat(str);
                            i8 = bundle.getInt(str13);
                        } else {
                            f8 = -3.4028235E38f;
                            i8 = Integer.MIN_VALUE;
                        }
                    } else {
                        f8 = -3.4028235E38f;
                        i8 = Integer.MIN_VALUE;
                    }
                    str2 = p110o0.b.f27615A;
                    if (bundle.containsKey(str2)) {
                        i9 = bundle.getInt(str2);
                    } else {
                        i9 = Integer.MIN_VALUE;
                    }
                    str3 = p110o0.b.f27616B;
                    if (bundle.containsKey(str3)) {
                        f9 = bundle.getFloat(str3);
                    } else {
                        f9 = -3.4028235E38f;
                    }
                    str4 = p110o0.b.f27617C;
                    if (bundle.containsKey(str4)) {
                        i10 = bundle.getInt(str4);
                    } else {
                        i10 = Integer.MIN_VALUE;
                    }
                    str5 = p110o0.b.f27619E;
                    if (bundle.containsKey(str5)) {
                        str12 = p110o0.b.f27618D;
                        if (bundle.containsKey(str12)) {
                            f10 = bundle.getFloat(str5);
                            i11 = bundle.getInt(str12);
                        } else {
                            i11 = Integer.MIN_VALUE;
                            f10 = -3.4028235E38f;
                        }
                    } else {
                        i11 = Integer.MIN_VALUE;
                        f10 = -3.4028235E38f;
                    }
                    str6 = p110o0.b.f27620F;
                    if (bundle.containsKey(str6)) {
                        f11 = bundle.getFloat(str6);
                    } else {
                        f11 = -3.4028235E38f;
                    }
                    str7 = p110o0.b.f27621G;
                    if (bundle.containsKey(str7)) {
                        f12 = bundle.getFloat(str7);
                    } else {
                        f12 = -3.4028235E38f;
                    }
                    str8 = p110o0.b.f27622H;
                    if (bundle.containsKey(str8)) {
                        i12 = bundle.getInt(str8);
                    } else {
                        z8 = false;
                        i12 = -16777216;
                    }
                    if (bundle.getBoolean(p110o0.b.f27623I, false)) {
                        z7 = z8;
                    } else {
                        z7 = false;
                    }
                    str9 = p110o0.b.f27624J;
                    if (bundle.containsKey(str9)) {
                        i13 = bundle.getInt(str9);
                    } else {
                        i13 = Integer.MIN_VALUE;
                    }
                    str10 = p110o0.b.f27625K;
                    if (bundle.containsKey(str10)) {
                        f13 = bundle.getFloat(str10);
                    } else {
                        f13 = 0.0f;
                    }
                    str11 = p110o0.b.f27626L;
                    if (bundle.containsKey(str11)) {
                        i14 = bundle.getInt(str11);
                    } else {
                        i14 = 0;
                    }
                    return new p110o0.b(r13, alignment2, alignment4, bitmapDecodeByteArray, f8, i8, i9, f9, i10, i11, f10, f11, f12, z7, i12, i13, f13, i14);
                }
                bitmapDecodeByteArray = bitmap;
                r13 = 0;
                str = p110o0.b.f27633y;
                if (bundle.containsKey(str)) {
                    str13 = p110o0.b.f27634z;
                    if (bundle.containsKey(str13)) {
                        f8 = bundle.getFloat(str);
                        i8 = bundle.getInt(str13);
                    } else {
                        f8 = -3.4028235E38f;
                        i8 = Integer.MIN_VALUE;
                    }
                } else {
                    f8 = -3.4028235E38f;
                    i8 = Integer.MIN_VALUE;
                }
                str2 = p110o0.b.f27615A;
                if (bundle.containsKey(str2)) {
                    i9 = bundle.getInt(str2);
                } else {
                    i9 = Integer.MIN_VALUE;
                }
                str3 = p110o0.b.f27616B;
                if (bundle.containsKey(str3)) {
                    f9 = bundle.getFloat(str3);
                } else {
                    f9 = -3.4028235E38f;
                }
                str4 = p110o0.b.f27617C;
                if (bundle.containsKey(str4)) {
                    i10 = bundle.getInt(str4);
                } else {
                    i10 = Integer.MIN_VALUE;
                }
                str5 = p110o0.b.f27619E;
                if (bundle.containsKey(str5)) {
                    str12 = p110o0.b.f27618D;
                    if (bundle.containsKey(str12)) {
                        f10 = bundle.getFloat(str5);
                        i11 = bundle.getInt(str12);
                    } else {
                        i11 = Integer.MIN_VALUE;
                        f10 = -3.4028235E38f;
                    }
                } else {
                    i11 = Integer.MIN_VALUE;
                    f10 = -3.4028235E38f;
                }
                str6 = p110o0.b.f27620F;
                if (bundle.containsKey(str6)) {
                    f11 = bundle.getFloat(str6);
                } else {
                    f11 = -3.4028235E38f;
                }
                str7 = p110o0.b.f27621G;
                if (bundle.containsKey(str7)) {
                    f12 = bundle.getFloat(str7);
                } else {
                    f12 = -3.4028235E38f;
                }
                str8 = p110o0.b.f27622H;
                if (bundle.containsKey(str8)) {
                    i12 = bundle.getInt(str8);
                } else {
                    z8 = false;
                    i12 = -16777216;
                }
                if (bundle.getBoolean(p110o0.b.f27623I, false)) {
                    z7 = false;
                } else {
                    z7 = z8;
                }
                str9 = p110o0.b.f27624J;
                if (bundle.containsKey(str9)) {
                    i13 = bundle.getInt(str9);
                } else {
                    i13 = Integer.MIN_VALUE;
                }
                str10 = p110o0.b.f27625K;
                if (bundle.containsKey(str10)) {
                    f13 = bundle.getFloat(str10);
                } else {
                    f13 = 0.0f;
                }
                str11 = p110o0.b.f27626L;
                if (bundle.containsKey(str11)) {
                    i14 = bundle.getInt(str11);
                } else {
                    i14 = 0;
                }
                return new p110o0.b(r13, alignment2, alignment4, bitmapDecodeByteArray, f8, i8, i9, f9, i10, i11, f10, f11, f12, z7, i12, i13, f13, i14);
            case 12:
                p110o0.b bVar = (p110o0.b) obj;
                bVar.getClass();
                Bundle bundle4 = new Bundle();
                CharSequence charSequence2 = bVar.f27635a;
                if (charSequence2 != null) {
                    bundle4.putCharSequence(p110o0.b.f27627s, charSequence2);
                    if (charSequence2 instanceof Spanned) {
                        Spanned spanned = (Spanned) charSequence2;
                        String str14 = p110o0.d.f27656a;
                        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                        for (p110o0.g gVar : (p110o0.g[]) spanned.getSpans(0, spanned.length(), p110o0.g.class)) {
                            gVar.getClass();
                            Bundle bundle5 = new Bundle();
                            bundle5.putString(p110o0.g.f27661c, gVar.f27663a);
                            bundle5.putInt(p110o0.g.f27662d, gVar.f27664b);
                            arrayList.add(p110o0.d.a(spanned, gVar, 1, bundle5));
                        }
                        for (p110o0.h hVar : (p110o0.h[]) spanned.getSpans(0, spanned.length(), p110o0.h.class)) {
                            hVar.getClass();
                            Bundle bundle6 = new Bundle();
                            bundle6.putInt(p110o0.h.f27665d, hVar.f27668a);
                            bundle6.putInt(p110o0.h.f27666e, hVar.f27669b);
                            bundle6.putInt(p110o0.h.f27667f, hVar.f27670c);
                            arrayList.add(p110o0.d.a(spanned, hVar, 2, bundle6));
                        }
                        for (p110o0.e eVar : (p110o0.e[]) spanned.getSpans(0, spanned.length(), p110o0.e.class)) {
                            arrayList.add(p110o0.d.a(spanned, eVar, 3, null));
                        }
                        for (p110o0.i iVar : (p110o0.i[]) spanned.getSpans(0, spanned.length(), p110o0.i.class)) {
                            iVar.getClass();
                            Bundle bundle7 = new Bundle();
                            bundle7.putString(p110o0.i.f27671b, iVar.f27672a);
                            arrayList.add(p110o0.d.a(spanned, iVar, 4, bundle7));
                        }
                        if (!arrayList.isEmpty()) {
                            bundle4.putParcelableArrayList(p110o0.b.f27628t, arrayList);
                        }
                    }
                }
                bundle4.putSerializable(p110o0.b.f27629u, bVar.f27636b);
                bundle4.putSerializable(p110o0.b.f27630v, bVar.f27637c);
                bundle4.putFloat(p110o0.b.f27633y, bVar.f27639e);
                bundle4.putInt(p110o0.b.f27634z, bVar.f27640f);
                bundle4.putInt(p110o0.b.f27615A, bVar.f27641g);
                bundle4.putFloat(p110o0.b.f27616B, bVar.f27642h);
                bundle4.putInt(p110o0.b.f27617C, bVar.f27643i);
                bundle4.putInt(p110o0.b.f27618D, bVar.f27648n);
                bundle4.putFloat(p110o0.b.f27619E, bVar.f27649o);
                bundle4.putFloat(p110o0.b.f27620F, bVar.f27644j);
                bundle4.putFloat(p110o0.b.f27621G, bVar.f27645k);
                bundle4.putBoolean(p110o0.b.f27623I, bVar.f27646l);
                bundle4.putInt(p110o0.b.f27622H, bVar.f27647m);
                bundle4.putInt(p110o0.b.f27624J, bVar.f27650p);
                bundle4.putFloat(p110o0.b.f27625K, bVar.f27651q);
                bundle4.putInt(p110o0.b.f27626L, bVar.f27652r);
                Bitmap bitmap2 = bVar.f27638d;
                if (bitmap2 != null) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    H1.i(bitmap2.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream));
                    bundle4.putByteArray(p110o0.b.f27632x, byteArrayOutputStream.toByteArray());
                }
                return bundle4;
        }
    }

    @Override // p117p0.u
    public void invoke(Object obj) {
        InterfaceC0078c interfaceC0078c = (InterfaceC0078c) obj;
        switch (this.f1302G) {
            case 0:
                interfaceC0078c.getClass();
                break;
            default:
                interfaceC0078c.getClass();
                break;
        }
    }
}
