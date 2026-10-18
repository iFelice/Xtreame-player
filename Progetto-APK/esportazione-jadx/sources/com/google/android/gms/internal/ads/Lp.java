package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.HttpUrl;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Lp implements Dw {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final Pattern f14555J = Pattern.compile("([^;]+=[^;]+)(;\\s|$)", 2);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f14556G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Ow f14557H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Tw f14558I;

    public Lp(String str, Tw tw, Ow ow) {
        this.f14556G = str;
        this.f14558I = tw;
        this.f14557H = ow;
    }

    @Override // com.google.android.gms.internal.ads.Dw
    public final Object zza(Object obj) throws C0679Bo {
        C0679Bo c0679Bo;
        String strConcat;
        Kp kp = (Kp) obj;
        int iOptInt = kp.f14414a.optInt("http_timeout_millis", 60000);
        C0987Xc c0987Xc = kp.f14415b;
        int i8 = c0987Xc.f17439g;
        Ow ow = this.f14557H;
        Tw tw = this.f14558I;
        String strJoin = HttpUrl.FRAGMENT_ENCODE_SET;
        if (i8 != -2) {
            if (i8 == 1) {
                List list = c0987Xc.f17433a;
                if (list != null) {
                    strJoin = TextUtils.join(", ", list);
                    p120p3.h.d(strJoin);
                }
                c0679Bo = new C0679Bo(2, "Error building request URL: ".concat(String.valueOf(strJoin)));
            } else {
                c0679Bo = new C0679Bo(1);
            }
            ow.d(c0679Bo);
            ow.e(false);
            tw.a(ow);
            throw c0679Bo;
        }
        HashMap map = new HashMap();
        if (c0987Xc.f17437e) {
            String str = this.f14556G;
            if (!TextUtils.isEmpty(str)) {
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15638I0)).booleanValue()) {
                    if (TextUtils.isEmpty(str)) {
                        strConcat = HttpUrl.FRAGMENT_ENCODE_SET;
                    } else {
                        Matcher matcher = f14555J.matcher(str);
                        strConcat = HttpUrl.FRAGMENT_ENCODE_SET;
                        while (matcher.find()) {
                            String strGroup = matcher.group(1);
                            if (strGroup != null) {
                                Locale locale = Locale.ROOT;
                                if (strGroup.toLowerCase(locale).startsWith("id=") || strGroup.toLowerCase(locale).startsWith("ide=")) {
                                    if (!TextUtils.isEmpty(strConcat)) {
                                        strConcat = strConcat.concat("; ");
                                    }
                                    strConcat = strConcat.concat(strGroup);
                                }
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(strConcat)) {
                        map.put("Cookie", strConcat);
                    }
                } else {
                    map.put("Cookie", str);
                }
            }
        }
        if (c0987Xc.f17436d) {
            Mp.a(map, kp.f14414a);
        }
        String str2 = c0987Xc.f17435c;
        if (!TextUtils.isEmpty(str2)) {
            strJoin = str2;
        }
        ow.e(true);
        tw.a(ow);
        return new Ip(c0987Xc.f17438f, iOptInt, map, strJoin.getBytes(StandardCharsets.UTF_8), HttpUrl.FRAGMENT_ENCODE_SET, c0987Xc.f17436d);
    }
}
