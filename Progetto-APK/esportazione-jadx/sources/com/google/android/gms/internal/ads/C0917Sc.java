package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Sc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0917Sc implements InterfaceC2165vz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16439b;

    public /* synthetic */ C0917Sc(Object obj, int i8) {
        this.f16438a = i8;
        this.f16439b = obj;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2165vz
    public final Object apply(Object obj) {
        String str;
        boolean z7;
        String strB;
        float f8;
        int i8;
        int i9;
        int i10;
        DisplayMetrics displayMetrics;
        int i11 = this.f16438a;
        int i12 = 0;
        int i13 = -1;
        String str2 = null;
        Object obj2 = this.f16439b;
        switch (i11) {
            case 0:
                C0931Tc c0931Tc = (C0931Tc) obj2;
                JSONObject jSONObject = (JSONObject) obj;
                c0931Tc.getClass();
                J7 j8 = Q7.f15777a;
                C3099q c3099q = C3099q.f26624d;
                C1561kH c1561kH = c3099q.f26626b;
                SharedPreferences sharedPreferencesD = C1561kH.d(c0931Tc.f16680m);
                if (sharedPreferencesD != null) {
                    SharedPreferences.Editor editorEdit = sharedPreferencesD.edit();
                    for (K7 k8 : c3099q.f26625a.f3091a) {
                        if (k8.f14303a == 1) {
                            Object objA = k8.a(jSONObject);
                            J7 j9 = (J7) k8;
                            int i14 = j9.f14125e;
                            String str3 = j9.f14304b;
                            switch (i14) {
                                case 0:
                                    editorEdit.putBoolean(str3, ((Boolean) objA).booleanValue());
                                    break;
                                case 1:
                                    editorEdit.putInt(str3, ((Integer) objA).intValue());
                                    break;
                                case 2:
                                    editorEdit.putLong(str3, ((Long) objA).longValue());
                                    break;
                                case 3:
                                    editorEdit.putFloat(str3, ((Float) objA).floatValue());
                                    break;
                                default:
                                    editorEdit.putString(str3, (String) objA);
                                    break;
                            }
                        }
                    }
                    if (jSONObject != null) {
                        editorEdit.putString("flag_configuration", jSONObject.toString());
                    } else {
                        p120p3.h.d("Flag Json is null.");
                    }
                    C1561kH c1561kH2 = C3099q.f26624d.f26626b;
                    editorEdit.commit();
                    SharedPreferences sharedPreferences = c0931Tc.f16681n;
                    if (sharedPreferences != null) {
                        SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
                        p083k3.l.f25980A.f25990j.getClass();
                        editorEdit2.putLong("js_last_update", System.currentTimeMillis()).apply();
                    }
                }
                return null;
            case 1:
                C0941Tm c0941Tm = (C0941Tm) obj2;
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj;
                interfaceC0715Ef.L0("/result", c0941Tm.f16733h);
                AbstractC0990Xf abstractC0990XfZzN = interfaceC0715Ef.zzN();
                p083k3.b bVar = new p083k3.b(c0941Tm.f16728c, null);
                C0842Mm c0842Mm = c0941Tm.f16726a;
                abstractC0990XfZzN.y(null, c0842Mm, c0842Mm, c0842Mm, c0842Mm, false, null, bVar, null, null, c0941Tm.f16734i, c0941Tm.f16735j, c0941Tm.f16729d, null, null, null, null, null, null);
                return interfaceC0715Ef;
            case 2:
                Ip ip = (Ip) obj2;
                Mp.a(ip.f14052c, (JSONObject) obj);
                return ip;
            case 3:
                return ((C0746Gg) obj2).G0();
            case 4:
                Gs gs = (Gs) obj2;
                Yv yv = gs.f13647b;
                p090l3.d1 d1Var = yv.f17678e;
                p090l3.d1[] d1VarArr = d1Var.f26554M;
                if (d1VarArr == null) {
                    String str4 = d1Var.f26548G;
                    z7 = d1Var.f26556O;
                    str = str4;
                } else {
                    String str5 = null;
                    boolean z8 = false;
                    boolean z9 = false;
                    boolean z10 = false;
                    for (p090l3.d1 d1Var2 : d1VarArr) {
                        boolean z11 = d1Var2.f26556O;
                        if (!z11 && !z8) {
                            str5 = d1Var2.f26548G;
                            z8 = true;
                        }
                        if (z11) {
                            if (z9) {
                                z9 = true;
                            } else {
                                z9 = true;
                                z10 = true;
                            }
                        }
                        if (z8 && z9) {
                            str = str5;
                            z7 = z10;
                        }
                    }
                    str = str5;
                    z7 = z10;
                }
                Resources resources = gs.f13648c.getResources();
                if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
                    strB = null;
                    f8 = 0.0f;
                    i8 = 0;
                    i9 = 0;
                } else {
                    float f9 = displayMetrics.density;
                    int i15 = displayMetrics.widthPixels;
                    int i16 = displayMetrics.heightPixels;
                    strB = gs.f13649d.d().B();
                    i9 = i16;
                    i8 = i15;
                    f8 = f9;
                }
                StringBuilder sb = new StringBuilder();
                p090l3.d1[] d1VarArr2 = d1Var.f26554M;
                if (d1VarArr2 != null) {
                    boolean z12 = false;
                    for (p090l3.d1 d1Var3 : d1VarArr2) {
                        if (d1Var3.f26556O) {
                            z12 = true;
                        } else {
                            if (sb.length() != 0) {
                                sb.append("|");
                            }
                            int i17 = d1Var3.f26552K;
                            if (i17 == -1) {
                                i17 = f8 != 0.0f ? (int) (d1Var3.f26553L / f8) : -1;
                            }
                            sb.append(i17);
                            sb.append("x");
                            int i18 = -2;
                            int i19 = d1Var3.f26549H;
                            if (i19 != -2) {
                                i18 = i19;
                            } else if (f8 != 0.0f) {
                                i18 = (int) (d1Var3.f26550I / f8);
                            }
                            sb.append(i18);
                        }
                    }
                    if (z12) {
                        if (sb.length() != 0) {
                            i10 = 0;
                            sb.insert(0, "|");
                        } else {
                            i10 = 0;
                        }
                        sb.insert(i10, "320x50");
                    }
                }
                return new Hs(d1Var, str, z7, sb.toString(), f8, i8, i9, strB, yv.f17690q);
            case 5:
                ((Ws) obj2).f17332a.i("AppSetIdInfoSignal", (Exception) obj);
                return new Xs(str2, i13, i12);
            case 6:
                ((C1625le) ((Fs) obj2).f13432c).i("AppSetIdInfoGmscoreSignal", (Exception) obj);
                return new Xs(str2, i13, 2);
            case 7:
                ((C1625le) ((Fs) obj2).f13432c).i("AttestationTokenSignal", (Exception) obj);
                return null;
            case 8:
                ((Wu) obj2).f17338a.i("TrustlessTokenSignal", (Exception) obj);
                return null;
            default:
                C1851pw c1851pw = (C1851pw) obj2;
                c1851pw.f20505c = (AbstractC2252xi) obj;
                return c1851pw;
        }
    }
}
