package J3;

import A0.O;
import C3.H;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class b extends M3.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f4132G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f4133H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final PendingIntent f4134I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f4135J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final b f4131K = new b(0);
    public static final Parcelable.Creator<b> CREATOR = new H(28);

    public b(int i8) {
        this(1, i8, null, null);
    }

    public static String i(int i8) {
        if (i8 == 99) {
            return "UNFINISHED";
        }
        if (i8 == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i8) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i8) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    case 22:
                        return "RESOLUTION_ACTIVITY_NOT_FOUND";
                    case 23:
                        return "API_DISABLED";
                    case 24:
                        return "API_DISABLED_FOR_CONNECTION";
                    case 25:
                        return "API_INSTALL_REQUIRED";
                    default:
                        return O.y("UNKNOWN_ERROR_CODE(", i8, ")");
                }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f4133H == bVar.f4133H && U4.a.c(this.f4134I, bVar.f4134I) && U4.a.c(this.f4135J, bVar.f4135J);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f4133H), this.f4134I, this.f4135J});
    }

    public final String toString() {
        p096m2.e eVar = new p096m2.e(this);
        eVar.d(i(this.f4133H), "statusCode");
        eVar.d(this.f4134I, "resolution");
        eVar.d(this.f4135J, "message");
        return eVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f4132G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f4133H);
        AbstractC2987b.P(parcel, 3, this.f4134I, i8);
        AbstractC2987b.Q(parcel, 4, this.f4135J);
        AbstractC2987b.p0(iX, parcel);
    }

    public b(int i8, int i9, PendingIntent pendingIntent, String str) {
        this.f4132G = i8;
        this.f4133H = i9;
        this.f4134I = pendingIntent;
        this.f4135J = str;
    }

    public b(int i8, PendingIntent pendingIntent) {
        this(1, i8, pendingIntent, null);
    }
}
