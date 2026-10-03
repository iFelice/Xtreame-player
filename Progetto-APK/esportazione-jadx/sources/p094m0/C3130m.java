package p094m0;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.protobuf.U2;
import java.util.Arrays;
import java.util.Objects;
import java.util.UUID;
import p016c.a;
import p117p0.M;

/* JADX INFO: renamed from: m0.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3130m implements Parcelable {
    public static final Parcelable.Creator<C3130m> CREATOR = new a(11);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f26953G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final UUID f26954H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f26955I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f26956J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final byte[] f26957K;

    public C3130m(UUID uuid, String str, String str2, byte[] bArr) {
        uuid.getClass();
        this.f26954H = uuid;
        this.f26955I = str;
        str2.getClass();
        this.f26956J = O.p(str2);
        this.f26957K = bArr;
    }

    public final boolean a(UUID uuid) {
        UUID uuid2 = AbstractC3124g.f26852a;
        UUID uuid3 = this.f26954H;
        return uuid2.equals(uuid3) || uuid.equals(uuid3);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3130m)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C3130m c3130m = (C3130m) obj;
        return Objects.equals(this.f26955I, c3130m.f26955I) && Objects.equals(this.f26956J, c3130m.f26956J) && Objects.equals(this.f26954H, c3130m.f26954H) && Arrays.equals(this.f26957K, c3130m.f26957K);
    }

    public final int hashCode() {
        if (this.f26953G == 0) {
            int iHashCode = this.f26954H.hashCode() * 31;
            String str = this.f26955I;
            this.f26953G = Arrays.hashCode(this.f26957K) + U2.e(this.f26956J, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31);
        }
        return this.f26953G;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        UUID uuid = this.f26954H;
        parcel.writeLong(uuid.getMostSignificantBits());
        parcel.writeLong(uuid.getLeastSignificantBits());
        parcel.writeString(this.f26955I);
        parcel.writeString(this.f26956J);
        parcel.writeByteArray(this.f26957K);
    }

    public C3130m(Parcel parcel) {
        this.f26954H = new UUID(parcel.readLong(), parcel.readLong());
        this.f26955I = parcel.readString();
        String string = parcel.readString();
        String str = M.f28050a;
        this.f26956J = string;
        this.f26957K = parcel.createByteArray();
    }
}
