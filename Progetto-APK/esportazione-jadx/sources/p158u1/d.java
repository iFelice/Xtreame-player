package p158u1;

import android.graphics.Color;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import p117p0.x;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f30435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f30436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f30437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Integer f30438d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f30439e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f30440f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f30441g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f30442h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f30443i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f30444j;

    public d(String str, int i8, Integer num, Integer num2, float f8, boolean z7, boolean z8, boolean z9, boolean z10, int i9) {
        this.f30435a = str;
        this.f30436b = i8;
        this.f30437c = num;
        this.f30438d = num2;
        this.f30439e = f8;
        this.f30440f = z7;
        this.f30441g = z8;
        this.f30442h = z9;
        this.f30443i = z10;
        this.f30444j = i9;
    }

    public static int a(String str) {
        try {
            int i8 = Integer.parseInt(str.trim());
            switch (i8) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    return i8;
                default:
                    U2.w("Ignoring unknown alignment: ", str, "SsaStyle");
                    return -1;
            }
        } catch (NumberFormatException unused) {
        }
    }

    public static boolean b(String str) {
        try {
            int i8 = Integer.parseInt(str);
            return i8 == 1 || i8 == -1;
        } catch (NumberFormatException e8) {
            x.g("SsaStyle", "Failed to parse boolean value: '" + str + "'", e8);
            return false;
        }
    }

    public static Integer c(String str) {
        try {
            long j8 = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            H1.d(j8 <= 4294967295L);
            return Integer.valueOf(Color.argb(k.y(((j8 >> 24) & 255) ^ 255), k.y(j8 & 255), k.y((j8 >> 8) & 255), k.y((j8 >> 16) & 255)));
        } catch (IllegalArgumentException e8) {
            x.g("SsaStyle", "Failed to parse color expression: '" + str + "'", e8);
            return null;
        }
    }
}
