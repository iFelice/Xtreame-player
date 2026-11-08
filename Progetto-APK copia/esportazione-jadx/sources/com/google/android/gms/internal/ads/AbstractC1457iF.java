package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.iF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1457iF {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final WD f19284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WD f19285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C2181wE f19286c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C2077uE f19287d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final C1042aE f19288e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final YD f19289f;

    static {
        NG ngB = NE.b("type.googleapis.com/google.crypto.tink.HmacKey");
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        EnumC2235xG enumC2235xG = EnumC2235xG.RAW;
        ZE ze = ZE.f17740e;
        map.put(enumC2235xG, ze);
        map2.put(ze, enumC2235xG);
        EnumC2235xG enumC2235xG2 = EnumC2235xG.TINK;
        ZE ze2 = ZE.f17737b;
        map.put(enumC2235xG2, ze2);
        map2.put(ze2, enumC2235xG2);
        EnumC2235xG enumC2235xG3 = EnumC2235xG.LEGACY;
        ZE ze3 = ZE.f17739d;
        map.put(enumC2235xG3, ze3);
        map2.put(ze3, enumC2235xG3);
        EnumC2235xG enumC2235xG4 = EnumC2235xG.CRUNCHY;
        ZE ze4 = ZE.f17738c;
        map.put(enumC2235xG4, ze4);
        map2.put(ze4, enumC2235xG4);
        f19284a = new WD(Collections.unmodifiableMap(map), Collections.unmodifiableMap(map2));
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        TF tf = TF.SHA1;
        YE ye = YE.f17583b;
        map3.put(tf, ye);
        map4.put(ye, tf);
        TF tf2 = TF.SHA224;
        YE ye2 = YE.f17584c;
        map3.put(tf2, ye2);
        map4.put(ye2, tf2);
        TF tf3 = TF.SHA256;
        YE ye3 = YE.f17585d;
        map3.put(tf3, ye3);
        map4.put(ye3, tf3);
        TF tf4 = TF.SHA384;
        YE ye4 = YE.f17586e;
        map3.put(tf4, ye4);
        map4.put(ye4, tf4);
        TF tf5 = TF.SHA512;
        YE ye5 = YE.f17587f;
        map3.put(tf5, ye5);
        map4.put(ye5, tf5);
        f19285b = new WD(Collections.unmodifiableMap(map3), Collections.unmodifiableMap(map4));
        f19286c = new C2181wE(new C1301fF(5), C1043aF.class);
        f19287d = new C2077uE(new C1301fF(6), ngB);
        f19288e = new C1042aE(new C1301fF(7), WE.class);
        f19289f = new YD(new C1301fF(8), ngB);
    }
}
