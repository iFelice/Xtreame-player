package com.google.android.gms.internal.ads;

import java.util.Arrays;
import okhttp3.HttpUrl;
import okhttp3.internal.http2.Http2;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ve, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0961Ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17069a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17071c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1804p0[] f17072d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17073e;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public C0961Ve(String str, C1804p0... c1804p0Arr) {
        int length = c1804p0Arr.length;
        int i8 = 1;
        p113o3.r.J(length > 0);
        this.f17070b = str;
        this.f17072d = c1804p0Arr;
        this.f17069a = length;
        int iB = AbstractC2140va.b(c1804p0Arr[0].f20383m);
        this.f17071c = iB == -1 ? AbstractC2140va.b(c1804p0Arr[0].f20382l) : iB;
        String str2 = c1804p0Arr[0].f20374d;
        str2 = (str2 == null || str2.equals("und")) ? HttpUrl.FRAGMENT_ENCODE_SET : str2;
        int i9 = c1804p0Arr[0].f20376f | Http2.INITIAL_MAX_FRAME_SIZE;
        while (true) {
            C1804p0[] c1804p0Arr2 = this.f17072d;
            if (i8 >= c1804p0Arr2.length) {
                return;
            }
            String str3 = c1804p0Arr2[i8].f20374d;
            if (!str2.equals((str3 == null || str3.equals("und")) ? HttpUrl.FRAGMENT_ENCODE_SET : str3)) {
                C1804p0[] c1804p0Arr3 = this.f17072d;
                b("languages", c1804p0Arr3[0].f20374d, c1804p0Arr3[i8].f20374d, i8);
                return;
            } else {
                C1804p0[] c1804p0Arr4 = this.f17072d;
                if (i9 != (c1804p0Arr4[i8].f20376f | Http2.INITIAL_MAX_FRAME_SIZE)) {
                    b("role flags", Integer.toBinaryString(c1804p0Arr4[0].f20376f), Integer.toBinaryString(this.f17072d[i8].f20376f), i8);
                    return;
                }
                i8++;
            }
        }
    }

    public static void b(String str, String str2, String str3, int i8) {
        StringBuilder sbQ = com.google.protobuf.U2.q("Different ", str, " combined in one TrackGroup: '", str2, "' (track 0) and '");
        sbQ.append(str3);
        sbQ.append("' (track ");
        sbQ.append(i8);
        sbQ.append(")");
        Zo.d("TrackGroup", HttpUrl.FRAGMENT_ENCODE_SET, new IllegalStateException(sbQ.toString()));
    }

    public final C1804p0 a(int i8) {
        return this.f17072d[i8];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0961Ve.class == obj.getClass()) {
            C0961Ve c0961Ve = (C0961Ve) obj;
            if (this.f17070b.equals(c0961Ve.f17070b) && Arrays.equals(this.f17072d, c0961Ve.f17072d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i8 = this.f17073e;
        if (i8 != 0) {
            return i8;
        }
        int iHashCode = Arrays.hashCode(this.f17072d) + ((this.f17070b.hashCode() + 527) * 31);
        this.f17073e = iHashCode;
        return iHashCode;
    }
}
