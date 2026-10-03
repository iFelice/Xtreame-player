package p021c4;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.K0;

/* JADX INFO: loaded from: classes.dex */
public final class w1 extends q1 {
    public static final boolean p(String str) {
        String str2 = (String) E.f10821t.a(null);
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        for (String str3 : str2.split(",")) {
            if (str.equalsIgnoreCase(str3.trim())) {
                return true;
            }
        }
        return false;
    }

    public final String n(String str) {
        C0579f0 c0579f0 = this.f11343H.f10652G;
        A1.I(c0579f0);
        String strD = c0579f0.D(str);
        if (TextUtils.isEmpty(strD)) {
            return (String) E.f10815r.a(null);
        }
        Uri uri = Uri.parse((String) E.f10815r.a(null));
        Uri.Builder builderBuildUpon = uri.buildUpon();
        builderBuildUpon.authority(strD + "." + uri.getAuthority());
        return builderBuildUpon.build().toString();
    }

    public final boolean o(String str, String str2) {
        A1 a8 = this.f11343H;
        C0579f0 c0579f0 = a8.f10652G;
        A1.I(c0579f0);
        K0 k0C = c0579f0.C(str);
        if (k0C == null) {
            return false;
        }
        C0602o c0602o = a8.f10654I;
        A1.I(c0602o);
        P pK0 = c0602o.k0(str);
        if (pK0 == null) {
            return false;
        }
        if (!k0C.J() || k0C.x().q() != 100) {
            I1 i8 = ((C0597l0) this.f10616G).f11261R;
            C0597l0.i(i8);
            if (!i8.d0(str, pK0.i())) {
                return !TextUtils.isEmpty(str2) && Math.abs(str2.hashCode() % 100) < k0C.x().q();
            }
        }
        return true;
    }
}
