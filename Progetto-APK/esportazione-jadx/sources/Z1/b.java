package Z1;

import android.os.Parcel;
import android.util.SparseIntArray;
import okhttp3.HttpUrl;
import p000a.r;
import p132r.m;

/* JADX INFO: loaded from: classes.dex */
public final class b extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SparseIntArray f8217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Parcel f8218e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f8219f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f8220g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f8221h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8222i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8223j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f8224k;

    public b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), HttpUrl.FRAGMENT_ENCODE_SET, new m(), new m(), new m());
    }

    @Override // Z1.a
    public final b a() {
        Parcel parcel = this.f8218e;
        int iDataPosition = parcel.dataPosition();
        int i8 = this.f8223j;
        if (i8 == this.f8219f) {
            i8 = this.f8220g;
        }
        return new b(parcel, iDataPosition, i8, r.j(new StringBuilder(), this.f8221h, "  "), this.f8214a, this.f8215b, this.f8216c);
    }

    @Override // Z1.a
    public final boolean e(int i8) {
        while (this.f8223j < this.f8220g) {
            int i9 = this.f8224k;
            if (i9 == i8) {
                return true;
            }
            if (String.valueOf(i9).compareTo(String.valueOf(i8)) > 0) {
                return false;
            }
            int i10 = this.f8223j;
            Parcel parcel = this.f8218e;
            parcel.setDataPosition(i10);
            int i11 = parcel.readInt();
            this.f8224k = parcel.readInt();
            this.f8223j += i11;
        }
        return this.f8224k == i8;
    }

    @Override // Z1.a
    public final void i(int i8) {
        int i9 = this.f8222i;
        SparseIntArray sparseIntArray = this.f8217d;
        Parcel parcel = this.f8218e;
        if (i9 >= 0) {
            int i10 = sparseIntArray.get(i9);
            int iDataPosition = parcel.dataPosition();
            parcel.setDataPosition(i10);
            parcel.writeInt(iDataPosition - i10);
            parcel.setDataPosition(iDataPosition);
        }
        this.f8222i = i8;
        sparseIntArray.put(i8, parcel.dataPosition());
        parcel.writeInt(0);
        parcel.writeInt(i8);
    }

    public b(Parcel parcel, int i8, int i9, String str, m mVar, m mVar2, m mVar3) {
        super(mVar, mVar2, mVar3);
        this.f8217d = new SparseIntArray();
        this.f8222i = -1;
        this.f8224k = -1;
        this.f8218e = parcel;
        this.f8219f = i8;
        this.f8220g = i9;
        this.f8223j = i8;
        this.f8221h = str;
    }
}
