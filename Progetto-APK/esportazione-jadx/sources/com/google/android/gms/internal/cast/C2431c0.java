package com.google.android.gms.internal.cast;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.internal.ads.Cw;
import java.math.BigInteger;
import java.util.Map;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.c0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2431c0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final H3.b f22659d = new H3.b("ApplicationAnalyticsUtils", null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f22660e = "21.4.0";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f22661a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f22662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f22663c;

    public C2431c0(String str, Bundle bundle) {
        this.f22661a = str;
        this.f22662b = Cw.T("com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR", bundle);
        this.f22663c = Cw.T("com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON", bundle);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0052  */
    /* JADX WARN: Code duplicated, block: B:8:0x0029  */
    public final C2494s0 a(C2427b0 c2427b0, int i8) {
        int iIntValue;
        int iIntValue2;
        C2490r0 c2490r0B = b(c2427b0);
        C2471m0 c2471m0M = C2475n0.m(c2490r0B.e());
        Map map = this.f22663c;
        if (map != null) {
            Integer numValueOf = Integer.valueOf(i8);
            if (map.containsKey(numValueOf)) {
                Integer num = (Integer) map.get(numValueOf);
                com.bumptech.glide.c.h(num);
                iIntValue = num.intValue();
            } else {
                iIntValue = i8 + 10000;
            }
        } else {
            iIntValue = i8 + 10000;
        }
        c2471m0M.d();
        C2475n0.r((C2475n0) c2471m0M.f22745H, iIntValue);
        Map map2 = this.f22662b;
        if (map2 != null) {
            Integer numValueOf2 = Integer.valueOf(i8);
            if (map2.containsKey(numValueOf2)) {
                Integer num2 = (Integer) map2.get(numValueOf2);
                com.bumptech.glide.c.h(num2);
                iIntValue2 = num2.intValue();
            } else {
                iIntValue2 = i8 + 10000;
            }
        } else {
            iIntValue2 = i8 + 10000;
        }
        c2471m0M.d();
        C2475n0.s((C2475n0) c2471m0M.f22745H, iIntValue2);
        c2490r0B.f((C2475n0) c2471m0M.b());
        return (C2494s0) c2490r0B.b();
    }

    public final C2490r0 b(C2427b0 c2427b0) {
        long jLongValue;
        C2490r0 c2490r0M = C2494s0.m();
        long j8 = c2427b0.f22642d;
        c2490r0M.d();
        C2494s0.t((C2494s0) c2490r0M.f22745H, j8);
        int i8 = c2427b0.f22643e;
        c2427b0.f22643e = i8 + 1;
        c2490r0M.d();
        C2494s0.o((C2494s0) c2490r0M.f22745H, i8);
        String str = c2427b0.f22641c;
        if (str != null) {
            c2490r0M.d();
            C2494s0.y((C2494s0) c2490r0M.f22745H, str);
        }
        String str2 = c2427b0.f22646h;
        if (str2 != null) {
            c2490r0M.d();
            C2494s0.u((C2494s0) c2490r0M.f22745H, str2);
        }
        C2463k0 c2463k0L = C2467l0.l();
        c2463k0L.d();
        C2467l0.n((C2467l0) c2463k0L.f22745H, f22660e);
        c2463k0L.d();
        C2467l0.m((C2467l0) c2463k0L.f22745H, this.f22661a);
        C2467l0 c2467l0 = (C2467l0) c2463k0L.b();
        c2490r0M.d();
        C2494s0.r((C2494s0) c2490r0M.f22745H, c2467l0);
        C2471m0 c2471m0L = C2475n0.l();
        if (c2427b0.f22640b != null) {
            J0 j0L = K0.l();
            String str3 = c2427b0.f22640b;
            j0L.d();
            K0.m((K0) j0L.f22745H, str3);
            K0 k8 = (K0) j0L.b();
            c2471m0L.d();
            C2475n0.o((C2475n0) c2471m0L.f22745H, k8);
        }
        c2471m0L.d();
        C2475n0.p((C2475n0) c2471m0L.f22745H, false);
        String str4 = c2427b0.f22644f;
        if (str4 != null) {
            try {
                String strReplace = str4.replace("-", HttpUrl.FRAGMENT_ENCODE_SET);
                jLongValue = new BigInteger(strReplace.substring(0, Math.min(16, strReplace.length())), 16).longValue();
            } catch (NumberFormatException e8) {
                Object[] objArr = {str4};
                H3.b bVar = f22659d;
                Log.w(bVar.f3679a, bVar.c("receiverSessionId %s is not valid for hash", objArr), e8);
                jLongValue = 0;
            }
            c2471m0L.d();
            C2475n0.q((C2475n0) c2471m0L.f22745H, jLongValue);
        }
        int i9 = c2427b0.f22645g;
        c2471m0L.d();
        C2475n0.t((C2475n0) c2471m0L.f22745H, i9);
        boolean z7 = c2427b0.f22639a.f22658I == 2;
        c2471m0L.d();
        C2475n0.u((C2475n0) c2471m0L.f22745H, z7);
        boolean z8 = c2427b0.f22647i;
        c2471m0L.d();
        C2475n0.x((C2475n0) c2471m0L.f22745H, z8);
        c2490r0M.d();
        C2494s0.p((C2494s0) c2490r0M.f22745H, (C2475n0) c2471m0L.b());
        return c2490r0M;
    }
}
