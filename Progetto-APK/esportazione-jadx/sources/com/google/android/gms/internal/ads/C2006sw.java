package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2006sw implements InterfaceC1954rw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f21012a;

    public C2006sw(p090l3.b1 b1Var, String str, int i8, String str2, p090l3.h1 h1Var) {
        HashSet hashSet = new HashSet(Arrays.asList(str2.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i8));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(b1Var.f26518H));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(a(b1Var.f26519I));
        } else if (hashSet.contains("npa")) {
            arrayList.add(b1Var.f26519I.getString("npa"));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(b1Var.f26520J));
        }
        if (hashSet.contains("keywords")) {
            List list = b1Var.f26521K;
            if (list != null) {
                arrayList.add(list.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(b1Var.f26522L));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(b1Var.f26523M));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(b1Var.f26524N));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(b1Var.f26525O);
        }
        if (hashSet.contains("location")) {
            Location location = b1Var.f26527Q;
            if (location != null) {
                arrayList.add(location.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(b1Var.f26528R);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(a(b1Var.f26529S));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(a(b1Var.f26530T));
        }
        if (hashSet.contains("categoryExclusions")) {
            List list2 = b1Var.f26531U;
            if (list2 != null) {
                arrayList.add(list2.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(b1Var.f26532V);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(b1Var.f26533W);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(b1Var.f26534X));
        }
        if (hashSet.contains("tagForUnderAgeOfConsent")) {
            arrayList.add(Integer.valueOf(b1Var.f26536Z));
        }
        if (hashSet.contains("maxAdContentRating")) {
            arrayList.add(b1Var.f26537a0);
        }
        if (hashSet.contains("orientation")) {
            if (h1Var != null) {
                arrayList.add(Integer.valueOf(h1Var.f26590G));
            } else {
                arrayList.add(null);
            }
        }
        this.f21012a = arrayList.toArray();
    }

    public static String a(Bundle bundle) {
        String strA;
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            if (obj == null) {
                strA = "null";
            } else {
                strA = obj instanceof Bundle ? a((Bundle) obj) : obj.toString();
            }
            sb.append(strA);
        }
        return sb.toString();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2006sw) {
            return Arrays.equals(this.f21012a, ((C2006sw) obj).f21012a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f21012a);
    }

    public final String toString() {
        Object[] objArr = this.f21012a;
        return "[PoolKey#" + Arrays.hashCode(objArr) + " " + Arrays.toString(objArr) + "]";
    }
}
