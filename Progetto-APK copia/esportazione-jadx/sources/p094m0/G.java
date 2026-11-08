package p094m0;

import android.net.Uri;
import com.google.protobuf.U2;
import java.util.Objects;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class G {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f26687a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f26689c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f26690d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f26691e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f26692f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f26693g;

    static {
        U2.r(0, 1, 2, 3, 4);
        M.L(5);
        M.L(6);
    }

    public G(H h8) {
        this.f26687a = (Uri) h8.f26699f;
        this.f26688b = h8.f26694a;
        this.f26689c = h8.f26695b;
        this.f26690d = h8.f26697d;
        this.f26691e = h8.f26698e;
        this.f26692f = h8.f26696c;
        this.f26693g = (String) h8.f26700g;
    }

    public final H a() {
        H h8 = new H();
        h8.f26699f = this.f26687a;
        h8.f26694a = this.f26688b;
        h8.f26695b = this.f26689c;
        h8.f26697d = this.f26690d;
        h8.f26698e = this.f26691e;
        h8.f26696c = this.f26692f;
        h8.f26700g = this.f26693g;
        return h8;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof G)) {
            return false;
        }
        G g8 = (G) obj;
        return this.f26687a.equals(g8.f26687a) && Objects.equals(this.f26688b, g8.f26688b) && Objects.equals(this.f26689c, g8.f26689c) && this.f26690d == g8.f26690d && this.f26691e == g8.f26691e && Objects.equals(this.f26692f, g8.f26692f) && Objects.equals(this.f26693g, g8.f26693g);
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final int hashCode() {
        int iHashCode = this.f26687a.hashCode() * 31;
        String str = this.f26688b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f26689c;
        int iHashCode3 = (((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f26690d) * 31) + this.f26691e) * 31;
        String str3 = this.f26692f;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f26693g;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }
}
