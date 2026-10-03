package p021c4;

import J3.v;
import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import com.bumptech.glide.c;

/* JADX INFO: loaded from: classes.dex */
public final class F1 extends a {
    public static final Parcelable.Creator<F1> CREATOR = new v(14);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f10839G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f10840H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f10841I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Long f10842J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String f10843K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f10844L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Double f10845M;

    public F1(int i8, String str, long j8, Long l4, Float f8, String str2, String str3, Double d6) {
        this.f10839G = i8;
        this.f10840H = str;
        this.f10841I = j8;
        this.f10842J = l4;
        this.f10845M = i8 == 1 ? f8 != null ? Double.valueOf(f8.doubleValue()) : null : d6;
        this.f10843K = str2;
        this.f10844L = str3;
    }

    public final Object i() {
        Long l4 = this.f10842J;
        if (l4 != null) {
            return l4;
        }
        Double d6 = this.f10845M;
        if (d6 != null) {
            return d6;
        }
        String str = this.f10843K;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        v.b(this, parcel);
    }

    public F1(long j8, Object obj, String str, String str2) {
        c.e(str);
        this.f10839G = 2;
        this.f10840H = str;
        this.f10841I = j8;
        this.f10844L = str2;
        if (obj == null) {
            this.f10842J = null;
            this.f10845M = null;
            this.f10843K = null;
            return;
        }
        if (obj instanceof Long) {
            this.f10842J = (Long) obj;
            this.f10845M = null;
            this.f10843K = null;
        } else if (obj instanceof String) {
            this.f10842J = null;
            this.f10845M = null;
            this.f10843K = (String) obj;
        } else {
            if (obj instanceof Double) {
                this.f10842J = null;
                this.f10845M = (Double) obj;
                this.f10843K = null;
                return;
            }
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public F1(G1 g8) {
        String str = g8.f10851c;
        this(g8.f10852d, g8.f10853e, str, g8.f10850b);
    }
}
