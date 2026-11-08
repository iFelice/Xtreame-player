package p021c4;

import android.os.Bundle;
import com.bumptech.glide.c;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class O {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final AtomicReference f10960b = new AtomicReference();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicReference f10961c = new AtomicReference();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final AtomicReference f10962d = new AtomicReference();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0594k0 f10963a;

    public O(C0594k0 c0594k0) {
        this.f10963a = c0594k0;
    }

    public static final String g(String str, String[] strArr, String[] strArr2, AtomicReference atomicReference) {
        String str2;
        c.h(atomicReference);
        c.b(strArr.length == strArr2.length);
        for (int i8 = 0; i8 < strArr.length; i8++) {
            if (Objects.equals(str, strArr[i8])) {
                synchronized (atomicReference) {
                    try {
                        String[] strArr3 = (String[]) atomicReference.get();
                        if (strArr3 == null) {
                            strArr3 = new String[strArr2.length];
                            atomicReference.set(strArr3);
                        }
                        str2 = strArr3[i8];
                        if (str2 == null) {
                            str2 = strArr2[i8] + "(" + strArr[i8] + ")";
                            strArr3[i8] = str2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    public final String a(Object[] objArr) {
        if (objArr == null) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sbO = U2.o("[");
        for (Object obj : objArr) {
            String strB = obj instanceof Bundle ? b((Bundle) obj) : String.valueOf(obj);
            if (strB != null) {
                if (sbO.length() != 1) {
                    sbO.append(", ");
                }
                sbO.append(strB);
            }
        }
        sbO.append("]");
        return sbO.toString();
    }

    public final String b(Bundle bundle) {
        String strA;
        if (bundle == null) {
            return null;
        }
        if (!this.f10963a.c()) {
            return bundle.toString();
        }
        StringBuilder sbO = U2.o("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sbO.length() != 8) {
                sbO.append(", ");
            }
            sbO.append(e(str));
            sbO.append("=");
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                strA = a(new Object[]{obj});
            } else if (obj instanceof Object[]) {
                strA = a((Object[]) obj);
            } else {
                strA = obj instanceof ArrayList ? a(((ArrayList) obj).toArray()) : String.valueOf(obj);
            }
            sbO.append(strA);
        }
        sbO.append("}]");
        return sbO.toString();
    }

    public final String c(C0613u c0613u) {
        String string;
        C0594k0 c0594k0 = this.f10963a;
        if (!c0594k0.c()) {
            return c0613u.toString();
        }
        StringBuilder sb = new StringBuilder("origin=");
        sb.append(c0613u.f11373I);
        sb.append(",name=");
        sb.append(d(c0613u.f11371G));
        sb.append(",params=");
        C0611t c0611t = c0613u.f11372H;
        if (c0611t == null) {
            string = null;
        } else {
            string = !c0594k0.c() ? c0611t.f11369G.toString() : b(c0611t.i());
        }
        sb.append(string);
        return sb.toString();
    }

    public final String d(String str) {
        if (str == null) {
            return null;
        }
        return !this.f10963a.c() ? str : g(str, AbstractC0622y0.f11410c, AbstractC0622y0.f11408a, f10960b);
    }

    public final String e(String str) {
        if (str == null) {
            return null;
        }
        return !this.f10963a.c() ? str : g(str, AbstractC0622y0.f11413f, AbstractC0622y0.f11412e, f10961c);
    }

    public final String f(String str) {
        if (str == null) {
            return null;
        }
        if (this.f10963a.c()) {
            return str.startsWith("_exp_") ? r.g("experiment_id(", str, ")") : g(str, AbstractC0622y0.f11417j, AbstractC0622y0.f11416i, f10962d);
        }
        return str;
    }
}
