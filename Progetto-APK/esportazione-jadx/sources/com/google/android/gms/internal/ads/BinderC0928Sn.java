package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.JsonReader;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Sn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0928Sn extends AbstractBinderC2328z5 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0821Lg f16523G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0900Qn f16524H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final HashMap f16525I;

    public BinderC0928Sn(C0821Lg c0821Lg, C0900Qn c0900Qn) {
        super("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
        this.f16525I = new HashMap();
        this.f16523G = c0821Lg;
        this.f16524H = c0900Qn;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:36:0x00cd  */
    public static p090l3.b1 z3(HashMap map) {
        int i8;
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        ArrayList arrayList = new ArrayList();
        Bundle bundle3 = new Bundle();
        Bundle bundle4 = new Bundle();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        String str = (String) map.get("ad_request");
        boolean zNextBoolean = false;
        int i9 = -1;
        String str2 = null;
        int iNextInt = 60000;
        if (str == null) {
            return new p090l3.b1(8, -1L, bundle2, -1, arrayList, false, -1, false, null, null, null, null, bundle3, bundle4, arrayList2, null, null, false, null, -1, null, arrayList3, 60000, null, 0, 0L);
        }
        JsonReader jsonReader = new JsonReader(new StringReader(Uri.decode(str)));
        try {
            jsonReader.beginObject();
            i8 = -1;
            while (jsonReader.hasNext()) {
                try {
                    switch (jsonReader.nextName()) {
                        case "extras":
                            jsonReader.beginObject();
                            Bundle bundle5 = new Bundle();
                            while (jsonReader.hasNext()) {
                                bundle5.putString(jsonReader.nextName(), jsonReader.nextString());
                            }
                            jsonReader.endObject();
                            bundle2 = bundle5;
                            break;
                        case "keywords":
                            jsonReader.beginArray();
                            ArrayList arrayList4 = new ArrayList();
                            while (jsonReader.hasNext()) {
                                arrayList4.add(jsonReader.nextString());
                            }
                            jsonReader.endArray();
                            arrayList = arrayList4;
                            break;
                        case "isTestDevice":
                            zNextBoolean = jsonReader.nextBoolean();
                            break;
                        case "tagForChildDirectedTreatment":
                            if (!jsonReader.nextBoolean()) {
                                i9 = 0;
                                break;
                            } else {
                                i9 = 1;
                                break;
                            }
                            break;
                        case "tagForUnderAgeOfConsent":
                            if (!jsonReader.nextBoolean()) {
                                i8 = 0;
                                break;
                            } else {
                                i8 = 1;
                                break;
                            }
                            break;
                        case "maxAdContentRating":
                            String strNextString = jsonReader.nextString();
                            if (!p043f3.o.f25189f.contains(strNextString)) {
                                break;
                            } else {
                                str2 = strNextString;
                                break;
                            }
                            break;
                        case "httpTimeoutMillis":
                            iNextInt = jsonReader.nextInt();
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                } catch (IOException unused) {
                    p120p3.h.b("Ad Request json was malformed, parsing ended early.");
                }
            }
            jsonReader.endObject();
        } catch (IOException unused2) {
            i8 = -1;
        }
        int i10 = i8;
        ArrayList arrayList5 = arrayList;
        boolean z7 = zNextBoolean;
        String str3 = str2;
        int i11 = iNextInt;
        Bundle bundle6 = bundle3.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle6 == null) {
            bundle3.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundle2);
            bundle = bundle2;
        } else {
            bundle = bundle6;
        }
        return new p090l3.b1(8, -1L, bundle, -1, arrayList5, z7, i9, false, null, null, null, null, bundle3, bundle4, arrayList2, null, null, false, null, i10, str3, arrayList3, i11, null, 0, 0L);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:24:0x0081  */
    /* JADX WARN: Code duplicated, block: B:54:0x00e4  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        byte b8;
        HashMap map = this.f16525I;
        byte b9 = 0;
        if (i8 == 1) {
            String string = parcel.readString();
            A5.b(parcel);
            J7 j8 = Q7.k9;
            C3099q c3099q = C3099q.f26624d;
            if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                p113o3.I.k("Received H5 gmsg: ".concat(String.valueOf(string)));
                Uri uri = Uri.parse(string);
                p113o3.O o4 = p083k3.l.f25980A.f25983c;
                HashMap mapL = p113o3.O.l(uri);
                String str = (String) mapL.get("action");
                if (TextUtils.isEmpty(str)) {
                    p120p3.h.b("H5 gmsg did not contain an action");
                } else {
                    int iHashCode = str.hashCode();
                    if (iHashCode != 579053441) {
                        if (iHashCode == 871091088 && str.equals("initialize")) {
                            b8 = 0;
                        } else {
                            b8 = -1;
                        }
                    } else if (str.equals("dispose_all")) {
                        b8 = 1;
                    } else {
                        b8 = -1;
                    }
                    C0900Qn c0900Qn = this.f16524H;
                    if (b8 == 0) {
                        map.clear();
                        c0900Qn.getClass();
                        c0900Qn.b(new C1950rs("initialize"));
                    } else if (b8 != 1) {
                        String str2 = (String) mapL.get("obj_id");
                        try {
                            Objects.requireNonNull(str2);
                            long j9 = Long.parseLong(str2);
                            switch (str.hashCode()) {
                                case -1790951212:
                                    if (!str.equals("show_interstitial_ad")) {
                                        b9 = -1;
                                    } else {
                                        b9 = 2;
                                    }
                                    break;
                                case -1266374734:
                                    if (!str.equals("show_rewarded_ad")) {
                                        b9 = -1;
                                    } else {
                                        b9 = 5;
                                    }
                                    break;
                                case -257098725:
                                    if (!str.equals("load_rewarded_ad")) {
                                        b9 = -1;
                                    } else {
                                        b9 = 4;
                                    }
                                    break;
                                case 393881811:
                                    if (!str.equals("create_interstitial_ad")) {
                                        b9 = -1;
                                    }
                                    break;
                                case 585513149:
                                    if (!str.equals("load_interstitial_ad")) {
                                        b9 = -1;
                                    } else {
                                        b9 = 1;
                                    }
                                    break;
                                case 1671767583:
                                    if (!str.equals("dispose")) {
                                        b9 = -1;
                                    } else {
                                        b9 = 6;
                                    }
                                    break;
                                case 2109237041:
                                    if (!str.equals("create_rewarded_ad")) {
                                        b9 = -1;
                                    } else {
                                        b9 = 3;
                                    }
                                    break;
                                default:
                                    b9 = -1;
                                    break;
                            }
                            O7 o7 = c3099q.f26627c;
                            C0821Lg c0821Lg = this.f16523G;
                            switch (b9) {
                                case 0:
                                    if (map.size() < ((Integer) o7.a(Q7.l9)).intValue()) {
                                        Long lValueOf = Long.valueOf(j9);
                                        if (!map.containsKey(lValueOf)) {
                                            String str3 = (String) mapL.get("ad_unit");
                                            if (!TextUtils.isEmpty(str3)) {
                                                C0821Lg c0821Lg2 = c0821Lg.f14528d;
                                                Long lValueOf2 = Long.valueOf(j9);
                                                str3.getClass();
                                                C0806Kg c0806Kg = new C0806Kg(c0821Lg.f14527c, c0821Lg2, lValueOf2, str3);
                                                long jLongValue = c0806Kg.f14387a.longValue();
                                                C0821Lg c0821Lg3 = c0806Kg.f14390d;
                                                map.put(lValueOf, new C0956Un(jLongValue, c0821Lg3.f14525a, new C0900Qn(c0821Lg3.f14526b), c0806Kg.f14389c, c0806Kg.f14388b));
                                                c0900Qn.getClass();
                                                C1950rs c1950rs = new C1950rs("creation");
                                                c1950rs.f20796H = Long.valueOf(j9);
                                                c1950rs.f20795G = "nativeObjectCreated";
                                                c0900Qn.b(c1950rs);
                                                p113o3.I.k("Created H5 interstitial #" + j9 + " with ad unit " + str3);
                                            } else {
                                                p120p3.h.g("Could not create H5 ad, missing ad unit id");
                                                c0900Qn.a(j9);
                                            }
                                        } else {
                                            p120p3.h.b("Could not create H5 ad, object ID already exists");
                                            c0900Qn.a(j9);
                                        }
                                    } else {
                                        p120p3.h.g("Could not create H5 ad, too many existing objects");
                                        c0900Qn.a(j9);
                                    }
                                    break;
                                case 1:
                                    InterfaceC0886Pn interfaceC0886Pn = (InterfaceC0886Pn) map.get(Long.valueOf(j9));
                                    if (interfaceC0886Pn != null) {
                                        interfaceC0886Pn.a(z3(mapL));
                                    } else {
                                        p120p3.h.b("Could not load H5 ad, object ID does not exist");
                                        c0900Qn.getClass();
                                        C1950rs c1950rs2 = new C1950rs("interstitial");
                                        c1950rs2.f20796H = Long.valueOf(j9);
                                        c1950rs2.f20795G = "onNativeAdObjectNotAvailable";
                                        c0900Qn.b(c1950rs2);
                                    }
                                    break;
                                case 2:
                                    InterfaceC0886Pn interfaceC0886Pn2 = (InterfaceC0886Pn) map.get(Long.valueOf(j9));
                                    if (interfaceC0886Pn2 != null) {
                                        interfaceC0886Pn2.zzc();
                                    } else {
                                        p120p3.h.b("Could not show H5 ad, object ID does not exist");
                                        c0900Qn.getClass();
                                        C1950rs c1950rs3 = new C1950rs("interstitial");
                                        c1950rs3.f20796H = Long.valueOf(j9);
                                        c1950rs3.f20795G = "onNativeAdObjectNotAvailable";
                                        c0900Qn.b(c1950rs3);
                                    }
                                    break;
                                case 3:
                                    if (map.size() < ((Integer) o7.a(Q7.l9)).intValue()) {
                                        Long lValueOf3 = Long.valueOf(j9);
                                        if (!map.containsKey(lValueOf3)) {
                                            String str4 = (String) mapL.get("ad_unit");
                                            if (!TextUtils.isEmpty(str4)) {
                                                C0821Lg c0821Lg4 = c0821Lg.f14528d;
                                                Long lValueOf4 = Long.valueOf(j9);
                                                str4.getClass();
                                                C0806Kg c0806Kg2 = new C0806Kg(c0821Lg.f14527c, c0821Lg4, lValueOf4, str4);
                                                long jLongValue2 = c0806Kg2.f14387a.longValue();
                                                C0821Lg c0821Lg5 = c0806Kg2.f14390d;
                                                map.put(lValueOf3, new C0998Xn(jLongValue2, c0821Lg5.f14525a, new C0900Qn(c0821Lg5.f14526b), c0806Kg2.f14389c, c0806Kg2.f14388b));
                                                c0900Qn.getClass();
                                                C1950rs c1950rs4 = new C1950rs("creation");
                                                c1950rs4.f20796H = Long.valueOf(j9);
                                                c1950rs4.f20795G = "nativeObjectCreated";
                                                c0900Qn.b(c1950rs4);
                                                p113o3.I.k("Created H5 rewarded #" + j9 + " with ad unit " + str4);
                                            } else {
                                                p120p3.h.g("Could not create H5 ad, missing ad unit id");
                                                c0900Qn.a(j9);
                                            }
                                        } else {
                                            p120p3.h.b("Could not create H5 ad, object ID already exists");
                                            c0900Qn.a(j9);
                                        }
                                    } else {
                                        p120p3.h.g("Could not create H5 ad, too many existing objects");
                                        c0900Qn.a(j9);
                                    }
                                    break;
                                case 4:
                                    InterfaceC0886Pn interfaceC0886Pn3 = (InterfaceC0886Pn) map.get(Long.valueOf(j9));
                                    if (interfaceC0886Pn3 != null) {
                                        interfaceC0886Pn3.a(z3(mapL));
                                    } else {
                                        p120p3.h.b("Could not load H5 ad, object ID does not exist");
                                        c0900Qn.getClass();
                                        C1950rs c1950rs5 = new C1950rs("rewarded");
                                        c1950rs5.f20796H = Long.valueOf(j9);
                                        c1950rs5.f20795G = "onNativeAdObjectNotAvailable";
                                        c0900Qn.b(c1950rs5);
                                    }
                                    break;
                                case 5:
                                    InterfaceC0886Pn interfaceC0886Pn4 = (InterfaceC0886Pn) map.get(Long.valueOf(j9));
                                    if (interfaceC0886Pn4 != null) {
                                        interfaceC0886Pn4.zzc();
                                    } else {
                                        p120p3.h.b("Could not show H5 ad, object ID does not exist");
                                        c0900Qn.getClass();
                                        C1950rs c1950rs6 = new C1950rs("rewarded");
                                        c1950rs6.f20796H = Long.valueOf(j9);
                                        c1950rs6.f20795G = "onNativeAdObjectNotAvailable";
                                        c0900Qn.b(c1950rs6);
                                    }
                                    break;
                                case 6:
                                    Long lValueOf5 = Long.valueOf(j9);
                                    InterfaceC0886Pn interfaceC0886Pn5 = (InterfaceC0886Pn) map.get(lValueOf5);
                                    if (interfaceC0886Pn5 != null) {
                                        interfaceC0886Pn5.zza();
                                        map.remove(lValueOf5);
                                        p113o3.I.k("Disposed H5 ad #" + j9);
                                    } else {
                                        p120p3.h.b("Could not dispose H5 ad, object ID does not exist");
                                    }
                                    break;
                                default:
                                    p120p3.h.b("H5 gmsg contained invalid action: ".concat(str));
                                    break;
                            }
                        } catch (NullPointerException | NumberFormatException unused) {
                            p120p3.h.b("H5 gmsg did not contain a valid object id: ".concat(String.valueOf(str2)));
                        }
                    } else {
                        Iterator it = map.values().iterator();
                        while (it.hasNext()) {
                            ((InterfaceC0886Pn) it.next()).zza();
                        }
                        map.clear();
                    }
                }
            }
        } else {
            if (i8 != 2) {
                return false;
            }
            map.clear();
        }
        parcel2.writeNoException();
        return true;
    }
}
