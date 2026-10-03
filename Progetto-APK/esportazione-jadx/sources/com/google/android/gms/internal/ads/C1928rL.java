package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Locale;
import org.eclipse.paho.client.mqttv3.MqttTopic;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1928rL {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final C1928rL f20712h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f20713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f20714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f20715c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f20716d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f20717e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f20718f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f20719g;

    static {
        int i8 = -1;
        f20712h = new C1928rL(1, 2, 3, null, i8, i8);
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
    }

    public /* synthetic */ C1928rL(int i8, int i9, int i10, byte[] bArr, int i11, int i12) {
        this.f20713a = i8;
        this.f20714b = i9;
        this.f20715c = i10;
        this.f20716d = bArr;
        this.f20717e = i11;
        this.f20718f = i12;
    }

    public static int a(int i8) {
        if (i8 == 1) {
            return 1;
        }
        if (i8 != 9) {
            return (i8 == 4 || i8 == 5 || i8 == 6 || i8 == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int b(int i8) {
        if (i8 == 1) {
            return 3;
        }
        if (i8 == 4) {
            return 10;
        }
        if (i8 == 13) {
            return 2;
        }
        if (i8 == 16) {
            return 6;
        }
        if (i8 != 18) {
            return (i8 == 6 || i8 == 7) ? 3 : -1;
        }
        return 7;
    }

    public static boolean e(C1928rL c1928rL) {
        int i8;
        int i9;
        int i10;
        int i11;
        if (c1928rL == null) {
            return true;
        }
        int i12 = c1928rL.f20713a;
        return (i12 == -1 || i12 == 1 || i12 == 2) && ((i8 = c1928rL.f20714b) == -1 || i8 == 2) && (((i9 = c1928rL.f20715c) == -1 || i9 == 3) && c1928rL.f20716d == null && (((i10 = c1928rL.f20718f) == -1 || i10 == 8) && ((i11 = c1928rL.f20717e) == -1 || i11 == 8)));
    }

    public static String f(int i8) {
        if (i8 == -1) {
            return "Unset color range";
        }
        if (i8 != 1) {
            return i8 != 2 ? p000a.r.f("Undefined color range ", i8) : "Limited range";
        }
        return "Full range";
    }

    public static String g(int i8) {
        if (i8 == -1) {
            return "Unset color space";
        }
        if (i8 == 6) {
            return "BT2020";
        }
        if (i8 != 1) {
            return i8 != 2 ? p000a.r.f("Undefined color space ", i8) : "BT601";
        }
        return "BT709";
    }

    public static String h(int i8) {
        if (i8 == -1) {
            return "Unset color transfer";
        }
        if (i8 == 10) {
            return "Gamma 2.2";
        }
        if (i8 == 1) {
            return "Linear";
        }
        if (i8 == 2) {
            return "sRGB";
        }
        if (i8 == 3) {
            return "SDR SMPTE 170M";
        }
        if (i8 != 6) {
            return i8 != 7 ? p000a.r.f("Undefined color transfer ", i8) : "HLG";
        }
        return "ST2084 PQ";
    }

    public final String c() {
        String str;
        String str2;
        int i8;
        if (d()) {
            String strG = g(this.f20713a);
            String strF = f(this.f20714b);
            String strH = h(this.f20715c);
            Locale locale = Locale.US;
            str = strG + MqttTopic.TOPIC_LEVEL_SEPARATOR + strF + MqttTopic.TOPIC_LEVEL_SEPARATOR + strH;
        } else {
            str = "NA/NA/NA";
        }
        int i9 = this.f20717e;
        if (i9 == -1 || (i8 = this.f20718f) == -1) {
            str2 = "NA/NA";
        } else {
            str2 = i9 + MqttTopic.TOPIC_LEVEL_SEPARATOR + i8;
        }
        return com.google.protobuf.U2.l(str, MqttTopic.TOPIC_LEVEL_SEPARATOR, str2);
    }

    public final boolean d() {
        return (this.f20713a == -1 || this.f20714b == -1 || this.f20715c == -1) ? false : true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1928rL.class == obj.getClass()) {
            C1928rL c1928rL = (C1928rL) obj;
            if (this.f20713a == c1928rL.f20713a && this.f20714b == c1928rL.f20714b && this.f20715c == c1928rL.f20715c && Arrays.equals(this.f20716d, c1928rL.f20716d) && this.f20717e == c1928rL.f20717e && this.f20718f == c1928rL.f20718f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i8 = this.f20719g;
        if (i8 != 0) {
            return i8;
        }
        int iHashCode = ((((Arrays.hashCode(this.f20716d) + ((((((this.f20713a + 527) * 31) + this.f20714b) * 31) + this.f20715c) * 31)) * 31) + this.f20717e) * 31) + this.f20718f;
        this.f20719g = iHashCode;
        return iHashCode;
    }

    public final String toString() {
        String str;
        String strG = g(this.f20713a);
        String strF = f(this.f20714b);
        String strH = h(this.f20715c);
        String str2 = "NA";
        int i8 = this.f20717e;
        if (i8 != -1) {
            str = i8 + "bit Luma";
        } else {
            str = "NA";
        }
        int i9 = this.f20718f;
        if (i9 != -1) {
            str2 = i9 + "bit Chroma";
        }
        boolean z7 = this.f20716d != null;
        StringBuilder sbQ = com.google.protobuf.U2.q("ColorInfo(", strG, ", ", strF, ", ");
        sbQ.append(strH);
        sbQ.append(", ");
        sbQ.append(z7);
        sbQ.append(", ");
        sbQ.append(str);
        sbQ.append(", ");
        sbQ.append(str2);
        sbQ.append(")");
        return sbQ.toString();
    }
}
