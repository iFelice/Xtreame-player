package C3;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Locale;
import java.util.regex.Pattern;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: renamed from: C3.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0109i extends M3.a {
    public static final Parcelable.Creator<C0109i> CREATOR = new f1(28);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f1513G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f1514H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f1515I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C0108h f1516J;

    public C0109i(boolean z7, String str, boolean z8, C0108h c0108h) {
        this.f1513G = z7;
        this.f1514H = str;
        this.f1515I = z8;
        this.f1516J = c0108h;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0109i)) {
            return false;
        }
        C0109i c0109i = (C0109i) obj;
        return this.f1513G == c0109i.f1513G && H3.a.e(this.f1514H, c0109i.f1514H) && this.f1515I == c0109i.f1515I && H3.a.e(this.f1516J, c0109i.f1516J);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.f1513G), this.f1514H, Boolean.valueOf(this.f1515I), this.f1516J});
    }

    public final String toString() {
        return "LaunchOptions(relaunchIfRunning=" + this.f1513G + ", language=" + this.f1514H + ", androidReceiverCompatible: " + this.f1515I + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f1513G ? 1 : 0);
        AbstractC2987b.Q(parcel, 3, this.f1514H);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f1515I ? 1 : 0);
        AbstractC2987b.P(parcel, 5, this.f1516J, i8);
        AbstractC2987b.p0(iX, parcel);
    }

    public C0109i() {
        Locale locale = Locale.getDefault();
        Pattern pattern = H3.a.f3677a;
        StringBuilder sb = new StringBuilder(20);
        sb.append(locale.getLanguage());
        String country = locale.getCountry();
        if (!TextUtils.isEmpty(country)) {
            sb.append('-');
            sb.append(country);
        }
        String variant = locale.getVariant();
        if (!TextUtils.isEmpty(variant)) {
            sb.append('-');
            sb.append(variant);
        }
        this(false, sb.toString(), false, null);
    }
}
