package X1;

import android.view.View;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class x {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public View f7625b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f7624a = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f7626c = new ArrayList();

    public final boolean equals(Object obj) {
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return this.f7625b == xVar.f7625b && this.f7624a.equals(xVar.f7624a);
    }

    public final int hashCode() {
        return this.f7624a.hashCode() + (this.f7625b.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sbL = p000a.r.l("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        sbL.append(this.f7625b);
        sbL.append("\n");
        String strA = U2.A(sbL.toString(), "    values:");
        HashMap map = this.f7624a;
        for (String str : map.keySet()) {
            strA = strA + "    " + str + ": " + map.get(str) + "\n";
        }
        return strA;
    }
}
