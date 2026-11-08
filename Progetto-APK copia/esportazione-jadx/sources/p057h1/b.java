package p057h1;

import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p094m0.C3136t;
import p094m0.K;
import p094m0.M;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public final class b implements M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f25386a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f25388c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f25389d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f25390e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f25391f;

    public b(int i8, int i9, String str, String str2, String str3, boolean z7) {
        H1.d(i9 == -1 || i9 > 0);
        this.f25386a = i8;
        this.f25387b = str;
        this.f25388c = str2;
        this.f25389d = str3;
        this.f25390e = z7;
        this.f25391f = i9;
    }

    public static b a(Map map) {
        boolean z7;
        int i8;
        String str;
        String str2;
        String str3;
        boolean zEquals;
        int i9;
        int i10;
        List list = (List) map.get("icy-br");
        boolean z8 = true;
        int i11 = -1;
        if (list != null) {
            String str4 = (String) list.get(0);
            try {
                i10 = Integer.parseInt(str4) * 1000;
                if (i10 > 0) {
                    z7 = true;
                } else {
                    try {
                        x.f("IcyHeaders", "Invalid bitrate: " + str4);
                        z7 = false;
                        i10 = -1;
                    } catch (NumberFormatException unused) {
                        U2.w("Invalid bitrate header: ", str4, "IcyHeaders");
                        i8 = i10;
                        z7 = false;
                    }
                }
                i8 = i10;
            } catch (NumberFormatException unused2) {
                i10 = -1;
            }
        } else {
            z7 = false;
            i8 = -1;
        }
        List list2 = (List) map.get("icy-genre");
        if (list2 != null) {
            str = (String) list2.get(0);
            z7 = true;
        } else {
            str = null;
        }
        List list3 = (List) map.get("icy-name");
        if (list3 != null) {
            str2 = (String) list3.get(0);
            z7 = true;
        } else {
            str2 = null;
        }
        List list4 = (List) map.get("icy-url");
        if (list4 != null) {
            str3 = (String) list4.get(0);
            z7 = true;
        } else {
            str3 = null;
        }
        List list5 = (List) map.get("icy-pub");
        if (list5 != null) {
            zEquals = ((String) list5.get(0)).equals("1");
            z7 = true;
        } else {
            zEquals = false;
        }
        List list6 = (List) map.get("icy-metaint");
        if (list6 != null) {
            String str5 = (String) list6.get(0);
            try {
                int i12 = Integer.parseInt(str5);
                if (i12 > 0) {
                    i11 = i12;
                } else {
                    try {
                        x.f("IcyHeaders", "Invalid metadata interval: " + str5);
                        z8 = z7;
                    } catch (NumberFormatException unused3) {
                        i11 = i12;
                        U2.w("Invalid metadata interval: ", str5, "IcyHeaders");
                    }
                }
                z7 = z8;
            } catch (NumberFormatException unused4) {
            }
            i9 = i11;
        } else {
            i9 = -1;
        }
        if (z7) {
            return new b(i8, i9, str, str2, str3, zEquals);
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f25386a == bVar.f25386a && Objects.equals(this.f25387b, bVar.f25387b) && Objects.equals(this.f25388c, bVar.f25388c) && Objects.equals(this.f25389d, bVar.f25389d) && this.f25390e == bVar.f25390e && this.f25391f == bVar.f25391f;
    }

    @Override // p094m0.M
    public final /* synthetic */ byte[] getWrappedMetadataBytes() {
        return null;
    }

    @Override // p094m0.M
    public final /* synthetic */ C3136t getWrappedMetadataFormat() {
        return null;
    }

    public final int hashCode() {
        int i8 = (527 + this.f25386a) * 31;
        String str = this.f25387b;
        int iHashCode = (i8 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f25388c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f25389d;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f25390e ? 1 : 0)) * 31) + this.f25391f;
    }

    @Override // p094m0.M
    public final void populateMediaMetadata(K k8) {
        String str = this.f25388c;
        if (str != null) {
            k8.f26712D = str;
        }
        String str2 = this.f25387b;
        if (str2 != null) {
            k8.f26710B = str2;
        }
    }

    public final String toString() {
        return "IcyHeaders: name=\"" + this.f25388c + "\", genre=\"" + this.f25387b + "\", bitrate=" + this.f25386a + ", metadataInterval=" + this.f25391f;
    }
}
